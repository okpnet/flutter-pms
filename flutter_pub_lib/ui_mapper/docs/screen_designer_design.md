# screen_designer ライブラリ設計書

## 1. 概要

Flutterアプリ上で、ユーザーが画面デザインを行い、そのデザイン情報をJSONとして保存・復元できるライブラリ。デザインは3段階のレスポンシブGridシステムのみで構成され、実際のWidget解決・レイアウト描画はアプリ側（および既存のレスポンシブGridライブラリ）に委ねる。

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

- ライブラリは4つのパッケージ（Dartライブラリ）に分割し、依存は一方向のみ。
- `model` と `grid` はFlutterの`Widget`に一切依存しない。
- `runtime` も`Widget`に依存しない。実際のWidget構築・レイアウト（既存のレスポンシブGridライブラリ）はアプリ側の責務。
- `editor` のみFlutter Widgetを組み立てる。ただし独自テーマは持たず、埋め込み先アプリの`Theme.of(context)`をそのまま使用する。

```
editor  ──┐
          ├──▶ grid ──▶ model
runtime ──┘
```

## 4. パッケージ構成（ディレクトリ）

```
screen_designer/
├── lib/
│   ├── model.dart                          // 公開バレル
│   ├── grid.dart                           // 公開バレル
│   ├── runtime.dart                        // 公開バレル
│   ├── editor.dart                         // 公開バレル
│   │
│   └── src/
│       ├── model/
│       │   ├── design_document.dart
│       │   ├── design_node.dart
│       │   ├── node_breakpoint_style.dart
│       │   ├── breakpoint.dart
│       │   └── json/
│       │       ├── design_json_codec.dart
│       │       └── schema_version.dart
│       │
│       ├── grid/
│       │   ├── grid_config.dart
│       │   └── breakpoint_resolver.dart
│       │
│       ├── runtime/
│       │   ├── resolved_node.dart
│       │   ├── resolved_design.dart
│       │   └── design_resolver.dart
│       │
│       └── editor/
│           ├── design_editor_controller.dart
│           ├── design_tree_utils.dart        // 非公開（editor.dartからexportしない）
│           ├── design_canvas.dart
│           ├── canvas_row_layout.dart
│           ├── cell_drag_controller.dart
│           ├── cell_resize_controller.dart
│           ├── node_property_panel.dart
│           └── widget_name_catalog.dart
```

`lib/screen_designer.dart`（全体一括export）は**用意しない**。本番描画のみ行うアプリが`editor`の依存（Drag&Drop関連含む）を不要に抱え込まないようにするため。

## 5. model パッケージ

### 5.1 Breakpoint（要件5）

宣言順が継承順（compact → medium → expanded）。実際の閾値・列数は持たない。

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

  /// この区分でのカラムスパン。分母（列数）はJSONに含まれず、
  /// 実行時にGridConfigのcolumnCountを参照して解釈される。
  final int width;

  const NodeBreakpointStyle({this.visible = true, required this.width});

  factory NodeBreakpointStyle.fromJson(Map<String, dynamic> json) =>
      NodeBreakpointStyle(
        visible: json['visible'] as bool? ?? true,
        width: json['width'] as int,
      );

  Map<String, dynamic> toJson() => {'visible': visible, 'width': width};

  NodeBreakpointStyle copyWith({bool? visible, int? width}) =>
      NodeBreakpointStyle(
        visible: visible ?? this.visible,
        width: width ?? this.width,
      );
}
```

### 5.3 DesignNode（要件8, 9）

`name`の有無と`children`の有無で3つの意味を持つ。

- `name != null` → アプリが実行時に解決する実体Widget
- `name == null` かつ `children` あり → 子を並べるだけのコンテナ
- `name == null` かつ `children` が空 → 何も描画しない空きセル（オフセット）

未指定の区分は、より手前の区分（compact側）を継承する。**compactは必須**（最小区分は必ず基準値を明示する）。

```dart
class DesignNode {
  final String id;
  final String? name;
  final List<DesignNode> children;
  final Map<Breakpoint, NodeBreakpointStyle> styles;

  const DesignNode({
    required this.id,
    this.name,
    this.children = const [],
    required this.styles,
  });

  bool get isLeaf => children.isEmpty;

