# production_plan_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

production_plan_model: production_plan 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/production_plan_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`production_plan`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)

### 2.2 依存先(ワークスペース内)

`pms_graphql`

テスト用: `data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、画面ごとの GraphQL の読み込み・登録・更新・関数の呼び出しを、次のとおり提供する(`gql/*.yaml` が定義。型は生成する)。

| ID | 名前 | 種類 | 対象 | 要求 |
|---|---|---|---|---|
| FR-01 | `MrpRunPage` | 読み込み | `v_mrp_run` | MRP実行(v_mrp_run。状態・実行区分は boolean の列。整数の status・run_mode は出さない) |
| FR-02 | `MrpSuggestionPage` | 読み込み | `v_mrp_suggestion` | MRP提案(v_mrp_suggestion。種類・判断・計画区分は boolean の列。kind・decision・plan_kind は出さない) |
| FR-03 | `MrpSuggestionTaskPage` | 読み込み | `trans_mrp_suggestion_task` | MRP提案工程(trans_mrp_suggestion_task) |
| FR-04 | `MrpPeggingPage` | 読み込み | `trans_mrp_pegging` | MRP引当(trans_mrp_pegging。需要の提案と供給の対応) |
| FR-05 | `MrpLoadPage` | 読み込み | `trans_mrp_load` | MRP設備負荷(trans_mrp_load。設備×日) |
| FR-06 | `MrpPurchasePlanPage` | 読み込み | `v_mrp_purchase_plan` | MRPの発注予定(v_mrp_purchase_plan。1行は実行×区分×仕入先×発注日×納期) |
| FR-07 | `MrpMasterIssuePage` | 読み込み | `v_mrp_master_issue` | MRPのマスタ不備(v_mrp_master_issue) |
| FR-08 | `ResourcePlanCoveragePage` | 読み込み | `v_resource_plan_coverage` | 資材計画の充足状況(v_resource_plan_coverage。1行は資材計画) |
| FR-09 | `OrderDetailPlanningPage` | 読み込み | `v_order_detail_planning` | ビューは 2026-11-18 に追加(DB への適用と、本家スキーマの再取得のあとに生成できる。issue/202611.md#20261118_0001 の G14) |
| FR-10 | `ResourcePlanPageEdit` | 更新 | `trans_resource_plan` | trans_resource_planの書き込み |
| FR-11 | `OperationsPlanPageEdit` | 更新 | `trans_operations_plan` | trans_operations_planの書き込み |
| FR-12 | `WorkPlanPageEdit` | 更新 | `trans_work_plan` | trans_work_planの書き込み |
| FR-13 | `ProductRezPageEdit` | 更新 | `trans_product_rez` | trans_product_rezの書き込み |
| FR-14 | `PurchaseRezPageEdit` | 更新 | `trans_purchase_rez` | trans_purchase_rezの書き込み |
| FR-15 | `OperationsPlanSetStopPageCall` | DB 関数の呼び出し | `operationsPlanSetStop` | 生産計画の停止・再開。打ち切り済みは変えられない |
| FR-16 | `OperationsPlanDiscontinuePageCall` | DB 関数の呼び出し | `operationsPlanDiscontinue` | 生産計画の打ち切り(戻さない)。仕掛品は処置が必要(LotReleasePageCall など) |
| FR-17 | `ResourcePlanPageCreate` | 登録 | `trans_resource_plan` | trans_resource_planの登録(ID・symbol はトリガーが採番する) |
| FR-18 | `OperationsPlanPageCreate` | 登録 | `trans_operations_plan` | trans_operations_planの登録(停止・打ち切りは既定値。操作の DB 関数で変える) |
| FR-19 | `WorkPlanDeliveryCompliancePage` | 読み込み | `v_work_plan_delivery_compliance` | 生産計画納期遵守状況(生産計画明細)(ダッシュボード用。要件20261027_0001) |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `MrpLoadPageFilterSpec` | 抽象クラス |  |
| FA-02 | `MrpMasterIssuePageFilterSpec` | 抽象クラス |  |
| FA-03 | `MrpPeggingPageFilterSpec` | 抽象クラス |  |
| FA-04 | `MrpPurchasePlanPageFilterSpec` | 抽象クラス |  |
| FA-05 | `MrpRunPageFilterSpec` | 抽象クラス |  |
| FA-06 | `MrpSuggestionPageFilterSpec` | 抽象クラス |  |
| FA-07 | `MrpSuggestionTaskPageFilterSpec` | 抽象クラス |  |
| FA-08 | `OperationsPlanPageFilterSpec` | 抽象クラス |  |
| FA-09 | `OrderDetailPlanningPageFilterSpec` | 抽象クラス |  |
| FA-10 | `ProductRezPageFilterSpec` | 抽象クラス |  |
| FA-11 | `PurchaseRezPageFilterSpec` | 抽象クラス |  |
| FA-12 | `ResourcePlanCoveragePageFilterSpec` | 抽象クラス |  |
| FA-13 | `ResourcePlanPageFilterSpec` | 抽象クラス |  |
| FA-14 | `WorkPlanDelayPageFilterSpec` | 抽象クラス |  |
| FA-15 | `WorkPlanDeliveryCompliancePageFilterSpec` | 抽象クラス |  |
| FA-16 | `WorkPlanPageFilterSpec` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/production_plan_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 23 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 3 件、テストケース 23 件。

- `test/operation_call_test.dart`
  - 存在しない生産計画の停止は OPR01
  - 存在しない生産計画の打ち切りは OPR01
- `test/server_read_test.dart`
  - MrpLoadPageRead
  - MrpMasterIssuePageRead
  - MrpPeggingPageRead
  - MrpPurchasePlanPageRead
  - MrpRunPageRead
  - MrpSuggestionPageRead
  - MrpSuggestionTaskPageRead
  - OperationsPlanPageRead
  - OrderDetailPlanningPageRead
  - ProductRezPageRead
  - PurchaseRezPageRead
  - ResourcePlanCoveragePageRead
  - ResourcePlanPageRead
  - WorkPlanDelayPageRead
  - WorkPlanDeliveryCompliancePageRead
  - WorkPlanPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
