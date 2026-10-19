# ui_mapper（screen_designer）ライブラリ設計書 v4

> v3からの変更点: `DesignNode`に`NodeKind`（widget/container/spacer）を明示フィールドとして追加。これは「新規フィールドを追加せずname/childrenから推測する」という旧方針を上書きする変更。理由は11.8を参照。

## 1. 概要

Flutterアプリ上で、ユーザーが画面デザインを行い、そのデザイン情報をJSONとして保存・復元できるライブラリ。デザインは3段階のレスポンシブGridシステムのみで構成される。実際のWidget解決・グリッド描画はアプリ側（および既存のレスポンシブGridライブラリ）に委ねる。パッケージ名は `ui_mapper`。

## 2. 要件と対応レイヤー

| # | 要件 | 対応 |
|---|---|---|
| 1 | デザインをJSONで保存・復元する | `model` |
| 2 | 利用アプリがライブラリのインターフェイスを通じてWidgetへ変換する | `runtime`（中間インターフェイスを提供、Widget変換自体はアプリが行う） |
| 3 | デザインするためのUIを提供する | `editor` |
| 4 | デザインはGridシステムのみを使用する | `model` / `grid` |
| 5 | Gridシステムは3段階のメディアクエリを持つ | `model.Breakpoint` |
| 6 | メディアクエリ3区分の幅はアプリから提供される（抽象的なデザイン） | `grid.GridConfig` |
| 7 | デザインの根本は3区分の表示・非表示・幅を持つ | `model.NodeBreakpointStyle` |
| 8 | デザイン内に表示するWidgetは利用アプリが実行時に提供する | `runtime`（nameのみ渡し、Widget化はアプリ側） |
| 9 | 実行時に提供されるWidgetを識別するためのname属性を持つ | `model.DesignNode.name` |

## 3. アーキテクチャ方針

- 4パッケージ（`model` / `grid` / `runtime` / `editor`）に分割し、依存は一方向のみ。
- `model`・`grid`・`runtime` はFlutterの`Widget`に一切依存しない。
- `editor` のみFlutter Widgetを組み立てる。独自テーマは持たず、埋め込み先アプリの`Theme.of(context)`をそのまま使用する。
- 全体一括バレル（`lib/screen_designer.dart`相当）は**用意しない**。本番描画のみのアプリが`editor`の依存を不要に抱え込まないため。

```
editor  ──┐
          ├──▶ grid ──▶ model
runtime ──┘
```

## 4. パッケージ構成（最終版）

```
ui_mapper/
├── lib/
│   ├── model.dart                          // 公開バレル
│   ├── grid.dart                           // 公開バレル
│   ├── runtime.dart                        // 公開バレル
│   ├── editor.dart                         // 公開バレル
│   │
│   └── src/
│       ├── model/
│       │   ├── design_document.dart        // schemaVersion + rootNodes（列数は持たない）
│       │   ├── design_node.dart            // id/name/children/styles、resolveStyle()で継承解決
│       │   ├── node_breakpoint_style.dart  // visible/width(span)
│       │   ├── breakpoint.dart             // compact/medium/expanded（宣言順=継承順）
│       │   └── json/
│       │       ├── design_json_codec.dart
│       │       └── schema_version.dart     // currentSchemaVersion
│       │
│       ├── grid/
│       │   ├── grid_config.dart            // BreakpointSpec(minWidth, columnCount) + GridConfig
│       │   └── breakpoint_resolver.dart    // 画面幅→Breakpoint判定
│       │
│       ├── runtime/
│       │   ├── resolved_node.dart          // 継承解決済み中間ノード（Flutter非依存）
│       │   ├── resolved_design.dart        // GridConfig同梱のROOT
│       │   └── design_resolver.dart        // DesignDocument+GridConfig→ResolvedDesign
│       │
│       └── editor/
│           ├── design_editor_controller.dart     // ChangeNotifier本体（下記5参照）
│           ├── design_tree_utils.dart             // 非公開ユーティリティ（下記5.1参照）
│           ├── nesting_limit_exceeded_exception.dart
│           ├── design_canvas.dart                 // 公開Widget、ネスト再帰描画
│           ├── canvas_row_layout.dart             // 常に1行・回り込み
│           ├── cell_drag_controller.dart          // 親またぎ移動、深さチェック
│           ├── cell_resize_controller.dart        // 幅拡張
│           ├── widget_name_catalog.dart           // name候補一覧+previewBuilder
│           ├── widgets/
│           │   └── node_style_editor.dart         // 3区分visible/width編集の共通部品
│           └── dialogs/
│               └── node_edit_dialog.dart          // 追加・編集の唯一の入口
```

## 5. model パッケージ

### 5.1 Breakpoint（要件5）

```dart
enum Breakpoint {
  compact,
  medium,
  expanded;

  static Breakpoint fromJson(String value) =>
      Breakpoint.values.firstWhere((b) => b.name == value);
  String toJson() => name;
}
```

### 5.2 NodeBreakpointStyle（要件7）

```dart
class NodeBreakpointStyle {
  final bool visible;
  final int width; // 分母（列数）はJSONに含めず、GridConfigで解釈する

  const NodeBreakpointStyle({this.visible = true, required this.width});

  factory NodeBreakpointStyle.fromJson(Map<String, dynamic> json) =>
      NodeBreakpointStyle(
        visible: json['visible'] as bool? ?? true,
        width: json['width'] as int,
      );

  Map<String, dynamic> toJson() => {'visible': visible, 'width': width};

  NodeBreakpointStyle copyWith({bool? visible, int? width}) =>
      NodeBreakpointStyle(visible: visible ?? this.visible, width: width ?? this.width);
}
```