  /// 未指定の区分は、手前の区分を遡って継承する。
  NodeBreakpointStyle resolveStyle(Breakpoint breakpoint) {
    for (var i = breakpoint.index; i >= 0; i--) {
      final candidate = styles[Breakpoint.values[i]];
      if (candidate != null) return candidate;
    }
    throw StateError(
      'DesignNode(id: $id) に compact のstyleが定義されていません。',
    );
  }

  factory DesignNode.fromJson(Map<String, dynamic> json) {
    final styles = (json['styles'] as Map<String, dynamic>).map(
      (key, value) => MapEntry(
        Breakpoint.fromJson(key),
        NodeBreakpointStyle.fromJson(value as Map<String, dynamic>),
      ),
    );
    if (!styles.containsKey(Breakpoint.compact)) {
      throw FormatException(
        'DesignNode(id: ${json['id']}) に compact のstyleが必要です。',
      );
    }
    return DesignNode(
      id: json['id'] as String,
      name: json['name'] as String?,
      children: (json['children'] as List<dynamic>? ?? [])
          .map((c) => DesignNode.fromJson(c as Map<String, dynamic>))
          .toList(),
      styles: styles,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        if (name != null) 'name': name,
        'children': children.map((c) => c.toJson()).toList(),
        'styles': styles.map((k, v) => MapEntry(k.toJson(), v.toJson())),
      };
}
```

### 5.4 DesignDocument（要件1）

列数（columnCount）は持たない。列数はGridConfig（アプリ提供）側の責務。

```dart
class DesignDocument {
  final int schemaVersion;
  final List<DesignNode> rootNodes;

  const DesignDocument({required this.schemaVersion, required this.rootNodes});

