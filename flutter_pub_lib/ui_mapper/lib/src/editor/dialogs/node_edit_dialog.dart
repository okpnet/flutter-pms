import 'package:flutter/material.dart';

import '../../../editor.dart';
import '../../../model.dart';
import '../../model/design_tree_utils.dart';
import '../widgets/node_style_editor.dart';

enum _NodeKind { widget, container, spacer }

class NodeEditDialog extends StatefulWidget {
  final DesignEditorController controller;
  final DesignNode? node; // nullなら新規作成
  final DesignNode? parent; // 新規作成時の追加先（nullならroot直下）

  const NodeEditDialog({
    super.key,
    required this.controller,
    this.node,
    this.parent,
  });

  static Future<void> show(
    BuildContext context, {
    required DesignEditorController controller,
    DesignNode? node,
    DesignNode? parent,
  }) {
    return showDialog(
      context: context,
      builder: (_) =>
          NodeEditDialog(controller: controller, node: node, parent: parent),
    );
  }

  @override
  State<NodeEditDialog> createState() => _NodeEditDialogState();
}

class _NodeEditDialogState extends State<NodeEditDialog> {
  late _NodeKind _kind;
  String? _draftName;
  late Map<Breakpoint, NodeBreakpointStyle?> _draftStyles; // nullは「継承」を表す一時状態

  @override
  void initState() {
    super.initState();
    final node = widget.node;
    _draftName = node?.name;
    _kind = node == null
        ? _NodeKind.widget
        : node.name != null
        ? _NodeKind.widget
        : node.isLeaf
        ? _NodeKind.spacer
        : _NodeKind.container;
    _draftStyles = {
      for (final bp in Breakpoint.values)
        bp: node?.styles[bp], // 明示値のみコピー、継承はnullのまま
    };
  }

  /// controller.document の最新状態からノードを引き直す。
  /// 新規作成中（まだツリーに存在しない）はwidget.nodeをそのまま使う。
  DesignNode? _currentNode(DesignEditorController controller) {
    if (widget.node == null) return null;
    return findNodeById(controller.document.rootNodes, widget.node!.id) ??
        widget.node;
  }

  void _onSave() {
    final resolvedStyles = <Breakpoint, NodeBreakpointStyle>{
      for (final e in _draftStyles.entries)
        if (e.value != null) e.key: e.value!,
    };
    final controller = widget.controller;

    try {
      if (widget.node == null) {
        controller.addNode(
          parent: widget.parent,
          name: _kind == _NodeKind.widget ? _draftName : null,
          styles: resolvedStyles,
        );
      } else {
        controller.renameNode(
          widget.node!,
          _kind == _NodeKind.widget ? _draftName : null,
        );
        controller.replaceNodeStyles(widget.node!, resolvedStyles);
      }
      Navigator.of(context).pop();
    } on NestingLimitExceededException catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  Future<void> _onAddChild(DesignNode currentNode) async {
    await NodeEditDialog.show(
      context,
      controller: widget.controller,
      node: null,
      parent: currentNode,
    );
    // setState不要: widget.controllerのnotifyListeners()により
    // 外側のAnimatedBuilderが自動的に再構築する
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, _) {
        final node = _currentNode(widget.controller);
        final atMaxDepth =
            node != null &&
            nodeDepth(widget.controller.document.rootNodes, node.id) >=
                widget.controller.maxNestingDepth;

        return AlertDialog(
          title: Text(widget.node == null ? 'ノードを追加' : 'ノードを編集'),
          content: SizedBox(
            width: 400,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SegmentedButton<_NodeKind>(
                    segments: const [
                      ButtonSegment(
                        value: _NodeKind.widget,
                        label: Text('Widget'),
                      ),
                      ButtonSegment(
                        value: _NodeKind.container,
                        label: Text('コンテナ（行）'),
                      ),
                      ButtonSegment(
                        value: _NodeKind.spacer,
                        label: Text('空きセル'),
                      ),
                    ],
                    selected: {_kind},
                    onSelectionChanged: (s) => setState(() => _kind = s.first),
                  ),
                  if (_kind == _NodeKind.widget)
                    DropdownButtonFormField<String>(
                      initialValue: _draftName,
                      decoration: const InputDecoration(
                        labelText: '名前（カタログから選択）',
                      ),
                      items: widget.controller.nameCatalog.entries
                          .map(
                            (e) => DropdownMenuItem(
                              value: e.name,
                              child: Text(e.label),
                            ),
                          )
                          .toList(),
                      onChanged: (v) => setState(() => _draftName = v),
                    ),
                  const Divider(),
                  NodeStyleEditor(
                    draftStyles: _draftStyles,
                    gridConfig: widget.controller.previewGridConfig,
                    onChanged: (bp, style) =>
                        setState(() => _draftStyles[bp] = style),
                  ),
                  if (_kind == _NodeKind.container && node != null) ...[
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('子要素（${node.children.length}件）'),
                        TextButton.icon(
                          icon: const Icon(Icons.add),
                          label: const Text('子を追加'),
                          onPressed: () => _onAddChild(node),
                        ),
                        if (atMaxDepth)
                          const Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              '最大ネスト段数に達しています',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                      ],
                    ),
                    _ChildrenReorderList(
                      controller: widget.controller,
                      parent: node,
                    ),
                  ],
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('キャンセル'),
            ),
            FilledButton(onPressed: _onSave, child: const Text('保存')),
          ],
        );
      },
    );
  }
}

class _ChildrenReorderList extends StatelessWidget {
  final DesignEditorController controller;
  final DesignNode parent;
  const _ChildrenReorderList({required this.controller, required this.parent});

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      shrinkWrap: true,
      onReorder: (oldIndex, newIndex) => controller.reorderChild(
        parent: parent,
        oldIndex: oldIndex,
        newIndex: newIndex,
      ),
      children: [
        for (final child in parent.children)
          ListTile(
            key: ValueKey(child.id),
            title: Text(child.name ?? '(空きセル)'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => NodeEditDialog.show(
                    context,
                    controller: controller,
                    node: child,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () => controller.removeNode(child),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