### 5.3 NodeKind（v4で追加）

以前は「`name`と`children`の組み合わせから3種類の意味を推測する」方針だったが、**新規作成直後の0件コンテナと意図的な空きセルが実データ上区別できない**という曖昧さが不具合の原因になった（11.8参照）。`NodeKind`を明示フィールドとして持たせ、この曖昧さを構造的に解消する。

```dart
enum NodeKind {
  widget,
  container,
  spacer;

  static NodeKind fromJson(String value) =>
      NodeKind.values.firstWhere((k) => k.name == value);
  String toJson() => name;
}
```

### 5.4 DesignNode（要件8, 9）

`nodeType`が意味を決め、`name`・`children`はそれに従う制約を受ける。

- `nodeType == widget` → アプリが実行時に解決する実体Widget。`name`必須。`children`を持つことも**許可する**（Widgetの下にさらにデザインを続けられる、確定済み）
- `nodeType == container` → 子を並べるコンテナ。`name`不可
- `nodeType == spacer` → 何も描画しない空きセル（オフセット）。`name`不可、`children`不可

未指定区分は手前（compact側）を継承。**compactは必須**。**`nodeType`は作成後に変更不可**（エディタUI側で保証。8.11参照）。

```dart
class DesignNode {
  final String id;
  final NodeKind nodeType;
  final String? name;
  final List<DesignNode> children;
  final Map<Breakpoint, NodeBreakpointStyle> styles;

  DesignNode({
    required this.id,
    required this.nodeType,
    this.name,
    this.children = const [],
    required this.styles,
  }) {
    if (!styles.containsKey(Breakpoint.compact)) {
      throw ArgumentError(
        'DesignNode(id: $id): styles に Breakpoint.compact が必要です。'
        'compactは全ノードで必須です。',
      );
    }
    if (nodeType == NodeKind.widget && name == null) {
      throw ArgumentError('DesignNode(id: $id): nodeType=widget には name が必須です。');
    }
    if (nodeType != NodeKind.widget && name != null) {
      throw ArgumentError('DesignNode(id: $id): nodeType=$nodeType では name を指定できません。');
    }
    if (nodeType == NodeKind.spacer && children.isNotEmpty) {
      throw ArgumentError('DesignNode(id: $id): nodeType=spacer は children を持てません。');
    }
  }

  bool get isLeaf => children.isEmpty;

  NodeBreakpointStyle resolveStyle(Breakpoint breakpoint) {
    for (var i = breakpoint.index; i >= 0; i--) {
      final candidate = styles[Breakpoint.values[i]];
      if (candidate != null) return candidate;
    }
    throw StateError('DesignNode(id: $id) に compact のstyleが定義されていません。');
  }

  factory DesignNode.fromJson(Map<String, dynamic> json) {
    final styles = (json['styles'] as Map<String, dynamic>).map(
      (key, value) => MapEntry(
        Breakpoint.fromJson(key),
        NodeBreakpointStyle.fromJson(value as Map<String, dynamic>),
      ),
    );
    return DesignNode(
      id: json['id'] as String,
      nodeType: NodeKind.fromJson(json['nodeType'] as String),
      name: json['name'] as String?,
      children: (json['children'] as List<dynamic>? ?? [])
          .map((c) => DesignNode.fromJson(c as Map<String, dynamic>))
          .toList(),
      styles: styles,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nodeType': nodeType.toJson(),
        if (name != null) 'name': name,
        'children': children.map((c) => c.toJson()).toList(),
        'styles': styles.map((k, v) => MapEntry(k.toJson(), v.toJson())),
      };
}
```

**JSON互換性への影響**: `nodeType`が必須フィールドになったため、旧形式（`nodeType`キーを含まない）のJSONは`fromJson`で例外になる。現時点では開発初期でリリース前のため据え置いているが、既存の保存済みJSONがある場合は`currentSchemaVersion`を2に上げ、`nodeType`を`name`/`children`から推測して補完するマイグレーション処理を`DesignJsonCodec`に追加することを推奨する（10節に追加）。

### 5.4 DesignDocument（要件1）

```dart
class DesignDocument {
  final int schemaVersion;
  final List<DesignNode> rootNodes; // columnCountは持たない

  const DesignDocument({required this.schemaVersion, required this.rootNodes});

  factory DesignDocument.fromJson(Map<String, dynamic> json) => DesignDocument(
        schemaVersion: json['schemaVersion'] as int,
        rootNodes: (json['rootNodes'] as List<dynamic>)
            .map((n) => DesignNode.fromJson(n as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'schemaVersion': schemaVersion,
        'rootNodes': rootNodes.map((n) => n.toJson()).toList(),
      };
}
```

### 5.5 schema_version.dart / design_json_codec.dart

```dart
// schema_version.dart
const int currentSchemaVersion = 1;
```

```dart
// design_json_codec.dart
class DesignJsonCodec {
  const DesignJsonCodec();

  String encode(DesignDocument document) => jsonEncode(document.toJson());

  DesignDocument decode(String source) {
    final map = jsonDecode(source) as Map<String, dynamic>;
    _assertSupportedVersion(map['schemaVersion'] as int);
    return DesignDocument.fromJson(map);
  }

  void _assertSupportedVersion(int version) {
    if (version > currentSchemaVersion) {
      throw FormatException(
        'このバージョンのライブラリでは schemaVersion=$version を復元できません。'
        '対応最大バージョン: $currentSchemaVersion',
      );
    }
  }
}
```