  factory DesignDocument.fromJson(Map<String, dynamic> json) =>
      DesignDocument(
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

### 5.5 schema_version.dart / design_json_codec.dart（要件1）

```dart
// schema_version.dart
const int currentSchemaVersion = 1;
```

```dart
// design_json_codec.dart
import 'schema_version.dart';

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
（`medium`は未指定のため`compact`の値を継承する）

## 6. grid パッケージ

### 6.1 GridConfig（要件6）

区分ごとの「適用される最小幅」と「列数」をアプリが注入する。

```dart
class BreakpointSpec {
  final double minWidth;
  final int columnCount;
  const BreakpointSpec({required this.minWidth, required this.columnCount});
}

class GridConfig {
  final Map<Breakpoint, BreakpointSpec> specs;
  const GridConfig({required this.specs}) : assert(specs.length == 3);

  factory GridConfig.simple({
    required int compactColumns,
    required int mediumColumns,
    required int expandedColumns,
    double mediumMinWidth = 600,
    double expandedMinWidth = 1024,
  }) =>
      GridConfig(specs: {
        Breakpoint.compact: BreakpointSpec(minWidth: 0, columnCount: compactColumns),
        Breakpoint.medium: BreakpointSpec(minWidth: mediumMinWidth, columnCount: mediumColumns),
        Breakpoint.expanded: BreakpointSpec(minWidth: expandedMinWidth, columnCount: expandedColumns),
      });
}
```

### 6.2 BreakpointResolver

```dart
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

Flutterの`Widget`型に一切依存しない。DesignDocument + GridConfigから、継承解決済みの中間インターフェイス（`ResolvedDesign`）を組み立てるだけ。実際のWidget化・レイアウト（既存のレスポンシブGridライブラリ）はアプリ側が行う。

```dart
class ResolvedNode {
  final String id;
  final String? name; // アプリのWidget解決キー（要件9）
  final Map<Breakpoint, NodeBreakpointStyle> resolvedStyles; // 3区分すべて確定済み
  final List<ResolvedNode> children;

  const ResolvedNode({
    required this.id,
    this.name,
    required this.resolvedStyles,
    this.children = const [],
  });
}

class ResolvedDesign {
  final GridConfig gridConfig; // アプリが参照する列数情報（要件6）
  final List<ResolvedNode> rootNodes;
  const ResolvedDesign({required this.gridConfig, required this.rootNodes});
}

class DesignResolver {
  const DesignResolver();

  ResolvedDesign resolve(DesignDocument document, GridConfig gridConfig) {
    return ResolvedDesign(
      gridConfig: gridConfig,
      rootNodes: document.rootNodes.map(_resolveNode).toList(),
    );
  }

  ResolvedNode _resolveNode(DesignNode node) {
    final resolvedStyles = <Breakpoint, NodeBreakpointStyle>{
      for (final bp in Breakpoint.values) bp: node.resolveStyle(bp),
    };
    return ResolvedNode(
      id: node.id,
      name: node.name,
      resolvedStyles: resolvedStyles,
      children: node.children.map(_resolveNode).toList(),
    );
  }
}
```

アプリ側の利用イメージ（ライブラリ外のコード）:

```dart
final resolved = DesignResolver().resolve(document, myGridConfig);
// resolved.gridConfigから列数を取得し、
// resolved.rootNodesを既存レスポンシブライブラリのAPIへ変換して渡す。
// nameの解決（Material/Cupertino等）もアプリが行う。
```

## 8. editor パッケージ（要件3）

デザインUI。ライブラリ内で唯一Flutter Widgetを組み立てる層。独自テーマは持たず`Theme.of(context)`をそのまま使う。

### 8.1 要件と実現方法

| 要件 | 実現方法 |
|---|---|
| 1. ドラッグドロップで移動・拡張 | `CellDragController`（親またぎ移動対応）/ `CellResizeController` |
| 2. セルは名前を表示 | `_CanvasCell`。`WidgetNameCatalog`の`previewBuilder`があればアプリの子Widgetを埋め込み、なければlabel/nameをテキスト表示 |
| 3. 縦列のレスポンスを指定しない（常に1行、はみ出しは回り込み） | `CanvasRowLayout`（編集中Breakpointのcolumn countで折り返し計算） |
| 4. オフセットなどの空セルを持てる | `DesignNode(name: null, children: [])` をモデル変更なしで流用 |

### 8.2 design_tree_utils.dart（非公開・共通処理）

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
```

### 8.3 DesignEditorController

`ChangeNotifier`を継承。Undo/Redoは`DesignJsonCodec`によるJSONスナップショット方式（差分計算・ディープコピー実装が不要）。

```dart
class DesignEditorController extends ChangeNotifier {
  final DesignJsonCodec _codec = const DesignJsonCodec();
  final List<String> _undoStack = [];
  final List<String> _redoStack = [];

  DesignDocument _document;
  final GridConfig previewGridConfig;
  final WidgetNameCatalog nameCatalog;
  Breakpoint editingBreakpoint = Breakpoint.compact;
  String? selectedNodeId;

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

  void updateNodeStyle(DesignNode node, Breakpoint breakpoint, NodeBreakpointStyle newStyle) {
    mutateTree((rootNodes) {
      final target = findNodeById(rootNodes, node.id);
      target?.styles[breakpoint] = newStyle;
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

### 8.4 CellDragController（親またぎ移動）

```dart
class CellDragController {
  final DesignEditorController editor;
  const CellDragController(this.editor);

  void moveNode({required DesignNode node, required DesignNode? targetParent, required int targetIndex}) {
    editor.mutateTree((rootNodes) {
      final removed = detachNodeById(rootNodes, node.id);
      if (removed == null) return;
      final targetChildren = targetParent == null
          ? rootNodes
          : findNodeById(rootNodes, targetParent.id)?.children;
      if (targetChildren == null) return;
      targetChildren.insert(targetIndex.clamp(0, targetChildren.length), removed);
      _clampWidthIfOverflow(removed, targetChildren);
    });
  }

  void _clampWidthIfOverflow(DesignNode node, List<DesignNode> siblings) {
    final breakpoint = editor.editingBreakpoint;
    final columnCount = editor.previewGridConfig.specs[breakpoint]!.columnCount;
    final othersTotal = siblings
        .where((n) => n.id != node.id)
        .map((n) => n.resolveStyle(breakpoint).width)
        .fold(0, (a, b) => a + b);
    final available = (columnCount - othersTotal).clamp(1, columnCount);
    final current = node.resolveStyle(breakpoint);
    if (current.width > available) {
      editor.updateNodeStyle(node, breakpoint, current.copyWith(width: available));
    }
  }
}
```

### 8.5 CellResizeController（幅拡張）

```dart
class CellResizeController {
  final DesignEditorController editor;
  const CellResizeController(this.editor);

  void onResizeDrag(DesignNode node, int deltaColumns) {
    final breakpoint = editor.editingBreakpoint;
    final columnCount = editor.previewGridConfig.specs[breakpoint]!.columnCount;
    final siblings = editor.siblingsOf(node);
    final siblingSpanTotal = siblings
        .where((n) => n.id != node.id)
        .map((n) => n.resolveStyle(breakpoint).width)
        .fold(0, (a, b) => a + b);
    final currentStyle = node.resolveStyle(breakpoint);
    final maxWidth = columnCount - siblingSpanTotal;
    final newWidth = (currentStyle.width + deltaColumns).clamp(1, maxWidth);
    editor.updateNodeStyle(node, breakpoint, currentStyle.copyWith(width: newWidth));
  }
}
```

### 8.6 WidgetNameCatalog（アプリ提供の候補一覧）

```dart
class WidgetNameEntry {
  final String name;   // node.nameに書き込む識別子
  final String label;  // 候補一覧の表示名
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

### 8.7 CanvasRowLayout（常に1行・回り込み）

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

### 8.8 DesignCanvas / _CanvasRow / _CanvasCell（公開Widget）

```dart
class DesignCanvas extends StatelessWidget {
  final DesignEditorController controller;
  final WidgetNameCatalog nameCatalog;
  const DesignCanvas({super.key, required this.controller, required this.nameCatalog});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        final columnCount =
            controller.previewGridConfig.specs[controller.editingBreakpoint]!.columnCount;
        final rows = CanvasRowLayout(columnCount: columnCount)
            .layoutRows(controller.document.rootNodes, controller.editingBreakpoint);
        return Column(
          children: rows
              .map((row) => _CanvasRow(nodes: row, controller: controller, nameCatalog: nameCatalog))
              .toList(),
        );
      },
    );
  }
}
```

`_CanvasRow`は`Row`＋`Expanded(flex: width)`で各セルを横並びにし、`DragTarget`/`LongPressDraggable`で移動を、右端の`GestureDetector`で幅拡張を扱う。`_CanvasCell`は`Theme.of(context)`の`colorScheme`/`textTheme`/`dividerColor`のみを使い、独自の配色・テーマを持たない。`WidgetNameCatalog`に`previewBuilder`が登録されていればそれをそのまま描画し、なければ`label`または`name`をテキスト表示する。

## 9. 決定済みの設計判断（経緯）

- `width`は絶対px値ではなく、Breakpointごとの列数を分母とする相対スパン値とする。
- 列数（columnCount）と区分の幅しきい値（minWidth）は、いずれもアプリが`GridConfig`として提供する。ライブラリ内にハードコードしない。
- `styles`の未指定区分はより小さい区分（compact側）を継承する。ただし`compact`自体は省略不可（必須）。
- `runtime`はFlutterの`Widget`型に一切依存しない。実際のWidget構築・グリッド描画は、利用アプリと既存のレスポンシブGridライブラリの責務とする。
- `name`が`null`かつ`children`が空のノードは「何も描画しない空きセル（オフセット）」を表す。モデルへの新規フィールド追加は不要。
- エディタのセル移動は、同じ親内の並び替えだけでなく、別の親（コンテナ）への移動も許容する。
- セルの`name`入力は自由入力ではなく、アプリが提供する`WidgetNameCatalog`からの選択式とし、誤字を防止する。
- エディタのUndo/Redoは、`DesignJsonCodec`によるJSON文字列スナップショット方式で実装する。
- `lib/screen_designer.dart`（全体一括export）は用意せず、`model.dart`/`grid.dart`/`runtime.dart`/`editor.dart`の4バレルに層を分離する。

## 10. 未着手・今後の検討事項

- `node_property_panel.dart`の具体UI（Breakpoint切り替えタブ、継承状態の表示・「継承に戻す」操作）
- `GridConfig`の`BreakpointSpec`に対するバリデーション（`minWidth`の重複・逆転チェックなど）
- スキーマバージョンが上がった場合のマイグレーション処理（`DesignJsonCodec._assertSupportedVersion`内に実装予定の箇所）
- ドラッグ操作の開始トリガー（現在は`LongPressDraggable`。専用ドラッグハンドルへの変更も検討可）
