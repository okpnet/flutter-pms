# shared_master ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

shared_master: 共有マスタ(配送区分など複数のメニューにまたがるマスタ)の実装。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/shared_master` |
| Dart ファイル(生成物を除く) | 22 |
| `lib/src` の分け方 | `entities(3)`、`graphql(1)`、`i18n(1)`、`shipping_kind(11)`、`stakeholder(2)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `sharedMasterRepositories` | 関数 | 共有マスタの実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/shared_master_repositories.dart` |
| `SharedMasterModule` | クラス | 共有マスタをアプリへ組み込むための口。区分(配送区分・利害関係者など)のモジュールを束ねる。 | `lib/src/shared_master_module.dart` |
| `FindShippingKindNameCommand` | クラス | 配送区分の名称を id から取得する。見つからなければ null。 | `lib/src/shipping_kind/shipping_kind_commands.dart` |
| `ShippingKindListDestination` | クラス | 配送区分台帳へ。 | `lib/src/shipping_kind/shipping_kind_destinations.dart` |
| `ShippingKindEditDestination` | クラス | 配送区分の編集へ。[id] が null のときは新規登録。 | `lib/src/shipping_kind/shipping_kind_destinations.dart` |
| `ShippingKindPickerDestination` | クラス | 配送区分を1件選んで、その id を返す(キャンセル時は null)。 | `lib/src/shipping_kind/shipping_kind_destinations.dart` |
| `stakeholderEditDestination` | 関数 | 利害関係者の編集へ。[id] が null なら新規。[role] の台帳から開くときは、その役割の | `lib/src/stakeholder/stakeholder_destinations.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/shared_master_repositories.dart` |
| `SharedMasterModule` | Composite(同じ [FeatureModule] の窓口で区分のモジュールを1つに見せる) | `lib/src/shared_master_module.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `quality`、`loadux_lib`、`localized_values`、`app_shell`、`feature_shared`、`entity_screens`、`baton_lib`、`data_strategist`、`flgtable_lib`、`logger_provider`、`pms_graphql`、`shared_master_model`
- テスト用: `data_test_harness`、`theme_lib`
- 利用元: `pms_app`(アプリ)、`item/example`(example)、`production_plan/example`(example)、`production_process/example`(example)、`purchasing/example`(example)、`quality/example`(example)、`sales/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`、`uuid`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 配送区分 [テーブル構造] / [編集構造]。営業と購買の両方のメニューから開く(同じ画面を共有し、重複実装しない)。`lib/src/shipping_kind/` に実装済み
- **構成**: | 種別 | ファイル | 内容 |
- **参照するモデル**: `packages/model_providers/*_model/gql/` の `sales/shipping_kind.yaml` を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `SharedMasterModule implements FeatureModule` を `lib/src/shared_master_module.dart` に置き、実装の入口 `lib/shared_master.dart`(アプリだけが読み込む)から `SharedMasterModule` だけを公開する。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、配送区分台帳・登録・顧客台帳・外部供給者台帳を開く(`example`の遷移は CommandBus を通さなくてよい)。画面を足したら`example/lib/main.dart`の`entries`に1行足す。
- **取得元(GraphQL 版)**: `lib/src/graphql/shared_master_repositories.dart` の `sharedMasterRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、利害関係者(`stakeholder`)の取得元を作る。アプリ(`pms_app` の `graphql_o…

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/complaint_action_test.dart`(2)、`test/shared_master_connection_test.dart`(3)、`test/shared_master_entities_test.dart`(4)、`test/shipping_kind_test.dart`(14)、`test/stakeholder_new_defaults_test.dart`(3)、`test/stakeholder_picker_test.dart`(2)、`test/stakeholder_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
