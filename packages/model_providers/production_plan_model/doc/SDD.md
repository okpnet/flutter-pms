# production_plan_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

production_plan_model: production_plan 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/production_plan_model` |
| Dart ファイル(生成物を除く) | 17 |
| `lib/src` の分け方 | `contents(16)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `MrpRunPage` | 読み込み | `v_mrp_run` | `gql/mrp.yaml` |
| `MrpSuggestionPage` | 読み込み | `v_mrp_suggestion` | `gql/mrp.yaml` |
| `MrpSuggestionTaskPage` | 読み込み | `trans_mrp_suggestion_task` | `gql/mrp.yaml` |
| `MrpPeggingPage` | 読み込み | `trans_mrp_pegging` | `gql/mrp.yaml` |
| `MrpLoadPage` | 読み込み | `trans_mrp_load` | `gql/mrp.yaml` |
| `MrpPurchasePlanPage` | 読み込み | `v_mrp_purchase_plan` | `gql/mrp.yaml` |
| `MrpMasterIssuePage` | 読み込み | `v_mrp_master_issue` | `gql/mrp.yaml` |
| `ResourcePlanCoveragePage` | 読み込み | `v_resource_plan_coverage` | `gql/mrp.yaml` |
| `OrderDetailPlanningPage` | 読み込み | `v_order_detail_planning` | `gql/mrp.yaml` |
| `ResourcePlanPageEdit` | 更新 | `trans_resource_plan` | `gql/plan.yaml` |
| `OperationsPlanPageEdit` | 更新 | `trans_operations_plan` | `gql/plan.yaml` |
| `WorkPlanPageEdit` | 更新 | `trans_work_plan` | `gql/plan.yaml` |
| `ProductRezPageEdit` | 更新 | `trans_product_rez` | `gql/plan.yaml` |
| `PurchaseRezPageEdit` | 更新 | `trans_purchase_rez` | `gql/plan.yaml` |
| `OperationsPlanSetStopPageCall` | DB 関数の呼び出し | `operationsPlanSetStop` | `gql/plan.yaml` |
| `OperationsPlanDiscontinuePageCall` | DB 関数の呼び出し | `operationsPlanDiscontinue` | `gql/plan.yaml` |
| `ResourcePlanPageCreate` | 登録 | `trans_resource_plan` | `gql/plan.yaml` |
| `OperationsPlanPageCreate` | 登録 | `trans_operations_plan` | `gql/plan.yaml` |
| `WorkPlanDeliveryCompliancePage` | 読み込み | `v_work_plan_delivery_compliance` | `gql/work_plan_delivery_compliance.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `MrpLoadPageFilterSpec` | 抽象クラス |  | `lib/src/contents/mrp_load_page_filter_spec.dart` |
| `MrpMasterIssuePageFilterSpec` | 抽象クラス |  | `lib/src/contents/mrp_master_issue_page_filter_spec.dart` |
| `MrpPeggingPageFilterSpec` | 抽象クラス |  | `lib/src/contents/mrp_pegging_page_filter_spec.dart` |
| `MrpPurchasePlanPageFilterSpec` | 抽象クラス |  | `lib/src/contents/mrp_purchase_plan_page_filter_spec.dart` |
| `MrpRunPageFilterSpec` | 抽象クラス |  | `lib/src/contents/mrp_run_page_filter_spec.dart` |
| `MrpSuggestionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/mrp_suggestion_page_filter_spec.dart` |
| `MrpSuggestionTaskPageFilterSpec` | 抽象クラス |  | `lib/src/contents/mrp_suggestion_task_page_filter_spec.dart` |
| `OperationsPlanPageFilterSpec` | 抽象クラス |  | `lib/src/contents/operations_plan_page_filter_spec.dart` |
| `OrderDetailPlanningPageFilterSpec` | 抽象クラス |  | `lib/src/contents/order_detail_planning_page_filter_spec.dart` |
| `ProductRezPageFilterSpec` | 抽象クラス |  | `lib/src/contents/product_rez_page_filter_spec.dart` |
| `PurchaseRezPageFilterSpec` | 抽象クラス |  | `lib/src/contents/purchase_rez_page_filter_spec.dart` |
| `ResourcePlanCoveragePageFilterSpec` | 抽象クラス |  | `lib/src/contents/resource_plan_coverage_page_filter_spec.dart` |
| `ResourcePlanPageFilterSpec` | 抽象クラス |  | `lib/src/contents/resource_plan_page_filter_spec.dart` |
| `WorkPlanDelayPageFilterSpec` | 抽象クラス |  | `lib/src/contents/work_plan_delay_page_filter_spec.dart` |
| `WorkPlanDeliveryCompliancePageFilterSpec` | 抽象クラス |  | `lib/src/contents/work_plan_delivery_compliance_page_filter_spec.dart` |
| `WorkPlanPageFilterSpec` | 抽象クラス |  | `lib/src/contents/work_plan_page_filter_spec.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `production_plan`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/filter_spec_roundtrip_test.dart`(0)、`test/operation_call_test.dart`(2)、`test/server_read_test.dart`(21)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
