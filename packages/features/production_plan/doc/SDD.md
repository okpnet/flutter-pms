# production_plan ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

production_plan: 生産計画 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/production_plan` |
| Dart ファイル(生成物を除く) | 16 |
| `lib/src` の分け方 | `dashboard(1)`、`entities(3)`、`graphql(1)`、`i18n(1)`、`mrp(6)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `productionPlanRepositories` | 関数 | 生産計画の実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/production_plan_repositories.dart` |
| `GraphqlMrpGateway` | クラス | MRP の窓口の実体(GraphQL)。メソッド `mrpExecute`(DB 関数 `tests.mrp_execute`)で計算し、 | `lib/src/mrp/graphql_mrp_gateway.dart` |
| `IMrpGateway` | インターフェイス | MRP の実行の窓口。実体(DB 関数 `tests.mrp_execute` を呼ぶ GraphQL のメソッド `mrpExecute` と、 | `lib/src/mrp/mrp_gateway.dart` |
| `UnavailableMrpGateway` | クラス | 実体が差し込まれていないときの窓口。実行すると失敗にする(確かめていない結果を出さないため)。 | `lib/src/mrp/mrp_gateway.dart` |
| `DemoMrpGateway` | クラス | 確認用の窓口(example・テスト用)。決めた時間だけ待ち、決めた結果または失敗を返す。 | `lib/src/mrp/mrp_gateway.dart` |
| `mrpGatewayProvider` | Riverpod プロバイダ | MRP の窓口。既定は実体が無い([UnavailableMrpGateway])。アプリが差し込む。 | `lib/src/mrp/mrp_gateway.dart` |
| `mrpStaffIdProvider` | Riverpod プロバイダ | MRP を実行する担当者の識別子(`p_staff_id`)。ログインの導入後に、ログインした担当者の id を差し込む。 | `lib/src/mrp/mrp_gateway.dart` |
| `MrpMode` | 列挙型 | MRP(資材所要計算)の実行区分。DB 関数 `tests.mrp_execute` の `p_mode`。 | `lib/src/mrp/mrp_models.dart` |
| `MrpSuggestion` | クラス | MRP の提案1件(DB のビュー `v_mrp_suggestion`)。 | `lib/src/mrp/mrp_models.dart` |
| `MrpRunResult` | クラス | MRP の実行結果(`trans_mrp_run` と、その提案の一覧)。 | `lib/src/mrp/mrp_models.dart` |
| `MrpFailure` | クラス | MRP の実行の失敗。[code] はエラーコード(問い合わせ用に画面へ小さく添える)。 | `lib/src/mrp/mrp_models.dart` |
| `MrpIssue` | クラス | MRP の前の調査の結果の 1 件(品目のマスタの不備。DB の `mrp_check_items`)。 | `lib/src/mrp/mrp_models.dart` |
| `ProductionPlanModule` | クラス | 生産計画をアプリへ組み込むための口。実体の画面(資材計画ほか)と、資材所要計算(MRP)を束ねる。 | `lib/src/production_plan_module.dart` |
| `MrpDestination` | クラス | 資材所要計算(MRP)の画面へ。 | `lib/src/mrp/mrp_destinations.dart` |
| `WorkPlanComplianceMetricSource` | クラス | 生産計画納期遵守状況。主値は遵守率(%。完了した分(遵守 + 遅延)のうちの遵守)、 | `lib/src/dashboard/work_plan_compliance_metric_source.dart` |
| `productionPlanMetricSources` | 関数 | アプリが`metricSourcesProvider`へ差し込む、生産計画の集計値の元。 | `lib/src/dashboard/work_plan_compliance_metric_source.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/production_plan_repositories.dart` |
| `GraphqlMrpGateway` | Adapter(GraphQL のモデルを窓口 [IMrpGateway] へ適合させる) | `lib/src/mrp/graphql_mrp_gateway.dart` |
| `UnavailableMrpGateway` | Null Object(安全側の既定) | `lib/src/mrp/mrp_gateway.dart` |
| `ProductionPlanModule` | Composite(同じ [FeatureModule] の窓口で区分のモジュールを1つに見せる) | `lib/src/production_plan_module.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `feature_shared`、`baton_lib`、`app_shell`、`flgtable_lib`、`logger_provider`、`dashboard_container`、`data_strategist`、`pms_graphql`、`production_plan_model`、`entity_screens`
- テスト用: `theme_lib`、`data_test_harness`
- 利用元: `pms_app`(アプリ)、`plan_change`(パッケージ)、`plan_change/example`(example)、`purchasing/example`(example)、`work_record/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 資材所要量計画: 資材計画台帳
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `ProductionPlanModule`(`lib/src/production_plan_module.dart`)は、実体の画面(生成。`ProductionPlanEntityModule`)と資材所要計算(`lib/src/mrp/`)を束ねる(Composite)。公開は `lib/production_plan.dart` のバレルから、`P…
- **資材所要計算の結果(読み取り専用)**: 資材所要計算の結果は、読み取り専用(`viewOnly`)の台帳として「生産計画」のメニューに出す: 要判断の提案(`mrppending`。ビュー `v_mrp_suggestion` の `run_open` かつ `undecided` で絞る。対象・動きは boolean の列。置き換え前は `v_mrp_pending_suggestion`)、発…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **取得元(GraphQL 版)**: `lib/src/graphql/production_plan_repositories.dart` の `productionPlanRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、資材計画(`resplan`)・生産計画(`opsplan`)の取得元を作る。アプリ(`pms_ap…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/graphql_mrp_gateway_test.dart`(16)、`test/mrp_test.dart`(23)、`test/production_plan_connection_test.dart`(4)、`test/production_plan_entities_test.dart`(4)、`test/work_plan_compliance_metric_source_test.dart`(3)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