### 5.6 JSON例

```json
{
  "schemaVersion": 1,
  "rootNodes": [
    {
      "id": "sidebar",
      "name": "nav_sidebar",
      "children": [],
      "styles": {
        "compact":  { "visible": false, "width": 0 },
        "expanded": { "visible": true,  "width": 4 }
      }
    }
  ]
}
```

## 6. grid パッケージ

```dart
class BreakpointSpec {
  final double minWidth;
  final int columnCount;
  const BreakpointSpec({required this.minWidth, required this.columnCount});
}

class GridConfig {
  final Map<Breakpoint, BreakpointSpec> specs;
  const GridConfig({required this.specs}) : assert(specs.length == 3);
}

class BreakpointResolver {
  const BreakpointResolver();

  Breakpoint resolveBreakpoint(double screenWidth, GridConfig config) {
    final sorted = config.specs.entries.toList()
      ..sort((a, b) => b.value.minWidth.compareTo(a.value.minWidth));
    for (final entry in sorted) {
      if (screenWidth >= entry.value.minWidth) return entry.key;
    }
    return Breakpoint.compact;
  }
}
```

## 7. runtime パッケージ（要件2, 8）

Flutterの`Widget`型に依存しない。DesignDocument + GridConfigから継承解決済みの中間インターフェイス（`ResolvedDesign`）を組み立てるだけ。

```dart
class ResolvedNode {
  final String id;
  final String? name;
  final Map<Breakpoint, NodeBreakpointStyle> resolvedStyles; // 3区分すべて確定済み
  final List<ResolvedNode> children;
  const ResolvedNode({required this.id, this.name, required this.resolvedStyles, this.children = const []});
}

class ResolvedDesign {
  final GridConfig gridConfig;
  final List<ResolvedNode> rootNodes;
  const ResolvedDesign({required this.gridConfig, required this.rootNodes});
}

class DesignResolver {
  const DesignResolver();

  ResolvedDesign resolve(DesignDocument document, GridConfig gridConfig) => ResolvedDesign(
        gridConfig: gridConfig,
        rootNodes: document.rootNodes.map(_resolveNode).toList(),
      );

  ResolvedNode _resolveNode(DesignNode node) => ResolvedNode(
        id: node.id,
        name: node.name,
        resolvedStyles: {for (final bp in Breakpoint.values) bp: node.resolveStyle(bp)},
        children: node.children.map(_resolveNode).toList(),
      );
}
```

## 8. editor パッケージ（要件3）— 最終仕様

### 8.1 要件対応表

| 要件 | 実現方法 |
|---|---|
| ドラッグドロップで移動・拡張 | `CellDragController`（親またぎ移動対応） / `CellResizeController` |
| セルは名前を表示 | `_NodeContent`。`WidgetNameCatalog.previewBuilder`があればアプリの子Widgetを埋め込み、なければlabel/nameをテキスト表示 |
| 縦列のレスポンス指定なし（常に1行、はみ出しは回り込み） | `CanvasRowLayout` |
| オフセットなどの空セルを持てる | `DesignNode(name: null, children: [])` をモデル変更なしで流用 |
| プロパティ編集のUX | 常設パネルではなく**ダイアログ形式**（`NodeEditDialog`）に統一 |
| ノード削除のUX | 各セルにゴミ箱アイコン |
| ネストの可視化 | キャンバス上でコンテナの子を再帰描画 |
| ネストの深さ制限 | `maxNestingDepth`（既定3、root直下=1段目） |

### 8.2 ダイアログ方式を採用した理由

`DesignCanvas` は親（アプリ）が与える制約内でレイアウトされるだけの部品であり、自身の画面上の絶対位置を知らない。そのため「画面端に固定するドロワー」のような常設UIを正しく組み立てられない。ダイアログは`showDialog`で画面全体を基準にオーバーレイされるため、この制約を受けない。

### 8.3 DesignEditorController（プリミティブ）

ツリー操作の最小限のプリミティブのみを持つ。UX判断（ダイアログの見た目・入力途中の一時状態）は`dialogs/`に閉じ込める。

