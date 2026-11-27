# organization_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

organization_model: organization 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/organization_model` |
| Dart ファイル(生成物を除く) | 35 |
| `lib/src` の分け方 | `contents(34)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `ApprovalOperationPage` | 読み込み | `mstr_approval_pattern` | `gql/approval.yaml` |
| `ApprovalOperationPageEdit` | 更新 | `mstr_approval_pattern` | `gql/approval.yaml` |
| `ApprovalScopePageEdit` | 更新 | `mstr_approval_scope_pattern` | `gql/approval.yaml` |
| `ApprovalDefaultsPage` | 読み込み | `info_app` | `gql/approval_defaults.yaml` |
| `ApprovalDefaultsPageEdit` | 更新 | `info_app` | `gql/approval_defaults.yaml` |
| `ApprovalPatternOptionPage` | 読み込み | `mstr_approval_pattern` | `gql/approval_defaults.yaml` |
| `ApprovalDefaultsLanguagePage` | 読み込み | `shared_language_code` | `gql/approval_defaults.yaml` |
| `ApprovalPatternLedgerPage` | 読み込み | `mstr_approval_pattern` | `gql/approval_pattern.yaml` |
| `ApprovalPatternLedgerPageEdit` | 更新 | `mstr_approval_pattern` | `gql/approval_pattern.yaml` |
| `ApprovalPatternLedgerPageCreate` | 登録 | `mstr_approval_pattern` | `gql/approval_pattern.yaml` |
| `ApprovalPatternAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/approval_pattern.yaml` |
| `ApprovalStepPage` | 読み込み | `mstr_approval_pattern_detail` | `gql/approval_pattern.yaml` |
| `ApprovalStepApprovalPageEdit` | 更新 | `mstr_approval` | `gql/approval_pattern.yaml` |
| `ApprovalStepApprovalPageCreate` | 登録 | `mstr_approval` | `gql/approval_pattern.yaml` |
| `ApprovalStepDetailPageEdit` | 更新 | `mstr_approval_pattern_detail` | `gql/approval_pattern.yaml` |
| `ApprovalStepDetailPageCreate` | 登録 | `mstr_approval_pattern_detail` | `gql/approval_pattern.yaml` |
| `ApprovalStepDepartmentOptionPage` | 読み込み | `info_department` | `gql/approval_pattern.yaml` |
| `ApprovalStepPositionOptionPage` | 読み込み | `info_position` | `gql/approval_pattern.yaml` |
| `AccessPathApprovalLedgerPage` | 読み込み | `info_access_path_approval` | `gql/approval_pattern.yaml` |
| `AccessPathApprovalLedgerPageEdit` | 更新 | `info_access_path_approval` | `gql/approval_pattern.yaml` |
| `AccessPathApprovalLedgerPageCreate` | 登録 | `info_access_path_approval` | `gql/approval_pattern.yaml` |
| `ApprovalScopeLedgerPage` | 読み込み | `mstr_approval_scope_pattern` | `gql/approval_pattern.yaml` |
| `ApprovalScopeLedgerPageEdit` | 更新 | `mstr_approval_scope_pattern` | `gql/approval_pattern.yaml` |
| `ApprovalScopeLedgerPageCreate` | 登録 | `mstr_approval_scope_pattern` | `gql/approval_pattern.yaml` |
| `ProvisionPageEdit` | 更新 | `info_provision` | `gql/company.yaml` |
| `CompanyPage` | 読み込み | `info_company` | `gql/company.yaml` |
| `CompanyPageEdit` | 更新 | `info_company` | `gql/company.yaml` |
| `DepartmentCategoryPageEdit` | 更新 | `info_department_kind_value` | `gql/department.yaml` |
| `DepartmentPageEdit` | 更新 | `info_department` | `gql/department.yaml` |
| `DepartmentTreePageEdit` | 更新 | `info_department_tree` | `gql/department.yaml` |
| `OfficePageEdit` | 更新 | `info_office` | `gql/office.yaml` |
| `OfficePageCreate` | 登録 | `info_office` | `gql/office.yaml` |
| `OfficeAddressPageEdit` | 更新 | `info_address` | `gql/office.yaml` |
| `OfficeAddressPageCreate` | 登録 | `info_address` | `gql/office.yaml` |
| `OfficeAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/office.yaml` |
| `PositionPageEdit` | 更新 | `info_position` | `gql/position.yaml` |
| `AssignPage` | 読み込み | `info_assign` | `gql/position.yaml` |
| `AssignPageEdit` | 更新 | `info_assign` | `gql/position.yaml` |
| `StaffPageEdit` | 更新 | `info_staff` | `gql/staff.yaml` |
| `StaffCapabilityPage` | 読み込み | `info_staff` | `gql/staff.yaml` |
| `StaffCapabilityPageEdit` | 読み込み |  | `gql/staff.yaml` |
| `StaffHeldLicensePage` | 読み込み | `info_staff` | `gql/staff.yaml` |
| `StaffHeldLicensePageEdit` | 読み込み |  | `gql/staff.yaml` |
| `StaffHistoryLatestPage` | 読み込み | `history_info_staff` | `gql/staff.yaml` |
| `StaffLedgerPageEdit` | 更新 | `info_staff` | `gql/staff.yaml` |
| `StaffLedgerPageCreate` | 登録 | `info_staff` | `gql/staff.yaml` |
| `StaffCountPage` | 読み込み | `v_staff_count` | `gql/staff_count.yaml` |
| `StaffIconPageEdit` | 更新 | `info_staff_icon` | `gql/staff_icon.yaml` |
| `StaffIconAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/staff_icon.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `AccessPathApprovalLedgerPageFilterSpec` | 抽象クラス |  | `lib/src/contents/access_path_approval_ledger_page_filter_spec.dart` |
| `ApprovalDefaultsLanguagePageFilterSpec` | 抽象クラス |  | `lib/src/contents/approval_defaults_language_page_filter_spec.dart` |
| `ApprovalDefaultsPageFilterSpec` | 抽象クラス |  | `lib/src/contents/approval_defaults_page_filter_spec.dart` |
| `ApprovalOperationPageFilterSpec` | 抽象クラス |  | `lib/src/contents/approval_operation_page_filter_spec.dart` |
| `ApprovalOperationPageKeyName` | 抽象クラス |  | `lib/src/contents/approval_operation_page_keyname.dart` |
| `ApprovalPatternLedgerPageFilterSpec` | 抽象クラス |  | `lib/src/contents/approval_pattern_ledger_page_filter_spec.dart` |
| `ApprovalPatternOptionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/approval_pattern_option_page_filter_spec.dart` |
| `ApprovalScopeLedgerPageFilterSpec` | 抽象クラス |  | `lib/src/contents/approval_scope_ledger_page_filter_spec.dart` |
| `ApprovalScopePageFilterSpec` | 抽象クラス |  | `lib/src/contents/approval_scope_page_filter_spec.dart` |
| `ApprovalStepDepartmentOptionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/approval_step_department_option_page_filter_spec.dart` |
| `ApprovalStepPageFilterSpec` | 抽象クラス |  | `lib/src/contents/approval_step_page_filter_spec.dart` |
| `ApprovalStepPositionOptionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/approval_step_position_option_page_filter_spec.dart` |
| `AssignPageFilterSpec` | 抽象クラス |  | `lib/src/contents/assign_page_filter_spec.dart` |
| `AssignPageKeyName` | 抽象クラス |  | `lib/src/contents/assign_page_keyname.dart` |
| `CompanyPageFilterSpec` | 抽象クラス |  | `lib/src/contents/company_page_filter_spec.dart` |
| `CompanyPageKeyName` | 抽象クラス |  | `lib/src/contents/company_page_keyname.dart` |
| `DepartmentCategoryPageFilterSpec` | 抽象クラス |  | `lib/src/contents/department_category_page_filter_spec.dart` |
| `DepartmentCategoryPageKeyName` | 抽象クラス |  | `lib/src/contents/department_category_page_keyname.dart` |
| `DepartmentPageFilterSpec` | 抽象クラス |  | `lib/src/contents/department_page_filter_spec.dart` |
| `DepartmentPageKeyName` | 抽象クラス |  | `lib/src/contents/department_page_keyname.dart` |
| `OfficePageFilterSpec` | 抽象クラス |  | `lib/src/contents/office_page_filter_spec.dart` |
| `OfficePageKeyName` | 抽象クラス |  | `lib/src/contents/office_page_keyname.dart` |
| `PositionPageKeyName` | 抽象クラス |  | `lib/src/contents/position_page_keyname.dart` |
| `ProvisionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/provision_page_filter_spec.dart` |
| `ProvisionPageKeyName` | 抽象クラス |  | `lib/src/contents/provision_page_keyname.dart` |
| `StaffCapabilityPageFilterSpec` | 抽象クラス |  | `lib/src/contents/staff_capability_page_filter_spec.dart` |
| `StaffCapabilityPageKeyName` | 抽象クラス |  | `lib/src/contents/staff_capability_page_keyname.dart` |
| `StaffCountPageFilterSpec` | 抽象クラス |  | `lib/src/contents/staff_count_page_filter_spec.dart` |
| `StaffHeldLicensePageFilterSpec` | 抽象クラス |  | `lib/src/contents/staff_held_license_page_filter_spec.dart` |
| `StaffHeldLicensePageKeyName` | 抽象クラス |  | `lib/src/contents/staff_held_license_page_keyname.dart` |
| `StaffHistoryLatestPageFilterSpec` | 抽象クラス |  | `lib/src/contents/staff_history_latest_page_filter_spec.dart` |
| `StaffIconPageFilterSpec` | 抽象クラス |  | `lib/src/contents/staff_icon_page_filter_spec.dart` |
| `StaffPageFilterSpec` | 抽象クラス |  | `lib/src/contents/staff_page_filter_spec.dart` |
| `StaffPageKeyName` | 抽象クラス |  | `lib/src/contents/staff_page_keyname.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `organization`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/approval_operation_page_flatten_roundtrip_test.dart`(3)、`test/assign_page_flatten_roundtrip_test.dart`(3)、`test/client_provider_server_test.dart`(3)、`test/company_page_flatten_roundtrip_test.dart`(4)、`test/department_category_page_flatten_roundtrip_test.dart`(3)、`test/department_page_flatten_roundtrip_test.dart`(3)、`test/department_tree_page_flatten_roundtrip_test.dart`(3)、`test/filter_spec_roundtrip_test.dart`(0)、`test/office_filter_search_test.dart`(1)、`test/office_page_flatten_roundtrip_test.dart`(3)、`test/position_page_flatten_roundtrip_test.dart`(3)、`test/provision_page_flatten_roundtrip_test.dart`(3)、`test/rfe_edit_interconversion_test.dart`(1)、`test/server_read_test.dart`(29)、`test/staff_capability_page_edit_flatten_roundtrip_test.dart`(2)、`test/staff_capability_page_flatten_roundtrip_test.dart`(1)、`test/staff_held_license_page_flatten_roundtrip_test.dart`(3)、`test/staff_page_flatten_roundtrip_test.dart`(3)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
