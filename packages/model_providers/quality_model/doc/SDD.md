# quality_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

quality_model: quality 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/quality_model` |
| Dart ファイル(生成物を除く) | 39 |
| `lib/src` の分け方 | `contents(38)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `AuditStdPageEdit` | 更新 | `mstr_audit_std` | `gql/audit.yaml` |
| `AuditStdCheckitemPageEdit` | 更新 | `mstr_audit_std_checkitem` | `gql/audit.yaml` |
| `AuditPageEdit` | 更新 | `trans_audit` | `gql/audit.yaml` |
| `AuditTeamPageEdit` | 更新 | `trans_audit_team` | `gql/audit.yaml` |
| `AuditMemberPageEdit` | 更新 | `trans_audit_member` | `gql/audit.yaml` |
| `AuditorPageEdit` | 更新 | `trans_auditor` | `gql/audit.yaml` |
| `AuditDetailPage` | 読み込み | `trans_audit_details` | `gql/audit_execution.yaml` |
| `AuditDetailPageEdit` | 更新 | `trans_audit_details` | `gql/audit_execution.yaml` |
| `AuditDetailPageCreate` | 登録 | `trans_audit_details` | `gql/audit_execution.yaml` |
| `AuditItemPage` | 読み込み | `trans_audit_detail_check_items` | `gql/audit_execution.yaml` |
| `AuditItemPageEdit` | 更新 | `trans_audit_detail_check_items` | `gql/audit_execution.yaml` |
| `AuditItemPageCreate` | 登録 | `trans_audit_detail_check_items` | `gql/audit_execution.yaml` |
| `AuditComplaintLinkPageCreate` | 登録 | `trans_audit_complaint` | `gql/audit_execution.yaml` |
| `AuditComplaintLinkPageEdit` | 更新 | `trans_audit_complaint` | `gql/audit_execution.yaml` |
| `AuditTextSavePageCall` | DB 関数の呼び出し | `transTextSave` | `gql/audit_execution.yaml` |
| `AuditLabelSavePageCall` | DB 関数の呼び出し | `transLabelSave` | `gql/audit_execution.yaml` |
| `AuditAssignmentPage` | 読み込み | `v_audit_assignment` | `gql/audit_execution.yaml` |
| `AuditDetailStartPageCall` | DB 関数の呼び出し | `auditDetailStart` | `gql/audit_execution.yaml` |
| `AuditDetailFinishPageCall` | DB 関数の呼び出し | `auditDetailFinish` | `gql/audit_execution.yaml` |
| `AuditComplaintRegisterPageCall` | DB 関数の呼び出し | `auditComplaintRegister` | `gql/audit_execution.yaml` |
| `AuditPlanStdOptionPage` | 読み込み | `mstr_audit_std` | `gql/audit_execution.yaml` |
| `AuditPlanStaffOptionPage` | 読み込み | `info_staff` | `gql/audit_execution.yaml` |
| `AuditNoticePageCall` | DB 関数の呼び出し |  | `gql/audit_execution.yaml` |
| `AuditStdLedgerPageEdit` | 更新 | `mstr_audit_std` | `gql/audit_execution.yaml` |
| `AuditStdLedgerPageCreate` | 登録 | `mstr_audit_std` | `gql/audit_execution.yaml` |
| `AuditStdAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/audit_execution.yaml` |
| `AuditStdTextSavePageCall` | DB 関数の呼び出し | `sharedTextSave` | `gql/audit_execution.yaml` |
| `AuditPlanRegisterPageCall` | DB 関数の呼び出し | `auditPlanRegister` | `gql/audit_execution.yaml` |
| `AuditCheckitemLedgerPage` | 読み込み | `mstr_audit_std_checkitem` | `gql/audit_execution.yaml` |
| `AuditCheckitemLedgerPageEdit` | 更新 | `mstr_audit_std_checkitem` | `gql/audit_execution.yaml` |
| `AuditCheckitemLedgerPageCreate` | 登録 | `mstr_audit_std_checkitem` | `gql/audit_execution.yaml` |
| `ComplaintPageEdit` | 更新 | `trans_complaint` | `gql/complaint.yaml` |
| `ComplaintOrderPageEdit` | 更新 | `trans_complaint_order` | `gql/complaint.yaml` |
| `ComplaintProcessPageEdit` | 更新 | `trans_complaint_process` | `gql/complaint.yaml` |
| `ComplaintEquipmentPageEdit` | 更新 | `trans_complaint_equipment` | `gql/complaint.yaml` |
| `ComplaintReceivePageEdit` | 更新 | `trans_complaint_receive` | `gql/complaint.yaml` |
| `ComplaintStakeholderPageEdit` | 更新 | `trans_complaint_stakeholder` | `gql/complaint.yaml` |
| `ComplaintFilePageEdit` | 更新 | `trans_complaint_file` | `gql/complaint.yaml` |
| `ComplaintVisiterPageEdit` | 更新 | `trans_complaint_visiter` | `gql/complaint.yaml` |
| `ComplaintLabelPageCreate` | 登録 | `trans_label` | `gql/complaint.yaml` |
| `ComplaintLabelValuePageCreate` | 登録 | `trans_label_value` | `gql/complaint.yaml` |
| `ComplaintTextPageCreate` | 登録 | `trans_text` | `gql/complaint.yaml` |
| `ComplaintTextValuePageCreate` | 登録 | `trans_text_value` | `gql/complaint.yaml` |
| `ComplaintPageCreate` | 登録 | `trans_complaint` | `gql/complaint.yaml` |
| `ComplaintVisiterPageCreate` | 登録 | `trans_complaint_visiter` | `gql/complaint.yaml` |
| `ComplaintKindPage` | 読み込み | `v_complaint_kind` | `gql/complaint.yaml` |
| `ComplaintRegisterPageCall` | DB 関数の呼び出し | `complaintRegister` | `gql/complaint.yaml` |
| `ComplaintEquipmentPageCreate` | 登録 | `trans_complaint_equipment` | `gql/complaint.yaml` |
| `ComplaintProcessPageCreate` | 登録 | `trans_complaint_process` | `gql/complaint.yaml` |
| `ComplaintKindPurchaseRecPageCreate` | 登録 | `trans_complaint_purchase_rec` | `gql/complaint.yaml` |
| `ComplaintKindWorkPageCreate` | 登録 | `trans_complaint_work` | `gql/complaint.yaml` |
| `ComplaintOrderPageCreate` | 登録 | `trans_complaint_order` | `gql/complaint.yaml` |
| `ComplaintStakeholderPageCreate` | 登録 | `trans_complaint_stakeholder` | `gql/complaint.yaml` |
| `ComplaintListPage` | 読み込み | `v_complaint` | `gql/complaint.yaml` |
| `ComplaintWorkRecordLookupPage` | 読み込み | `trans_work_record` | `gql/complaint.yaml` |
| `ComplaintVisiterLookupPage` | 読み込み | `trans_visiter` | `gql/complaint.yaml` |
| `ComplaintTargetVisiterPage` | 読み込み | `v_complaint_target_visiter` | `gql/complaint_target.yaml` |
| `ComplaintTargetPage` | 読み込み | `v_complaint_target` | `gql/complaint_target.yaml` |
| `ComplaintSupplyPage` | 読み込み | `trans_complaint_supply` | `gql/complaint_target.yaml` |
| `ComplaintSupplyPageCreate` | 登録 | `trans_complaint_supply` | `gql/complaint_target.yaml` |
| `ComplaintSupplyPageEdit` | 更新 | `trans_complaint_supply` | `gql/complaint_target.yaml` |
| `DisposalPageEdit` | 更新 | `trans_disposal` | `gql/corrective.yaml` |
| `RecurrencePreventionPageEdit` | 更新 | `trans_recurrence_prevention` | `gql/corrective.yaml` |
| `ObserverDisposalPageEdit` | 更新 | `trans_observer_disposal` | `gql/corrective.yaml` |
| `ObserverPreventivePageEdit` | 更新 | `trans_observer_preventive` | `gql/corrective.yaml` |
| `ReportPageEdit` | 更新 | `mstr_report` | `gql/report.yaml` |
| `RiskPageEdit` | 更新 | `trans_risk` | `gql/risk.yaml` |
| `PreventionPageEdit` | 更新 | `trans_prevention` | `gql/risk.yaml` |
| `PreventionDetailPageEdit` | 更新 | `trans_prevention_detail` | `gql/risk.yaml` |
| `OrderRiskPageEdit` | 更新 | `trans_order_risk` | `gql/risk.yaml` |
| `OrderDetailRiskPageEdit` | 更新 | `trans_order_detail_risk` | `gql/risk.yaml` |
| `TaskRiskPageEdit` | 更新 | `trans_task_risk` | `gql/risk.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `AuditAssignmentPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_assignment_page_filter_spec.dart` |
| `AuditCheckitemLedgerPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_checkitem_ledger_page_filter_spec.dart` |
| `AuditDetailPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_detail_page_filter_spec.dart` |
| `AuditItemPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_item_page_filter_spec.dart` |
| `AuditMemberPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_member_page_filter_spec.dart` |
| `AuditPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_page_filter_spec.dart` |
| `AuditPlanStaffOptionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_plan_staff_option_page_filter_spec.dart` |
| `AuditPlanStdOptionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_plan_std_option_page_filter_spec.dart` |
| `AuditStdCheckitemPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_std_checkitem_page_filter_spec.dart` |
| `AuditStdPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_std_page_filter_spec.dart` |
| `AuditTeamPageFilterSpec` | 抽象クラス |  | `lib/src/contents/audit_team_page_filter_spec.dart` |
| `AuditorPageFilterSpec` | 抽象クラス |  | `lib/src/contents/auditor_page_filter_spec.dart` |
| `ComplaintEquipmentPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_equipment_page_filter_spec.dart` |
| `ComplaintFilePageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_file_page_filter_spec.dart` |
| `ComplaintKindPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_kind_page_filter_spec.dart` |
| `ComplaintListPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_list_page_filter_spec.dart` |
| `ComplaintOrderPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_order_page_filter_spec.dart` |
| `ComplaintPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_page_filter_spec.dart` |
| `ComplaintProcessPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_process_page_filter_spec.dart` |
| `ComplaintReceivePageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_receive_page_filter_spec.dart` |
| `ComplaintStakeholderPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_stakeholder_page_filter_spec.dart` |
| `ComplaintSupplyPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_supply_page_filter_spec.dart` |
| `ComplaintTargetPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_target_page_filter_spec.dart` |
| `ComplaintTargetVisiterPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_target_visiter_page_filter_spec.dart` |
| `ComplaintVisiterLookupPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_visiter_lookup_page_filter_spec.dart` |
| `ComplaintVisiterPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_visiter_page_filter_spec.dart` |
| `ComplaintWorkRecordLookupPageFilterSpec` | 抽象クラス |  | `lib/src/contents/complaint_work_record_lookup_page_filter_spec.dart` |
| `DisposalPageFilterSpec` | 抽象クラス |  | `lib/src/contents/disposal_page_filter_spec.dart` |
| `ObserverDisposalPageFilterSpec` | 抽象クラス |  | `lib/src/contents/observer_disposal_page_filter_spec.dart` |
| `ObserverPreventivePageFilterSpec` | 抽象クラス |  | `lib/src/contents/observer_preventive_page_filter_spec.dart` |
| `OrderDetailRiskPageFilterSpec` | 抽象クラス |  | `lib/src/contents/order_detail_risk_page_filter_spec.dart` |
| `OrderRiskPageFilterSpec` | 抽象クラス |  | `lib/src/contents/order_risk_page_filter_spec.dart` |
| `PreventionDetailPageFilterSpec` | 抽象クラス |  | `lib/src/contents/prevention_detail_page_filter_spec.dart` |
| `PreventionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/prevention_page_filter_spec.dart` |
| `RecurrencePreventionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/recurrence_prevention_page_filter_spec.dart` |
| `ReportPageFilterSpec` | 抽象クラス |  | `lib/src/contents/report_page_filter_spec.dart` |
| `RiskPageFilterSpec` | 抽象クラス |  | `lib/src/contents/risk_page_filter_spec.dart` |
| `TaskRiskPageFilterSpec` | 抽象クラス |  | `lib/src/contents/task_risk_page_filter_spec.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `quality`(パッケージ)、`quality_common`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)、`barcode_entry_model`(パッケージ)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/filter_spec_roundtrip_test.dart`(0)、`test/server_read_test.dart`(43)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
