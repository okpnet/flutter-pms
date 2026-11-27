# flgtable_lib ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

flgtable_lib: `table_lib`ライブラリは、データを列と行のテーブル表示を行うFlutterライブラリです。既存のテーマをそのまま使用でき、多言語、ドラッグドロップに対応しています。ドラッグドロップはテーブル間であっても同じクラスインスタンスであればドロップできます。例えば、ある子テーブルが同じクラスをもつ違うテーブル同士でドラッグドロップした場合、子テーブル同士の移動が可能です。 モバイル、タッチデバイスに対応でき、タップやスライドによる操作ができます。また、レコードフラグ機能があるので、DBから読み込んでも、フラグレコードだけは表示され続けます。

- 層: ui(UI 基盤)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/ui/flgtable_lib` |
| Dart ファイル(生成物を除く) | 35 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

公開している型・関数は無い。
## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `CellContext` | Parameter Object | `lib/cell/cell_context.dart` |
| `CellRenderer` | Strategy | `lib/cell/cell_renderer.dart` |
| `ChildTableDefinition` | Factory Method(子テーブルの生成を定義側に委ねる) | `lib/column/child_table_definition.dart` |
|  | Adapter(テーブルの条件 -> query_builder の式) | `lib/data/condition_expressions.dart` |
| `ConditionMatcher` | Strategy(列の型ごとの比較) | `lib/data/condition_matcher.dart` |
| `TableEvents` | Observer(コールバック登録) | `lib/event/table_events.dart` |
| `TableLabels` | Value Object | `lib/label/table_labels.dart` |
| `FlgTableController` | Bridge(操作の窓口と実装の分離) | `lib/table/table_controller.dart` |
| `TableWidgetBase` | Template Method(描画・操作の流れは共通の State が持ち、 | `lib/table/table_core.dart` |
| `_TableCommand` | Command | `lib/table/table_core.dart` |
| `PaginationBuilders` | Strategy(部品ごとの描画方法) | `lib/view/pagination_panel.dart` |
| `SlideActionRow` | Decorator(行に操作タイルを重ねる) | `lib/view/slide_action_row.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `loadux_lib`、`query_builder`、`undo_redo`、`logger_provider`、`theme_lib`、`view_responsiveness`
- 利用元: `organization`(パッケージ)、`production_plan`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`work_record`(パッケージ)、`entity_screens`(パッケージ)
- 外部パッケージ: `flutter_riverpod`

## 6. 設計上の決定(`CLAUDE.md` より)

- **概要**: `table_lib`ライブラリは、データを列と行のテーブル表示を行うFlutterライブラリです。既存のテーマをそのまま使用でき、多言語、ドラッグドロップに対応しています。ドラッグドロップはテーブル間であっても同じクラスインスタンスであればドロップできます。例えば、ある子テーブルが同じクラスをもつ違うテーブル同士でドラッグドロップした場合、子テーブル同士の…
- **機能**: ジェネリックなテーブル型
- **ツリー**: `tree_table_lib.dart`(`TreeTable`)として、ツリー構造を扱う。通常のテーブルの機能(列・設定・イベント・ラベル・取り消しなど)は共通の部分を継承(深さ1)して使い、1行のインポートで両方使える。継承の深さは2までとする。ツリーでは、ページネーション・無限スクロール・グルーピング・子テーブル・モバイルのタイル・行の上下移動・フラ…
- **使用ライブラリ**: `flutter-pms\packages\ui\theme_lib`:使用するテーマの取り出し(余白`SpaceField`、文字スタイル`textStyleMode`など)。テーマに登録がない場合は標準値で表示する。
- **設定のシリアライズ**: テーブルの設定(`TableConfig`)、ツリーの設定(`TreeConfig`)はJSONにシリアライズ(`toJson`)、デシリアライズ(`fromJson`)できる。欠けた値、不正な値は標準値にする。
- **example**: `example/`に確認用アプリを置き、実装済みの機能の外観と動作を確認する。機能を追加したら、exampleとそのテスト(`example/test`)にも追加する。
- **query_builderとの連携**: 読み込みデリゲートへ渡す`LoadQuery`のフィルタ・ソートは、`query_builder`の式にできる(`LoadQuery.predicate`・`LoadQuery.orders`)。データ取得元は`data_strategist`の`IDataRepository.find`に渡す。

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/condition_expressions_test.dart`(5)、`test/condition_test.dart`(11)、`test/flgtable_lib_test.dart`(3)、`test/row_actions_test.dart`(9)、`test/table_features_test.dart`(40)、`test/tree_table_test.dart`(42)、`test/undo_test.dart`(9)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