```dart
class DesignEditorController extends ChangeNotifier {
  final DesignJsonCodec _codec = const DesignJsonCodec();
  final List<String> _undoStack = [];
  final List<String> _redoStack = [];
  int _idCounter = 0;

  DesignDocument _document;
  final GridConfig previewGridConfig;
  final WidgetNameCatalog nameCatalog;
  final int maxNestingDepth; // 既定3、root直下=1段目
  Breakpoint editingBreakpoint = Breakpoint.compact;
  String? selectedNodeId;

  DesignEditorController({
    required DesignDocument initialDocument,
    required this.previewGridConfig,
    required this.nameCatalog,
    this.maxNestingDepth = 3,
  }) : _document = initialDocument;

  DesignDocument get document => _document;
  String _generateId() => 'node_${DateTime.now().microsecondsSinceEpoch}_${_idCounter++}';

  void select(DesignNode node) {
    selectedNodeId = node.id;
    notifyListeners();
  }

  List<DesignNode> siblingsOf(DesignNode node) {
    if (_document.rootNodes.any((n) => n.id == node.id)) return _document.rootNodes;
    return _findParentChildren(_document.rootNodes, node.id) ?? const [];
  }

  List<DesignNode>? _findParentChildren(List<DesignNode> nodes, String childId) {
    for (final n in nodes) {
      if (n.children.any((c) => c.id == childId)) return n.children;
      final found = _findParentChildren(n.children, childId);
      if (found != null) return found;
    }
    return null;
  }

  /// 新規ノードを追加する。深さ超過時は [NestingLimitExceededException]。
  /// stylesにcompactが無くてもデフォルト値で補う（DesignNodeコンストラクタの
  /// compact必須チェックに引っかからないようにする防御の2段目）。
  /// v4: nodeTypeを必須化（5.3参照）。
  DesignNode addNode({
    required NodeKind nodeType,
    DesignNode? parent,
    String? name,
    Map<Breakpoint, NodeBreakpointStyle>? styles,
  }) {
    final parentDepth = parent == null ? 0 : nodeDepth(_document.rootNodes, parent.id);
    if (parentDepth + 1 > maxNestingDepth) {
      throw NestingLimitExceededException(maxNestingDepth);
    }
    final effectiveStyles = <Breakpoint, NodeBreakpointStyle>{
      Breakpoint.compact: const NodeBreakpointStyle(width: 1),
      ...?styles, // 渡された値があれば上書きする（mapの後勝ち）
    };
    final newNode = DesignNode(id: _generateId(), nodeType: nodeType, name: name, styles: effectiveStyles);
    mutateTree((rootNodes) {
      final targetChildren = parent == null ? rootNodes : findNodeById(rootNodes, parent.id)?.children;
      targetChildren?.add(newNode);
    });
    return newNode;
  }

  void removeNode(DesignNode node) {
    mutateTree((rootNodes) => detachNodeById(rootNodes, node.id));
  }

  void renameNode(DesignNode node, String? name) {
    mutateTree((rootNodes) {
      replaceNodeInPlace(rootNodes, node.id, (old) => DesignNode(
        id: old.id, name: name, children: old.children, styles: old.styles,
      ));
    });
  }

  /// v3: 既存ノードのcompactをフォールバックにし、万一stylesに無くても消えないようにする。
  void replaceNodeStyles(DesignNode node, Map<Breakpoint, NodeBreakpointStyle> styles) {
    final effectiveStyles = <Breakpoint, NodeBreakpointStyle>{
      Breakpoint.compact: node.resolveStyle(Breakpoint.compact),
      ...styles,
    };
    mutateTree((rootNodes) {
      final target = findNodeById(rootNodes, node.id);
      target?.styles..clear()..addAll(effectiveStyles);
    });
  }

  void reorderChild({DesignNode? parent, required int oldIndex, required int newIndex}) {
    mutateTree((rootNodes) {
      final children = parent == null ? rootNodes : findNodeById(rootNodes, parent.id)?.children;
      if (children == null) return;
      final item = children.removeAt(oldIndex);
      children.insert(newIndex.clamp(0, children.length), item);
    });
  }

  void mutateTree(void Function(List<DesignNode> rootNodes) mutation) {
    _pushHistory();
    _redoStack.clear();
    final rootNodes = List<DesignNode>.of(_document.rootNodes);
    mutation(rootNodes);
    _document = DesignDocument(schemaVersion: _document.schemaVersion, rootNodes: rootNodes);
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
}
```

### 8.4 design_tree_utils.dart（非公開）

```dart
DesignNode? findNodeById(List<DesignNode> roots, String id) {
  for (final node in roots) {
    if (node.id == id) return node;
    final found = findNodeById(node.children, id);
    if (found != null) return found;
  }
  return null;
}

DesignNode? detachNodeById(List<DesignNode> roots, String id) {
  for (var i = 0; i < roots.length; i++) {
    if (roots[i].id == id) return roots.removeAt(i);
    final detached = detachNodeById(roots[i].children, id);
    if (detached != null) return detached;
  }
  return null;
}

bool replaceNodeInPlace(List<DesignNode> roots, String id, DesignNode Function(DesignNode old) transform) {
  for (var i = 0; i < roots.length; i++) {
    if (roots[i].id == id) {
      roots[i] = transform(roots[i]);
      return true;
    }
    if (replaceNodeInPlace(roots[i].children, id, transform)) return true;
  }
  return false;
}

/// nodeIdの深さ。rootNodes直下は1。未挿入なら0。
int nodeDepth(List<DesignNode> roots, String nodeId, [int depth = 1]) {
  for (final n in roots) {
    if (n.id == nodeId) return depth;
    final found = nodeDepth(n.children, nodeId, depth + 1);
    if (found != 0) return found;
  }
  return 0;
}

/// nodeを1段目としたときの配下の最大深さ（葉のみなら1）。
int subtreeHeight(DesignNode node) {
  if (node.children.isEmpty) return 1;
  return 1 + node.children.map(subtreeHeight).reduce((a, b) => a > b ? a : b);
}
```

### 8.5 nesting_limit_exceeded_exception.dart

```dart
class NestingLimitExceededException implements Exception {
  final int maxDepth;
  const NestingLimitExceededException(this.maxDepth);
  @override
  String toString() => '最大ネスト段数（$maxDepth）を超えるため実行できません。';
}
```

### 8.6 CellDragController（親またぎ移動＋深さチェック）

