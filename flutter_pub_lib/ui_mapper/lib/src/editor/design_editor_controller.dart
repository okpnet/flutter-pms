import 'package:flutter/widgets.dart';

import '../grid/grid_config.dart';
import '../model/breakpoint.dart';
import '../model/design_document.dart';
import '../model/design_node.dart';
import '../model/design_tree_utils.dart';
import '../model/json/design_json_codec.dart';
import '../model/node_breakpoint_style.dart';
import 'widget_name_catalog.dart';

class DesignEditorController extends ChangeNotifier {
  final DesignJsonCodec _codec = const DesignJsonCodec();
  final List<String> _undoStack = [];
  final List<String> _redoStack = [];

  DesignDocument _document;
  final GridConfig previewGridConfig;
  final WidgetNameCatalog nameCatalog;

  Breakpoint editingBreakpoint = Breakpoint.compact;
  String? selectedNodeId;

  int _idCounter = 0;
  String _generateId() =>
      'node_${DateTime.now().microsecondsSinceEpoch}_${_idCounter++}';

  DesignEditorController({
    required DesignDocument initialDocument,
    required this.previewGridConfig,
    required this.nameCatalog,
  }) : _document = initialDocument;

  DesignDocument get document => _document;

  void select(DesignNode node) {
    selectedNodeId = node.id;
    notifyListeners();
  }

  /// nodeが属している兄弟リスト（親のchildren、またはrootNodes自体）を返す。
  List<DesignNode> siblingsOf(DesignNode node) {
    if (_document.rootNodes.any((n) => n.id == node.id)) {
      return _document.rootNodes;
    }
    return _findParentChildren(_document.rootNodes, node.id) ?? const [];
  }

  List<DesignNode>? _findParentChildren(
    List<DesignNode> nodes,
    String childId,
  ) {
    for (final n in nodes) {
      if (n.children.any((c) => c.id == childId)) return n.children;
      final found = _findParentChildren(n.children, childId);
      if (found != null) return found;
    }
    return null;
  }

  /// 指定ノード・Breakpointのstyleを書き換える（履歴付き）。
  void updateNodeStyle(
    DesignNode node,
    Breakpoint breakpoint,
    NodeBreakpointStyle newStyle,
  ) {
    mutateTree((rootNodes) {
      final target = findNodeById(rootNodes, node.id);
      target?.styles[breakpoint] = newStyle;
    });
  }

  /// ツリーを直接編集するための共通入口。Undo履歴を積んでから実行する。
  void mutateTree(void Function(List<DesignNode> rootNodes) mutation) {
    _pushHistory();
    _redoStack.clear();
    final rootNodes = List<DesignNode>.of(_document.rootNodes);
    mutation(rootNodes);
    _document = DesignDocument(
      schemaVersion: _document.schemaVersion,
      rootNodes: rootNodes,
    );
    notifyListeners();
  }

  void _pushHistory() => _undoStack.add(_codec.encode(_document));

  void undo() {
    if (_undoStack.isEmpty) return;
    _redoStack.add(_codec.encode(_document));
    _document = _codec.decode(_undoStack.removeLast());
    notifyListeners();
  }

  void redo() {
    if (_redoStack.isEmpty) return;
    _undoStack.add(_codec.encode(_document));
    _document = _codec.decode(_redoStack.removeLast());
    notifyListeners();
  }

  /// ノードを削除する。
  void removeNode(DesignNode node) {
    mutateTree((rootNodes) {
      detachNodeById(rootNodes, node.id);
    });
  }

  /// ノードを新規追加する。stylesを渡せば、ダイアログで編集した内容を
  /// 1回のUndo履歴でまとめて反映できる（addNode→replaceNodeStylesの2手にしない）。
  DesignNode addNode({
    DesignNode? parent,
    String? name,
    Map<Breakpoint, NodeBreakpointStyle>? styles,
  }) {
    final newNode = DesignNode(
      id: _generateId(),
      name: name,
      styles:
          styles ??
          const {
            Breakpoint.compact: NodeBreakpointStyle(visible: true, width: 1),
          },
    );
    mutateTree((rootNodes) {
      final targetChildren = parent == null
          ? rootNodes
          : findNodeById(rootNodes, parent.id)?.children;
      targetChildren?.add(newNode);
    });
    return newNode;
  }

  /// nameだけ差し替える。
  /// name は DesignNode の final フィールドなので、styles/children同様の
  /// 「中身を直接書き換える」方式が使えず、ノード自体を同じ位置で
  /// 置き換える必要がある（下記 replaceNodeInPlace を使用）。
  void renameNode(DesignNode node, String? name) {
    mutateTree((rootNodes) {
      replaceNodeInPlace(
        rootNodes,
        node.id,
        (old) => DesignNode(
          id: old.id,
          name: name,
          children: old.children,
          styles: old.styles,
        ),
      );
    });
  }

  /// 3区分ぶんのstylesを丸ごと差し替える（ダイアログの「保存」1回＝Undo1件にするため）。
  void replaceNodeStyles(
    DesignNode node,
    Map<Breakpoint, NodeBreakpointStyle> styles,
  ) {
    mutateTree((rootNodes) {
      final target = findNodeById(rootNodes, node.id);
      target?.styles
        ?..clear()
        ..addAll(styles);
    });
  }

  /// 同じ親の中で並べ替える（子リストのUI操作用）。
  void reorderChild({
    DesignNode? parent,
    required int oldIndex,
    required int newIndex,
  }) {
    mutateTree((rootNodes) {
      final children = parent == null
          ? rootNodes
          : findNodeById(rootNodes, parent.id)?.children;
      if (children == null) return;
      final item = children.removeAt(oldIndex);
      children.insert(newIndex.clamp(0, children.length), item);
    });
  }
}
