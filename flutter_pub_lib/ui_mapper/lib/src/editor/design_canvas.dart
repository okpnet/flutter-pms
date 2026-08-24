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
  const DesignCanvas({super.key, required this.controller});

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
  const _CanvasCell({required this.node, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSelected = controller.selectedNodeId == node.id;

    return GestureDetector(
      onTap: () => controller.select(node),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected
                    ? theme.colorScheme.primary
                    : theme.dividerColor,
                width: isSelected ? 2 : 1,
              ),
              borderRadius: BorderRadius.circular(theme.useMaterial3 ? 8 : 4),
            ),
            child: _NodeContent(node: node, controller: controller),
          ),
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
          // 右端リサイズハンドル（コンテナでも自身の幅は変更できる）
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
  const _NodeContent({required this.node, required this.controller});

  @override
  Widget build(BuildContext context) {
    // 1. Widget（name指定あり）
    if (node.name != null) {
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
    if (node.isLeaf) {
      return const SizedBox.shrink();
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
      child: Column(
        children: rows
            .map(
              (row) =>
                  _CanvasRow(nodes: row, controller: controller, parent: node),
            )
            .toList(),
      ),
    );
  }
}

class _CanvasRow extends StatelessWidget {
  final List<DesignNode> nodes;
  final DesignEditorController controller;

  /// このrowに含まれるnodesの所属元。nullならrootNodes直下。
  /// 以前は兄弟リストの参照から逆引きしていたが、再帰描画時に
  /// 明示的に渡す方式に変更し、逆引きロジックを撤去した。
  final DesignNode? parent;

  const _CanvasRow({
    required this.nodes,
    required this.controller,
    required this.parent,
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
                        child: _CanvasCell(node: node, controller: controller),
                      ),
                    ),
                    childWhenDragging: Opacity(
                      opacity: 0.3,
                      child: _CanvasCell(node: node, controller: controller),
                    ),
                    child: _CanvasCell(node: node, controller: controller),
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