```dart
class CellDragController {
  final DesignEditorController editor;
  const CellDragController(this.editor);

  void moveNode({required DesignNode node, required DesignNode? targetParent, required int targetIndex}) {
    final targetDepth = targetParent == null ? 1 : nodeDepth(editor.document.rootNodes, targetParent.id) + 1;
    final movingHeight = subtreeHeight(node);
    if (targetDepth + movingHeight - 1 > editor.maxNestingDepth) {
      throw NestingLimitExceededException(editor.maxNestingDepth);
    }
    editor.mutateTree((rootNodes) {
      final removed = detachNodeById(rootNodes, node.id);
      if (removed == null) return;
      final targetChildren = targetParent == null ? rootNodes : findNodeById(rootNodes, targetParent.id)?.children;
      if (targetChildren == null) return;
      targetChildren.insert(targetIndex.clamp(0, targetChildren.length), removed);
      _clampWidthIfOverflow(removed, targetChildren);
    });
  }

  void _clampWidthIfOverflow(DesignNode node, List<DesignNode> siblings) {
    final breakpoint = editor.editingBreakpoint;
    final columnCount = editor.previewGridConfig.specs[breakpoint]!.columnCount;
    final othersTotal = siblings.where((n) => n.id != node.id)
        .map((n) => n.resolveStyle(breakpoint).width).fold(0, (a, b) => a + b);
    final available = (columnCount - othersTotal).clamp(1, columnCount);
    final current = node.resolveStyle(breakpoint);
    if (current.width > available) {
      editor.updateNodeStyle(node, breakpoint, current.copyWith(width: available));
    }
  }
}
```

### 8.7 CellResizeController

```dart
class CellResizeController {
  final DesignEditorController editor;
  const CellResizeController(this.editor);

  void onResizeDrag(DesignNode node, int deltaColumns) {
    final breakpoint = editor.editingBreakpoint;
    final columnCount = editor.previewGridConfig.specs[breakpoint]!.columnCount;
    final siblings = editor.siblingsOf(node);
    final siblingSpanTotal = siblings.where((n) => n.id != node.id)
        .map((n) => n.resolveStyle(breakpoint).width).fold(0, (a, b) => a + b);
    final currentStyle = node.resolveStyle(breakpoint);
    final maxWidth = columnCount - siblingSpanTotal;
    final newWidth = (currentStyle.width + deltaColumns).clamp(1, maxWidth);
    editor.updateNodeStyle(node, breakpoint, currentStyle.copyWith(width: newWidth));
  }
}
```

### 8.8 WidgetNameCatalog

```dart
class WidgetNameEntry {
  final String name;
  final String label;
  final Widget Function(BuildContext context, DesignNode node)? previewBuilder;
  const WidgetNameEntry({required this.name, required this.label, this.previewBuilder});
}

class WidgetNameCatalog {
  final List<WidgetNameEntry> entries;
  const WidgetNameCatalog({required this.entries});
  WidgetNameEntry? findByName(String name) {
    for (final e in entries) { if (e.name == name) return e; }
    return null;
  }
}
```

### 8.9 CanvasRowLayout

```dart
class CanvasRowLayout {
  final int columnCount;
  const CanvasRowLayout({required this.columnCount});

  List<List<DesignNode>> layoutRows(List<DesignNode> children, Breakpoint editingBreakpoint) {
    final rows = <List<DesignNode>>[];
    var current = <DesignNode>[];
    var currentSpan = 0;
    for (final node in children) {
      final style = node.resolveStyle(editingBreakpoint);
      final span = style.visible ? style.width.clamp(0, columnCount) : 0;
      if (currentSpan + span > columnCount && current.isNotEmpty) {
        rows.add(current);
        current = [];
        currentSpan = 0;
      }
      current.add(node);
      currentSpan += span;
    }
    if (current.isNotEmpty) rows.add(current);
    return rows;
  }
}
```

### 8.10 DesignCanvas — 公開Widget、ネスト再帰描画

`_CanvasRow`は所属元（`parent`）を明示的に受け取り、`_NodeContent`がコンテナノードなら`_CanvasRow`を再帰的に呼び出す。`_CanvasCell`は枠・編集アイコン・削除アイコン・リサイズハンドルを担当し、中身（`_NodeContent`）と責務を分離する。

構成:
- `DesignCanvas(controller, minCellExtent=48)`: rootNodesから最初の`_CanvasRow`群を構築
- `_CanvasRow(nodes, controller, parent, minCellExtent)`: 1行分。`DragTarget`+`LongPressDraggable`で移動を扱う
- `_CanvasCell(node, controller, minCellExtent)`: 枠線・選択状態・編集/削除アイコン・リサイズハンドル
- `_NodeContent(node, controller, minCellExtent)`: Widget実体 / 空きセル / コンテナ（再帰）の3分岐

`minCellExtent`は空きセル・空のコンテナ・未確定Widgetでもセルが潰れないようにするための最小サイズで、`DesignCanvas → _CanvasRow → _CanvasCell → _NodeContent →（再帰時）_CanvasRow → ...` とネストの深さに関わらず一貫して伝播させる（v3で発見した不具合。11.2参照）。

**重要な実装上の注意（v3で発見）**: `_CanvasRow`は`IntrinsicHeight`で1行の高さを子の実寸から決めるため、`ConstrainedBox(minHeight: ...)`は`Stack`の**外側**ではなく、枠線を描画する`Container`（`Stack`の非配置子）に**直接**かける必要がある。`Stack`は配置していない子のサイズを制約を緩めた状態で測るため、外側にかけても中身が0pxのセルは枠線ごと潰れる（11.3参照）。

