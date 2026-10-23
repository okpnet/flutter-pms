# flgtable_lib の使い方

```dart
import 'package:flgtable_lib/flgtable_lib.dart';

// 祖先に ProviderScope が必要(ログは loggerProvider 経由)
FlgTable<User>(
  columns: [
    ColumnDefinition<User>(key: 'id', label: 'ID', getter: (u) => '${u.id}', type: ColumnType.number),
    ColumnDefinition<User>(
      key: 'name',
      label: '名前',
      getter: (u) => u.name,
      setter: (u, v) { u.name = v; return true; }, // セル編集に使う。変換できなければ false
    ),
  ],
  items: users,                  // または loader: (query) async => LoadResult(...)
  rowKey: (u) => u.id,           // フラグ・選択の同一性判定(省略時は参照)
  config: const TableConfig(sortEnabled: true, filterEnabled: true),
  events: TableEvents<User>(onAfterDelete: (u) => repo.remove(u)),
)
```

## 基本
- 列幅 `width` 未指定は20文字分。`TableConfig(rowHeight: ...)` で行高。長い文字列は折り返さず省略表示。
- セル表示は `CellRenderer<T>` 実装または `BuilderCellRenderer` を `renderer:` に渡す。取得デリゲートが例外を投げたセルは `defaultValue`。
- 列の合計が親より広いと横スクロール(スクロールバー常時表示)、狭いと親幅に按分。縦スクロールバーも常時表示。
- セル内の文字: `ColumnDefinition(textAlign:, overflow:)`。`textAlign` 未指定は型で決まる(数値=右寄せ、文字列=左寄せ、日付/時間=センター)。`overflow` は `TextOverflow`(標準 `ellipsis`)。
- 文言は `labels: TableLabels(...)` で全て差し替える(既定は日本語)。動作確認用に `TableLabels.english` だけ同梱。件数の書式は `countTotal: '全{n}件'` のように `{n}` が件数になる。

## 読み込み(`TableConfig.loadMode`)
| 値 | 動き |
|---|---|
| `none` | 初期読み込みのみ。ソート/フィルタはテーブルがメモリ上で行う |
| `pagination` | ページネーションパネル。総ページ数 = フィルタ件数 ÷ `pageSize` |
| `infiniteScroll` | 最後尾までスクロールすると追加読み込み |

`loader` は `LoadQuery(start, count, filters, sort)` を受け取り、`LoadResult(items, totalCount, filteredCount, start, count)` を返す。`pagination`/`infiniteScroll` のとき、ソート・フィルタ・ページ変更のたびに呼ばれる。`filteredCount`(フィルタ後件数)はローダーが返す。`items` 渡しでも同じ方式をメモリ上で行う。

ページネーションの部品は `pagination: PaginationBuilders(previous:, next:, page:)` で差し替え、表示桁数は `paginationDigits`(既定10)。

## ソート・フィルタ
- `sortEnabled`/`filterEnabled` + 列の `sortable`/`filterable`(列は標準で有効。`filterable: false` の列はフィルタのポップアップが開かず、`sortable: false` の列はタップしてもソートしない。モバイルの検索/並び替えバーにも出ない)。見出しのタップでソート(昇順⇔降順)、見出しの右クリック/長押しでフィルタ編集ポップアップ。
- 同じ列に複数の条件を指定できる(ポップアップの「条件を追加」)。条件同士(列間・同じ列内)はAND。見出しのフィルタアイコンの右に、その列の条件数を表示する。
- フィルタは大文字小文字は区別しない。`LIKE` は `%`(任意の文字列)と `_`(任意の1文字)。値は型(`ColumnType`)に従って数値/時間へ変換する。IN/NOT IN はカンマ区切り。
- 初期値は `initialSort`/`initialFilters`。アプリからは `FlgTableController.setSort/setFilters`。

