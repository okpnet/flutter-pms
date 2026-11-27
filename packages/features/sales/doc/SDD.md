# sales ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

sales: 営業 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/sales` |
| Dart ファイル(生成物を除く) | 9 |
| `lib/src` の分け方 | `dashboard(1)`、`entities(3)`、`graphql(1)`、`i18n(1)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `salesRepositories` | 関数 | 営業の実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/sales_repositories.dart` |
| `SalesModule` | クラス | 営業をアプリへ組み込むための口。 | `lib/src/sales_module.dart` |
| `SalesRecordMetricSource` | クラス | 売り上げ実績。主値は出荷済みの金額の合計(円)、内訳は受注金額と数量。 | `lib/src/dashboard/sales_metric_sources.dart` |
| `ShippingOrderStatusMetricSource` | クラス | 出荷予定受注実績状況。主値は出荷残の数量の合計、内訳は予定・出荷済みの数量と金額。 | `lib/src/dashboard/sales_metric_sources.dart` |
| `ShippingComplianceMetricSource` | クラス | 出荷納期遵守状況。主値は遵守率(%。完了した分のうちの遵守)、内訳は遵守・遅延・期限超過・未完了の件数。 | `lib/src/dashboard/sales_metric_sources.dart` |
| `salesMetricSources` | 関数 | アプリが`metricSourcesProvider`へ差し込む、営業の集計値の元。 | `lib/src/dashboard/sales_metric_sources.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/sales_repositories.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `quality`、`app_shell`、`feature_shared`、`entity_screens`、`baton_lib`、`data_strategist`、`flgtable_lib`、`logger_provider`、`dashboard_container`、`pms_graphql`、`sales_model`
- テスト用: `theme_lib`、`data_test_harness`
- 利用元: `pms_app`(アプリ)、`production_plan/example`(example)、`production_process/example`(example)、`quality/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 配送区分: 共有プロジェクト `shared_master` が持つ(購買と共通)
- **構成**: | 種別 | ファイル | 内容 |
- **参照するモデル**: `packages/model_providers/*_model/gql/` の `sales/order.yaml` を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う(顧客・利害関係者は `shared_master`)。
- **実装の指針**: 他の機能の画面は `xxx_api.dart` の型だけを使う。遷移・連携は `baton_lib` の `Destination` / `Command` で行い、文字列のパスを公開しない。`lib/src` を直接 import しない。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **取得元(GraphQL 版)**: `lib/src/graphql/sales_repositories.dart` の `salesRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、受注(`order`)・受注明細(`orderdetail`)・出荷予定(`shipplan`。DB の出荷オーダー)・出荷指示(`shi…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、顧客台帳・顧客の選択を開く。画面を足したら`example/lib/main.dart`の`entries`に1行足す。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/complaint_action_test.dart`(2)、`test/order_detail_currency_test.dart`(3)、`test/sales_connection_test.dart`(6)、`test/sales_entities_test.dart`(4)、`test/sales_metric_sources_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