```dart
class _CanvasCell extends StatelessWidget {
  final DesignNode node;
  final DesignEditorController controller;
  final double minCellExtent;
  const _CanvasCell({required this.node, required this.controller, required this.minCellExtent});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSelected = controller.selectedNodeId == node.id;

    return GestureDetector(
      onTap: () => controller.select(node),
      child: Stack(
        children: [
          // ConstrainedBoxはContainer(枠線本体)に直接かける。Stackの外側にかけない。
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: minCellExtent, minWidth: minCellExtent),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected ? theme.colorScheme.primary : theme.dividerColor,
                  width: isSelected ? 2 : 1,
                ),
                borderRadius: BorderRadius.circular(theme.useMaterial3 ? 8 : 4),
              ),
              child: _NodeContent(node: node, controller: controller, minCellExtent: minCellExtent),
            ),
          ),
          Positioned(
            left: 2, top: 2,
            child: IconButton(
              iconSize: 16, padding: EdgeInsets.zero, constraints: const BoxConstraints(),
              icon: const Icon(Icons.edit_outlined),
              onPressed: () => NodeEditDialog.show(context, controller: controller, node: node),
            ),
          ),
          Positioned(
            right: 14, top: 2,
            child: IconButton(
              iconSize: 16, padding: EdgeInsets.zero, constraints: const BoxConstraints(),
              icon: const Icon(Icons.delete_outline),
              onPressed: () => controller.removeNode(node),
            ),
          ),
          Positioned(
            right: 0, top: 0, bottom: 0, width: 12,
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
  const _NodeContent({required this.node, required this.controller, required this.minCellExtent});

  @override
  Widget build(BuildContext context) {
    if (node.name != null) {
      final entry = controller.nameCatalog.findByName(node.name!);
      if (entry?.previewBuilder != null) return entry!.previewBuilder!(context, node);
      final theme = Theme.of(context);
      return Center(child: Text(entry?.label ?? node.name!, style: theme.textTheme.bodySmall));
    }
    if (node.isLeaf) {
      return const SizedBox.shrink(); // 高さの下限はConstrainedBox(_CanvasCell側)が保証する
    }
    final columnCount = controller.previewGridConfig.specs[controller.editingBreakpoint]!.columnCount;
    final rows = CanvasRowLayout(columnCount: columnCount).layoutRows(node.children, controller.editingBreakpoint);
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: rows
            .map((row) => _CanvasRow(nodes: row, controller: controller, parent: node, minCellExtent: minCellExtent))
            .toList(),
      ),
    );
  }
}
```

### 8.11 NodeEditDialog — 唯一のプロパティ編集UI

`controller`を`AnimatedBuilder`で購読し、`widget.node`のIDから`controller.document`の最新状態を都度引き直す（`_currentNode`）。これにより入れ子で開いた子ダイアログでの追加・編集・削除が、親ダイアログに即座に反映される。

主な機能:
- `_NodeKind`（Widget / コンテナ / 空きセル）の選択
- Widget種別選択時: `WidgetNameCatalog`からのドロップダウン選択
- `NodeStyleEditor`（3区分のvisible/width編集、継承状態の表示）
- コンテナ種別時: 子要素一覧（`_ChildrenReorderList`）、「子を追加」ボタン（`maxNestingDepth`到達時は無効化）
- 保存時: `NestingLimitExceededException`をキャッチしてSnackBar表示

### 8.12 _ChildrenReorderList

`ReorderableListView`で並べ替え、各行に編集アイコン（`NodeEditDialog.show(..., node: child)`）と削除アイコン（`controller.removeNode(child)`）を持つ。

## 9. 確定した設計判断（経緯まとめ）

- `width`は絶対px値ではなく、Breakpointごとの列数を分母とする相対スパン値。
- 列数（columnCount）と区分の幅しきい値（minWidth）は、アプリが`GridConfig`として提供する。ライブラリ内にハードコードしない。
- `styles`の未指定区分はcompact側を継承。compact自体は省略不可（必須）。
- `runtime`はFlutterの`Widget`型に依存しない。実際のWidget構築・グリッド描画は、利用アプリと既存のレスポンシブGridライブラリの責務。
- ~~`name`が`null`かつ`children`が空のノードは空きセル（オフセット）。モデルへの新規フィールド追加は不要。~~ **→ v4で撤回**。`NodeKind`（widget/container/spacer）を明示フィールドとして追加した（理由は11.8参照）。
- `NodeKind.widget`のノードは`children`を持つことを**許可する**（Widgetの下にさらにデザインを続けられる）。
- `nodeType`は作成後**変更不可**（エディタUIでは既存ノード編集時に種別選択UIを無効化する）。
- エディタのセル移動は、同じ親内の並び替えだけでなく、別の親（コンテナ）への移動も許容する。
- セルの`name`入力は自由入力ではなく、アプリ提供の`WidgetNameCatalog`からの選択式とし、誤字を防止する。
- エディタのUndo/Redoは、`DesignJsonCodec`によるJSON文字列スナップショット方式で実装する。
- `lib/screen_designer.dart`（全体一括export）は用意せず、4バレルに層を分離する。
- ノードの追加・変更のプロパティ編集は**ダイアログ形式**を採用（常設パネルは不採用）。理由：`DesignCanvas`の幅は親Widgetが決めるため、ドロワー的な常設パネルの正確な表示位置を決められないため。
- コンテナノードはキャンバス上でも子を**再帰的にネスト表示**する。
- ネストの深さには上限（`maxNestingDepth`）を設ける。root直下を1段目として数え、**既定値3**。
- コントローラーは「ツリーに対する最小限の汎用プリミティブ」（addNode/removeNode/renameNode/replaceNodeStyles/reorderChild）のみを持ち、ダイアログのUX判断（入力途中の一時状態、種別選択等）は`dialogs/`層に閉じ込めて責務を分離する。

