import 'package:flutter/material.dart';

import '../model/design_node.dart';
import '../model/design_tree_utils.dart';
import 'canvas_row_layout.dart';
import 'cell_drag_controller.dart';
import 'cell_resize_controller.dart';
import 'design_editor_controller.dart';
import 'widget_name_catalog.dart';

/// アプリがそのまま埋め込む公開Widget。
/// 見た目（色・枠線・文字スタイル）は独自定義せず、
/// Theme.of(context) を通じてアプリのThemeをそのまま使用する。
class DesignCanvas extends StatelessWidget {
  final DesignEditorController controller;
  final WidgetNameCatalog nameCatalog;

  const DesignCanvas({
    super.key,
    required this.controller,
    required this.nameCatalog,
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
                  nameCatalog: nameCatalog,
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
  final WidgetNameCatalog nameCatalog;

  const _CanvasCell({
    required this.node,
    required this.controller,
    required this.nameCatalog,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // 要件2: 独自テーマを持たない
    final isSelected = controller.selectedNodeId == node.id;
    final entry = node.name != null ? nameCatalog.findByName(node.name!) : null;

    return GestureDetector(
      onTap: () => controller.select(node),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? theme.colorScheme.primary : theme.dividerColor,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(theme.useMaterial3 ? 8 : 4),
        ),
        child: entry?.previewBuilder != null
            ? entry!.previewBuilder!(context, node) // 要件3: アプリが子Widgetを埋め込む
            : Center(
                child: Text(
                  entry?.label ?? node.name ?? '(空きセル)',
                  style: theme.textTheme.bodySmall,
                ),
              ),
      ),
    );
  }
}

class _CanvasRow extends StatelessWidget {
  final List<DesignNode> nodes;
  final DesignEditorController controller;
  final WidgetNameCatalog nameCatalog;

  const _CanvasRow({
    required this.nodes,
    required this.controller,
    required this.nameCatalog,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final node in nodes) ...[
            Expanded(
              flex: node.resolveStyle(controller.editingBreakpoint).width,
              child: DragTarget<DesignNode>(
                onWillAcceptWithDetails: (details) =>
                    details.data.id != node.id,
                onAcceptWithDetails: (details) {
                  final targetIndex = nodes.indexOf(node);
                  CellDragController(controller).moveNode(
                    node: details.data,
                    targetParent: _parentOf(node),
                    targetIndex: targetIndex,
                  );
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
                          nameCatalog: nameCatalog,
                        ),
                      ),
                    ),
                    childWhenDragging: Opacity(
                      opacity: 0.3,
                      child: _CanvasCell(
                        node: node,
                        controller: controller,
                        nameCatalog: nameCatalog,
                      ),
                    ),
                    child: Stack(
                      children: [
                        _CanvasCell(
                          node: node,
                          controller: controller,
                          nameCatalog: nameCatalog,
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
                              CellResizeController(
                                controller,
                              ).onResizeDrag(node, delta);
                            },
                            child: MouseRegion(
                              cursor: SystemMouseCursors.resizeColumn,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
          // 行末への移動を受け付ける空きドロップ領域
          DragTarget<DesignNode>(
            onAcceptWithDetails: (details) {
              CellDragController(controller).moveNode(
                node: details.data,
                targetParent: _parentOfRow(),
                targetIndex: nodes.length,
              );
            },
            builder: (context, candidateData, rejectedData) =>
                SizedBox(width: 24, height: double.infinity),
          ),
        ],
      ),
    );
  }

  DesignNode? _parentOf(DesignNode node) {
    final parentChildren = controller.siblingsOf(node);
    return findNodeById(controller.document.rootNodes, node.id) == null
        ? null
        : _findParentOfChildren(controller.document.rootNodes, parentChildren);
  }

  DesignNode? _parentOfRow() => nodes.isEmpty ? null : _parentOf(nodes.first);

  DesignNode? _findParentOfChildren(
    List<DesignNode> roots,
    List<DesignNode> targetChildren,
  ) {
    for (final n in roots) {
      if (identical(n.children, targetChildren)) return n;
      final found = _findParentOfChildren(n.children, targetChildren);
      if (found != null) return found;
    }
    return null; // rootNodes自体が対象の場合
  }
}
