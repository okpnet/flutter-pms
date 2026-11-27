# purchasing ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

purchasing: 購買 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/purchasing` |
| Dart ファイル(生成物を除く) | 9 |
| `lib/src` の分け方 | `dashboard(1)`、`entities(3)`、`graphql(1)`、`i18n(1)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `purchasingRepositories` | 関数 | 購買の実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/purchasing_repositories.dart` |
| `PurchasingModule` | クラス | 購買をアプリへ組み込むための口。 | `lib/src/purchasing_module.dart` |
| `PurchaseAmountMetricSource` | クラス | 発注金額。主値は発注金額の合計(円)、内訳は入荷金額と発注・入荷の数量。 | `lib/src/dashboard/purchasing_metric_sources.dart` |
| `PurchaseComplianceMetricSource` | クラス | 発注納期遵守状況。主値は遵守率(%。完了した分のうちの遵守)、内訳は遵守・遅延・期限超過・未完了の件数。 | `lib/src/dashboard/purchasing_metric_sources.dart` |
| `purchasingMetricSources` | 関数 | アプリが`metricSourcesProvider`へ差し込む、購買の集計値の元。 | `lib/src/dashboard/purchasing_metric_sources.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/purchasing_repositories.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `quality`、`dashboard_container`、`data_strategist`、`pms_graphql`、`purchasing_model`、`feature_shared`、`entity_screens`
- テスト用: `data_test_harness`
- 利用元: `pms_app`(アプリ)、`production_plan/example`(example)、`quality/example`(example)
- 外部パッケージ: `graphql`、`flutter_riverpod`、`go_router`、`slang`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 配送区分: 共有プロジェクト `shared_master` が持つ(営業と共通。重複実装しない)
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/purchasing_module.dart` に置き、公開は `lib/purchasing.dart` のバレルから `PurchasingModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組…
- **品目仕入先**: 購買メニューの「サプライヤー」の次に「品目仕入先」を出す。実体は`item`の`itemsupplier`(`item/CLAUDE.md`)。購入品にチェックの入った品目の表の各行に、サプライヤーの表(サプライヤー・デリバリータイム(日)・最小発注ロット・単価(円)・言い値区分。言い値のときは単価に「言い値（都度確認）」)を入れる(表の中の表。行ごとに開閉…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **取得元(GraphQL 版)**: `lib/src/graphql/purchasing_repositories.dart` の `purchasingRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、発注(`purchase`)・発注明細(`purdetail`)の取得元を作る。アプリ(`pms_app` の `gr…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/complaint_action_test.dart`(2)、`test/purchase_detail_currency_test.dart`(2)、`test/purchasing_connection_test.dart`(5)、`test/purchasing_entities_test.dart`(4)、`test/purchasing_metric_sources_test.dart`(2)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