## 行操作・イベント
- `rowSelection`(`none/single/multiple`)、`cellSelection`、`rowActionsEnabled`(右クリックでメニュー、タッチは右スライドで行内ボタン、長押しでメニュー)。
- 削除は `onBeforeDelete`(`cancel = true` で中止) → テーブルの行を削除 → `onAfterDelete`。データの削除はアプリ側で行う。
- フラグは `rowKey` の集合で保持し、先頭に固定表示。上限は `flagLimit`(省略時 `pageSize`)で、超えると `onFlagLimitExceeded`。
- セル編集: 選択済みセルの再タップ/Enter で開始、Enter/フォーカス喪失で確定、Esc で取消。確定後 `onCellChanged`。
- ダブルクリック/ロングタップは `onRowActivated`。

## ドラッグドロップ
`dragEnabled: true`。型 `T` が同じ(`T` が Map のときはキーも一致)テーブル間で移動できる。移動元の行は表示から外れる(データの更新はアプリ側)。同一テーブルの並び替えは、ソート/フィルタ/グループがなく、渡した `items` が変更可能なときだけ元のリストの並びも入れ替える。`onBeforeDrop`(キャンセル可)/`onAfterDrop`/`onDragOver` を通知。

## グルーピング・子テーブル・列固定
- `groupColumnKeys: ['city']`(選択順)。グループの先頭行のみ値を表示し、行頭のアイコン(行高の60%)で展開/縮小。ページ切替で展開状態は保持しない。
- `childTable: ChildTableDefinition<T, C>(arrayGetter:, columns:)`。行頭のアイコンで展開(1階層のみ)。
- `frozenColumnKey: 'id'`。そのキーを含む左側を固定(モバイル表示を除く)。

## モバイル表示
`mobileBuilder: (context, item) => ...` を渡すと、`view_responsiveness` の `MediaBreakPoint.mobile`(`ResponsiveScope` があればその値、なければ画面幅)のときにタイル表示になり、上部に検索・並び替えバーが出る。

## CSV
```dart
final controller = FlgTableController<User>();
FlgTable<User>(controller: controller, ...);
final csv = controller.exportCsv(); // UTF-8 BOM付き文字列(CRLF・カンマ区切り)。保存はアプリ側
```

## ローディング
`loadingKind`(`overlay/header/footer`、既定 header)。サークルは `loadingIndicator:` で差し替え。header/footer のメッセージ+サークルの左右位置は `loadingAlignment`(`left`(標準)/`center`/`right`)。

## 件数表示
`countItems` を指定したときだけ表示する(null は非表示)。

```dart
TableConfig(
  countItems: [CountItem.total, CountItem.filtered, CountItem.loaded],
  countPosition: CountPosition.header,          // header(標準)/footer/none
  countAlignment: HorizontalPlacement.right,    // left/center/right(標準)
  countDirection: CountDirection.horizontal,    // horizontal(標準)/vertical
  countHorizontalOrder: [CountItem.total, CountItem.filtered, CountItem.loaded], // 標準の順
  countVerticalOrder: [CountItem.loaded, CountItem.total],                       // 縦並びの順
)
```
- `total`=全N件(ローダーの `totalCount`、`items` 渡しは `items` の件数)、`filtered`=フィルタ適用N件(ローダーの `filteredCount`)、`loaded`=読込N件(読み込み済みの件数)。横並びはスペース区切り。
- ツリー(`TreeTable`)にも同じ設定で使える。ツリーでは、`total`=ローダーの全件数(削除・取り消しで増減)、`filtered`=フィルタ有効時は階層に関係なく合致した件数(無効時は全件と同じ)、`loaded`=木に読み込み済みの行数(トップと展開で読み込んだ子。縮小中の子も含む)。

## 行操作(右クリック/右スライド)
`TableConfig(rowActionsEnabled: true)` のとき有効。画面サイズで切り替わる。
- PC: 右クリックのコンテキストメニュー(削除・フラグ・上へ・下へ)。右スライドは使わない。
- モバイル/タブレット: 行を右にスライドすると、行の高さと同じ大きさの正方形のタイル(ゴミ箱=削除、旗=フラグ)が現れる。行が低いときはタッチの最小サイズ(40)になる。左スライドか行のタップで閉じる。色はテーマの `error`(削除)・`primary`(フラグ)。上下移動はメニューのみ。

