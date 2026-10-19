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

  /// 許容する最大ネスト段数（root直下=1段目として数える）。
  final int maxNestingDepth;
  DesignEditorController({
    required DesignDocument initialDocument,
    required this.previewGridConfig,
    required this.nameCatalog,
    this.maxNestingDepth = 3,
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

  /// 新規ノードを追加する。深さ超過時は [NestingLimitExceededException] を投げ、
  /// ツリーは変更しない（Undo履歴も積まない）。
  DesignNode addNode(
    NodeKind type, {
    DesignNode? parent,
    String? name,
    Map<Breakpoint, NodeBreakpointStyle>? styles,
  }) {
    final parentDepth = parent == null
        ? 0
        : nodeDepth(_document.rootNodes, parent.id);
    if (parentDepth + 1 > maxNestingDepth) {
      throw NestingLimitExceededException(maxNestingDepth);
    }

    // compactが渡されていなければデフォルト値で補う。
    // 渡された値がある場合はそちらを優先する（mapの後勝ちを利用）。
    final effectiveStyles = <Breakpoint, NodeBreakpointStyle>{
      Breakpoint.compact: const NodeBreakpointStyle(width: 1),
      ...?styles,
    };

    final newNode = DesignNode(
      id: _generateId(),
      name: name,
      styles: effectiveStyles,
      nodeType: type,
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
          nodeType: old.nodeType,
        ),
      );
    });
  }

  /// 3区分ぶんのstylesを丸ごと差し替える（ダイアログの「保存」1回＝Undo1件にするため）。
  void replaceNodeStyles(
    DesignNode node,
    Map<Breakpoint, NodeBreakpointStyle> styles,
  ) {
    // 既存ノードのcompactをフォールバックにし、万一styles側に無くても消えないようにする
    final effectiveStyles = <Breakpoint, NodeBreakpointStyle>{
      Breakpoint.compact: node.resolveStyle(Breakpoint.compact),
      ...styles,
    };
    mutateTree((rootNodes) {
      final target = findNodeById(rootNodes, node.id);
      target?.styles
        ?..clear()
        ..addAll(effectiveStyles);
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

class NestingLimitExceededException implements Exception {
  final int maxDepth;
  const NestingLimitExceededException(this.maxDepth);

  @override
  String toString() => '最大ネスト段数（$maxDepth）を超えるため実行できません。';
}