## 10. 未着手・今後の検討事項

- **【VSCode継続時に優先】Widget種別選択時にnameを選ばなくても保存できてしまう問題**（11.4参照）。修正案は提示済みだが、まだコードへの反映可否を確認していない。
- **`nodeType`追加に伴うJSONマイグレーション**：旧形式（`nodeType`キー無し）のJSONを読み込めるようにするか検討。必要であれば`currentSchemaVersion`を2に上げ、`name`/`children`から`nodeType`を推測して補完する変換を`DesignJsonCodec`に追加する。
- `GridConfig`の`BreakpointSpec`に対するバリデーション（`minWidth`の重複・逆転チェックなど）
- ドラッグ操作の開始トリガー（現在は`LongPressDraggable`。専用ドラッグハンドルへの変更も検討可。11.9で一度セル単位から専用ハンドルへの変更を提案したが、実際にはLongPressDraggableの操作方法の誤解が原因だったため、この変更は見送り可）
- コンテナが空きセル状態から子を持つ状態に変わった際の、キャンバス上での見た目の遷移（サイズが急に変わることへの配慮）

## 11. 実装検証で発見した不具合と修正（テスト実装フェーズ）

設計をコードに落とした最初のテスト実装で発見された不具合と、その根本原因。同種の実装ミスを繰り返さないための記録。

### 11.1 `DesignEditorController`をbuild()内で生成していた

**症状**: `setState`を呼ぶたびに編集内容・Undo履歴が消える。
**原因**: `StatefulWidget.build()`は再描画のたびに呼ばれるため、その中で`DesignEditorController`を`late`修飾なしに生成すると毎回作り直される。
**修正**: `initState`で1回だけ生成し、フィールドに保持。`dispose()`で`controller.dispose()`を呼ぶ（`ChangeNotifier`のため）。

### 11.2 `DesignCanvas`と`DesignEditorController`の両方に`nameCatalog`を渡していた（冗長）

**原因**: `DesignEditorController`が既に`nameCatalog`を保持しているのに、`DesignCanvas`にも別途渡す設計になっていた。
**修正**: `DesignCanvas`のコンストラクタから`nameCatalog`引数を削除し、内部で`controller.nameCatalog`を参照する。

### 11.3 「追加」ボタンの実装がライブラリ側に存在しなかった

**原因**: `DesignEditorController`に新規ノード追加のAPI（`addNode`）が未実装だった。
**修正**: `addNode({parent, name, styles})`を追加。あわせて`removeNode`/`renameNode`/`replaceNodeStyles`/`reorderChild`も同時に整備（8.3参照）。

### 11.4 Widget種別選択時、nameを選ばなくても保存できてしまう（未反映・要フォロー）

**症状**: `NodeEditDialog`でWidget種別を選んだ状態のまま、ドロップダウンで名前を選択せずに保存すると、`name: null`のWidgetノードができてしまう。これは見た目上「空きセル」と区別が付かない。
**修正案（提示済み・未反映）**:
```dart
bool get _canSave => _kind != _NodeKind.widget || _draftName != null;
// initStateでカタログの最初のエントリを初期選択にしておく案も提示済み
```
保存ボタンの`onPressed`を`_canSave ? _onSave : null`にし、未選択時は警告テキストを表示する。**この修正はまだコードに反映するか確認していない。VSCode側での最初の作業候補。**

### 11.5 `resolveStyle`が`compact`未定義で例外（`StateError`）

**症状**: 「追加」ダイアログでcompactの値を一度も編集せずに保存すると、`DesignCanvas`の描画時（保存の瞬間ではない）に`StateError`が発生する。原因箇所から離れたタイミングで例外が出るため発見しづらい。
**根本原因**: `NodeEditDialog`の保存処理が、`_draftStyles`に明示値がある区分のみを`Map`に含めていたため、compactを一度も編集していないと保存後の`styles`に`Breakpoint.compact`キー自体が存在しなくなっていた。一方`DesignNode`の通常コンストラクタ（`fromJson`ではない方）はcompact必須のチェックをしておらず、不正な状態のインスタンスがそのまま作られていた。
**修正（3段の防御、すべて反映済み）**:
1. `DesignNode`の通常コンストラクタでもcompact必須を検証するように変更（`const`を外し、コンストラクタ本体で`ArgumentError`を投げる）。これが最終防衛線（5.3参照）。
2. `DesignEditorController.addNode`/`replaceNodeStyles`で、compactが渡されなかった場合にデフォルト値で補う（8.3参照）。
3. `NodeEditDialog.initState`で、新規作成時にcompactへ最初から初期値（`NodeBreakpointStyle(width: 1)`）を設定する。

### 11.6 ダイアログでmedium/expandedのトグルスイッチが操作できない

**症状**: `NodeStyleEditor`でmedium/expandedのSwitchをオンにしても値が変わらない・反映されない。
**根本原因**: 継承の実効値解決が「1つ手前の区分」しか参照しておらず、`DesignNode.resolveStyle`と同じ「手前を遡って探す」ロジックになっていなかった。11.5の不具合（compactが未設定）と組み合わさると、mediumから見て手前（compact）がそもそも存在せず、実効値が`null`になってトグルが機能しないように見えていた。
**修正**: `NodeStyleEditor`内に、`DesignNode.resolveStyle`と同じ「bpから0まで遡って最初の明示値を返す」`_effectiveStyle`メソッドを実装（8節`widgets/node_style_editor.dart`参照）。あわせて`TextFormField`の`initialValue`がFlutterの仕様上再描画だけでは更新されない問題を避けるため、値が変わるたびに`key`を変えるようにした。

