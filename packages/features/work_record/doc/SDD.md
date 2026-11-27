# work_record ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

work_record: 作業実績 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/work_record` |
| Dart ファイル(生成物を除く) | 18 |
| `lib/src` の分け方 | `entities(3)`、`graphql(3)`、`i18n(1)`、`pick(1)`、`register(7)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `workRecordRepositories` | 関数 | 作業実績の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/work_record_repositories.dart` |
| `WorkRecordModule` | クラス | 作業実績をアプリへ組み込むための口。 | `lib/src/work_record_module.dart` |
| `GraphqlWorkRegisterGateway` | クラス | 実績登録の取得元(GraphQL 版)。 | `lib/src/graphql/graphql_register_gateway.dart` |
| `InMemoryWorkRegisterGateway` | クラス | メモリ上のサンプルの取得元(Fake)。登録の規則(取り出せる数量・差の扱い・払出)を、DB の関数と同じに動かす。 | `lib/src/register/in_memory_register_gateway.dart` |
| `IWorkRegisterGateway` | インターフェイス | 実績登録の取得元と登録の窓口(Strategy)。 | `lib/src/register/register_gateway.dart` |
| `workRegisterGatewayProvider` | Riverpod プロバイダ | 実績登録の取得元。アプリ・テストが差し替える。 | `lib/src/register/register_gateway.dart` |
| `WorkRegisterDestination` | クラス | 実績登録の画面へ(生産計画が中心。計画の工程計画明細と対の実績を、開始・終了で登録する)。 | `lib/src/register/register_destinations.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `GraphqlWorkRegisterGateway` | Adapter(生成されたモデルを、画面の窓口 [IWorkRegisterGateway] へ適合させる) | `lib/src/graphql/graphql_register_gateway.dart` |
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/pick_repositories.dart` |
| `ContainerPickerPage` | Adapter(取得元のコンテナを、台帳の行に変える) | `lib/src/register/container_picker_page.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `feature_shared`、`entity_screens`、`app_shell`、`flgtable_lib`、`loadux_lib`、`data_strategist`、`pms_graphql`、`work_record_model`
- テスト用: `logger_provider`、`theme_lib`、`data_test_harness`
- 利用元: `pms_app`(アプリ)、`barcode_entry`(パッケージ)、`plan_change/example`(example)、`production_plan/example`(example)、`purchasing/example`(example)、`quality/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: コンテナ: コンテナ体系 [ツリー構造]
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/work_record_module.dart` に置き、公開は `lib/work_record.dart` のバレルから `WorkRecordModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足し…
- **実績登録(`/wr`。メニューの先頭。`WorkRegisterDestination`)**: 生産計画(工程計画)が中心の画面(画面案 `pms_design.md` の 6.5)。`lib/src/register/`: `register_page.dart`(画面)・`register_dialogs.dart`(開始・終了・登録結果のダイアログ)・`container_picker_page.dart`(コンテナの選択)・`register_…
- **ビジター品目(読み取り専用)**: MRP のビジター品目(`mrpvisiter`、`v_mrp_visiter_item`)は、読み取り専用(`viewOnly`)の台帳として出す。項目は品目・品目数・完了・数量。
- **選択用の実体(作業実績・ロット。手書き)**: 異常の登録(`quality`。Issue 20261123_0001 C-1)などで、対象の作業実績・ロットを選ぶための、読み取り専用の台帳(`lib/src/pick/pick_definitions.dart`。`inMenu: false`)。**キーは契約**: 作業実績 `workrecpick`・ロット `lotpick`(他の機能は `Ent…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/work_record_repositories.dart` の `workRecordRepositories(GraphQLClient)` が、コンテナ(`container`)・成績書(`certificate`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が `…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/pick_test.dart`(3)、`test/register_connection_test.dart`(2)、`test/register_gateway_test.dart`(10)、`test/register_page_test.dart`(9)、`test/work_record_connection_test.dart`(2)、`test/work_record_entities_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