## CSV出力の可否
`ColumnDefinition(exportable: false)` の列は、表示していても出力しない(標準は true)。非表示の列も出力しない。

## 取り消し/やり直し
セル編集・削除・フラグ・上下移動/ドロップによる並び替え(ツリーは親の変更も)が対象。

```dart
final controller = FlgTableController<User>();
FlgTable<User>(
  controller: controller,
  config: const TableConfig(undoLimit: 100), // undoEnabled: false で無効
  events: TableEvents<User>(
    // データの実体はアプリ側。通知を受けて元に戻す(進める)
    onUndone: (e) => repo.apply(e.operation, e.item, column: e.columnKey, value: e.value, parent: e.parent),
    onRedone: (e) => repo.apply(e.operation, e.item, column: e.columnKey, value: e.value, parent: e.parent),
  ),
  // undoStack: sharedStack, // 複数の画面で履歴を共有するとき(IUndoStack)
  ...
);
controller.undo(); controller.redo(); // canUndo / canRedo
```
- キーボードは Ctrl+Z(取り消し)、Ctrl+Y または Ctrl+Shift+Z(やり直し)。セル編集中は入力欄が優先。
- 再読み込みでテーブルが持つ履歴は消える(渡した `undoStack` は消さない)。
- テーブル間のドロップは対象外。

## ツリー(`tree_table_lib.dart`)
```dart
import 'package:flgtable_lib/tree_table_lib.dart'; // 通常のテーブルの機能も使える

final source = StaticTreeSource<Org>(   // メモリ上のデータ向けの読み込みと循環判定
  items: orgs, columns: columns,
  key: (o) => o.id, parentKey: (o) => o.parent,
);
TreeTable<Org>(
  columns: columns,
  treeLoader: source.loader,            // 外部読み込みは TreeChildrenLoader を実装する
  rowKey: (o) => o.id,                  // 必須
  cycleChecker: source.cycleChecker,    // フィルタ中のドラッグドロップを許すとき
  treeConfig: const TreeConfig(
    indentChars: 2,                     // 1レベルのインデント(文字数、1以上)
    showLines: true,
    lineStyle: TreeLineStyle.solid,     // solid/dashed/dotted
    lineWidth: null,                    // null はテーマに従う
    childCountColumnKey: null,          // 子の数の列。null は内部の列(標準1)
  ),
  config: const TableConfig(pageSize: 50, dragEnabled: true), // pageSize=1レベルの最大行数
  events: TableEvents<Org>(
    onBeforeParentChange: (e) { /* e.cancel = true で中止 */ },
    onAfterParentChange: (e) => repo.setParent(e.item, e.newParent), // データの更新はアプリ側
  ),
);
```
- 子は展開したときだけ `treeLoader` で読み込む。`LoadResult.filteredCount` はその親の子の総数。最大行数を超えると `もっと読み込む` 行が出る。
- アイコン: `▶`縮小、`▼`展開、`▷`子なし。読み込み中はサークル。
- ドラッグドロップ: 行の左端付近=ドロップ先と同じレベル、それ以外=ドロップ先の子。自分の子孫の上へは移動できない(循環)。フィルタ中は `cycleChecker` がないとドラッグできない。最終的な循環の検証はアプリ(データ側)で行う。
- フィルタ有効時は、階層に関係なく合致した行が全てトップノードになる(ローダーには `flatten: true` で依頼)。
- 設定は `TreeConfig.toJson()` / `fromJson()` でシリアライズできる。

## 設定のシリアライズ
`TableConfig.toJson()` / `TableConfig.fromJson(json)`、`TreeConfig` も同様。欠けた値・不正な値は標準値になる。