### 11.7 空きセル・空のコンテナが1ピクセル程度に潰れる

**症状**: 名前未設定のWidgetノードや、子がまだ0件のコンテナノードが、キャンバス上でほぼ見えない大きさ（1px程度）で表示される。
**根本原因（2段階）**:
1. `_CanvasRow`が`IntrinsicHeight`で行の高さを子の実寸から決めているが、`_NodeContent`が空コンテンツ時に`SizedBox.shrink()`（0px）を返すため、その行自体の高さが枠線の太さまで潰れる。
2. 1段目の対策として`ConstrainedBox(minHeight: ...)`を追加した際、最初は`Stack`の**外側**にかけてしまっていた。`Stack`は「配置していない子」（＝枠線の`Container`）のサイズを制約を緩めた状態で測ってから外形だけを下限に合わせるため、`Stack`自身は48px確保されるのに、内部の枠線`Container`は0pxのままという食い違いが起きていた。Widget種別のセルはテキスト等で自然に高さがあったため症状が出ず、コンテナ（行）や空きセルでのみ症状が再現していた。
**修正**: `ConstrainedBox`を`Stack`の外側ではなく、枠線を描く`Container`（`Stack`の非配置子）に直接かける。`minCellExtent`（既定48px）を`DesignCanvas`から`_NodeContent`の再帰呼び出しまで一貫して伝播させる（8.10参照）。

### 11.8 セルが正方形化 → `minWidth`を外したら幅1px（根本原因はNodeKind導入で解決）

**経緯**: 11.7の対策で`ConstrainedBox`に`minWidth`と`minHeight`を両方指定していたところ、「コンテナ枠が正方形になり削除アイコンがはみ出す」不具合が発生。`minWidth`は本来`Expanded(flex: width)`が決めるべき値と競合するため削除したところ、症状が「幅がほぼ1pxになる」に変化した。

**当初の仮説（誤り）**: 非表示ノードのflex消費、または祖先からのunbounded制約を疑ったが、いずれも「1個のノードだけの行でも再現する」という条件と整合しなかった。

**実際の根本原因**: `_NodeContent`の判定ロジック（`name`と`isLeaf`から3種を推測）では、**「作成直後で子が0件のコンテナ」と「意図的な空きセル」がデータ上まったく同じ形**（`name==null`かつ`children==[]`）になっていた。そのため新規作成した「コンテナ（行）」ノードが「空きセル」の判定分岐（`isLeaf` → `SizedBox.shrink()`、実質0サイズ）に入ってしまい、そのセルが行内で意図せず0幅に近い扱いになっていた。「正方形」に見えていたのは`minWidth`がこれを覆い隠していたためで、外した瞬間に本来の（壊れた）幅がそのまま表面化した。

**修正**: `NodeKind`（widget/container/spacer）を`DesignNode`の明示フィールドとして追加し（5.3, 5.4参照）、「0件のコンテナ」と「空きセル」をデータ上区別できるようにした。`_NodeContent`は`node.nodeType`で分岐し、`container`かつ子が0件の場合は`SizedBox.shrink()`ではなく`Center(child: Text('空'))`のようなプレースホルダーを描画する（8.10参照）。これにより意図しない0サイズ化が起きなくなった。

**教訓**: 「複数のデータの組み合わせから種別を推測する」設計は、組み合わせの一部が実際には区別したい2つの意味を両方満たしてしまうケースがないか、要件が増えるたびに再検証する必要がある。今回は「新規作成直後の空コンテナ」という、当初の要件定義時には想定していなかった中間状態が原因だった。

### 11.9 ドラッグ&ドロップが「機能しない」は操作方法の誤解だった

**症状として報告されたもの**: ドラッグ操作が反応しない。
**実際の原因**: `LongPressDraggable`は仕様どおり長押し保持後にドラッグが開始する。単純なクリック→ドラッグでは反応しないのは正しい挙動で、コード側の不具合ではなかった。
**対応**: コードの修正は不要。ただし調査の過程で「専用ドラッグハンドルに切り替える」提案をしたが、原因が操作方法の誤解だったと判明したため、この変更は見送りとした（10節参照）。

### 11.10 コンテナへドロップしても子にならない

**症状**: Widget等をコンテナ上にドラッグ&ドロップしても、コンテナの子として追加されない。
**根本原因**: ドロップ判定は「セルと同階層の兄弟として挿入する`DragTarget`」（`_CanvasRow`が各セルに被せているもの）と、「コンテナの既存の子と同階層に挿入する`DragTarget`」（子を再帰描画する`_CanvasRow`が持つもの）の2種類しか無く、**「コンテナ自身の中身（背景・空欄部分）に落として子にする」ための`DragTarget`が存在しなかった**。子が0件のコンテナは尚更、受け皿が完全に無い状態だった。
**修正**: `_NodeContent`のコンテナ分岐自体を、`targetParent: node`（コンテナ自身）・`targetIndex: node.children.length`（末尾追加）とする`DragTarget`で包んだ（8.10参照）。
**副作用と対策**: コンテナへの子ドロップが可能になったことで、「あるコンテナを自分の子孫の中へドロップする」循環参照が新たに起こりうるようになった。`design_tree_utils.dart`に`containsDescendant`を追加し、`CellDragController.moveNode`とドロップ側`onWillAcceptWithDetails`の両方でチェックする（`CircularNestingException`）。
