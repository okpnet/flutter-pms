import 'package:flutter/material.dart';

import '../model/design_node.dart';
import 'canvas_row_layout.dart';
import 'cell_drag_controller.dart';
import 'cell_resize_controller.dart';
import 'design_editor_controller.dart';
import 'dialogs/node_edit_dialog.dart';

/// アプリがそのまま埋め込む公開Widget。@
/// 見た目（色・枠線・文字スタイル）は独自定義せず、
/// Theme.of(context) を通じてアプリのThemeをそのまま使用する。
// design_canvas.dart
class DesignCanvas extends StatelessWidget {
  final DesignEditorController controller;

  /// 空セル・未設定Widget時でも編集/削除アイコンが収まる最小の高さ。
  final double minCellExtent;

  const DesignCanvas({
    super.key,
    required this.controller,
    this.minCellExtent = 48,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        final columnCount = controller
            .previewGridConfig
            .specs[controller.editingBreakpoint]!
            .columnCount;
        final rows = CanvasRowLayout(columnCount: columnCount).layoutRows(
          controller.document.rootNodes,
          controller.editingBreakpoint,
        );
        return Column(
          children: rows
              .map(
                (row) => _CanvasRow(
                  nodes: row,
                  controller: controller,
                  parent: null,
                  minCellExtent: minCellExtent,
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class _CanvasCell extends StatelessWidget {
  final DesignNode node;
  final DesignEditorController controller;
  final double minCellExtent;
  const _CanvasCell({
    required this.node,
    required this.controller,
    required this.minCellExtent,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSelected = controller.selectedNodeId == node.id;

    return GestureDetector(
      onTap: () => controller.select(node),
      child: Stack(
        children: [
          // 枠線の実体に直接ConstrainedBoxをかける（Stackの外側ではない）
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: minCellExtent),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected
                      ? theme.colorScheme.primary
                      : theme.dividerColor,
                  width: isSelected ? 2 : 1,
                ),
                borderRadius: BorderRadius.circular(theme.useMaterial3 ? 8 : 4),
              ),
              child: _NodeContent(
                node: node,
                controller: controller,
                minCellExtent: minCellExtent,
              ),
            ),
          ),

          // 編集アイコン
          Positioned(
            left: 2,
            top: 2,
            child: IconButton(
              iconSize: 16,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.edit_outlined),
              onPressed: () => NodeEditDialog.show(
                context,
                controller: controller,
                node: node,
              ),
            ),
          ),

          // 削除アイコン
          Positioned(
            right: 14,
            top: 2,
            child: IconButton(
              iconSize: 16,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.delete_outline),
              onPressed: () => controller.removeNode(node),
            ),
          ),

          // 右端リサイズハンドル
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            width: 12,
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onHorizontalDragUpdate: (details) {
                final delta = details.delta.dx > 0 ? 1 : -1;
                CellResizeController(controller).onResizeDrag(node, delta);
              },
              child: const MouseRegion(cursor: SystemMouseCursors.resizeColumn),
            ),
          ),
        ],
      ),
    );
  }
}

class _NodeContent extends StatelessWidget {
  final DesignNode node;
  final DesignEditorController controller;
  final double minCellExtent;

  const _NodeContent({
    required this.node,
    required this.controller,
    required this.minCellExtent,
  });

  @override
  Widget build(BuildContext context) {
    // 1. Widget（name指定あり）
    if (node.nodeType == .widget) {
      final entry = controller.nameCatalog.findByName(node.name!);
      if (entry?.previewBuilder != null)
        return entry!.previewBuilder!(context, node);
      final theme = Theme.of(context);
      return Center(
        child: Text(
          entry?.label ?? node.name!,
          style: theme.textTheme.bodySmall,
        ),
      );
    }

    // 2. 空きセル（name無し・子無し）
    if (node.nodeType == .spacer) {
      return const SizedBox.shrink(); // 高さの下限はConstrainedBox(_CanvasCell側)が保証する
    }

    // 3. コンテナ（name無し・子あり）→ 再帰的にネスト描画
    final columnCount = controller
        .previewGridConfig
        .specs[controller.editingBreakpoint]!
        .columnCount;
    final rows = CanvasRowLayout(
      columnCount: columnCount,
    ).layoutRows(node.children, controller.editingBreakpoint);
    return Padding(
      padding: const EdgeInsets.all(4),
      child: rows.isNotEmpty
          ? Column(
              children: rows
                  .map(
                    (row) => _CanvasRow(
                      nodes: row,
                      controller: controller,
                      parent: node,
                      minCellExtent: minCellExtent, // ここが漏れていた
                    ),
                  )
                  .toList(),
            )
          : Center(child: Text('空')),
    );
  }
}

class _CanvasRow extends StatelessWidget {
  final List<DesignNode> nodes;
  final DesignEditorController controller;
  final DesignNode? parent;
  final double minCellExtent;

  const _CanvasRow({
    required this.nodes,
    required this.controller,
    required this.parent,
    required this.minCellExtent,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final node in nodes)
            Expanded(
              flex: node.resolveStyle(controller.editingBreakpoint).width,
              child: DragTarget<DesignNode>(
                onWillAcceptWithDetails: (details) =>
                    details.data.id != node.id,
                onAcceptWithDetails: (details) {
                  try {
                    CellDragController(controller).moveNode(
                      node: details.data,
                      targetParent: parent,
                      targetIndex: nodes.indexOf(node),
                    );
                  } on NestingLimitExceededException catch (e) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(e.toString())));
                  }
                },
                builder: (context, candidateData, rejectedData) {
                  return LongPressDraggable<DesignNode>(
                    data: node,
                    feedback: Opacity(
                      opacity: 0.7,
                      child: SizedBox(
                        width: 120,
                        child: _CanvasCell(
                          node: node,
                          controller: controller,
                          minCellExtent: minCellExtent,
                        ),
                      ),
                    ),
                    childWhenDragging: Opacity(
                      opacity: 0.3,
                      child: _CanvasCell(
                        node: node,
                        controller: controller,
                        minCellExtent: minCellExtent,
                      ),
                    ),
                    child: _CanvasCell(
                      node: node,
                      controller: controller,
                      minCellExtent: minCellExtent,
                    ),
                  );
                },
              ),
            ),
          // 行末への移動を受け付ける空きドロップ領域
          DragTarget<DesignNode>(
            onAcceptWithDetails: (details) {
              CellDragController(controller).moveNode(
                node: details.data,
                targetParent: parent,
                targetIndex: nodes.length,
              );
            },
            builder: (context, candidateData, rejectedData) =>
                const SizedBox(width: 24, height: double.infinity),
          ),
        ],
      ),
    );
  }
}
