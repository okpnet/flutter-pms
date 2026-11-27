# resource_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

resource_model: resource 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/resource_model` |
| Dart ファイル(生成物を除く) | 25 |
| `lib/src` の分け方 | `contents(24)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `CapabilityPageEdit` | 更新 | `mstr_capability` | `gql/capability.yaml` |
| `CapabilityPageCreate` | 登録 | `mstr_capability` | `gql/capability.yaml` |
| `CapabilityAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/capability.yaml` |
| `CapabilityTextSavePageCall` | DB 関数の呼び出し | `sharedTextSave` | `gql/capability.yaml` |
| `CapableStaffPage` | 読み込み | `mstr_capability` | `gql/capability.yaml` |
| `CapableStaffPageEdit` | 読み込み |  | `gql/capability.yaml` |
| `EquipmentCategoryPageEdit` | 更新 | `mstr_equipment_kind` | `gql/equipment.yaml` |
| `EquipmentPageEdit` | 更新 | `mstr_equipment` | `gql/equipment.yaml` |
| `EquipmentTagPageEdit` | 更新 | `mstr_equipment_tag` | `gql/equipment_tag.yaml` |
| `EquipmentTagAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/equipment_tag.yaml` |
| `InspectionStatusPage` | 読み込み | `v_inspection_status` | `gql/inspection_status.yaml` |
| `ItemTaskCostPage` | 読み込み | `mstr_item_task_cost` | `gql/item_task_cost.yaml` |
| `ItemTaskCostPageEdit` | 更新 | `mstr_item_task_cost` | `gql/item_task_cost.yaml` |
| `LicensePageEdit` | 更新 | `mstr_license` | `gql/license.yaml` |
| `LicensePageCreate` | 登録 | `mstr_license` | `gql/license.yaml` |
| `LicenseAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/license.yaml` |
| `LicenseTextSavePageCall` | DB 関数の呼び出し | `sharedTextSave` | `gql/license.yaml` |
| `LicenseHoldersPage` | 読み込み | `mstr_license` | `gql/license.yaml` |
| `LicenseHoldersPageEdit` | 読み込み |  | `gql/license.yaml` |
| `LocationPageEdit` | 更新 | `mstr_location` | `gql/location.yaml` |
| `LocationTreePageEdit` | 更新 | `mstr_location_tree` | `gql/location.yaml` |
| `InspectionKindPageEdit` | 更新 | `mstr_inspection_kind` | `gql/maintenance.yaml` |
| `InspectionItemPageEdit` | 更新 | `mstr_inspection` | `gql/maintenance.yaml` |
| `InspectionOperationPage` | 読み込み | `mstr_inspection_operation` | `gql/maintenance.yaml` |
| `InspectionOperationPageEdit` | 更新 | `mstr_inspection_operation` | `gql/maintenance.yaml` |
| `InspectionEquipentPage` | 読み込み | `mstr_inspection_operation_task` | `gql/maintenance.yaml` |
| `InspectionEquipentPageEdit` | 更新 | `mstr_inspection_operation_task` | `gql/maintenance.yaml` |
| `InspectSchPageEdit` | 更新 | `trans_inspect_sch` | `gql/maintenance.yaml` |
| `InspectSchDetailPageEdit` | 更新 | `trans_inspect_sch_detail` | `gql/maintenance.yaml` |
| `InspectRecordPageEdit` | 更新 | `trans_inspect_record` | `gql/maintenance.yaml` |
| `InspectImpFilePageEdit` | 更新 | `trans_inspect_imp_file` | `gql/maintenance.yaml` |
| `InspectRecordPageCreate` | 登録 | `trans_inspect_record` | `gql/maintenance.yaml` |
| `InspectionFilePageEdit` | 更新 | `trans_inspect_imp_file` | `gql/maintenance.yaml` |
| `InspectionFileLabelSavePageCall` | DB 関数の呼び出し | `transLabelSave` | `gql/maintenance.yaml` |
| `FilePage` | 読み込み | `trans_file` | `gql/transaction_file.yaml` |
| `FilePageEdit` | 更新 | `trans_file` | `gql/transaction_file.yaml` |
| `WorkCalendarPage` | 読み込み | `mstr_work_calendar` | `gql/work_calendar.yaml` |
| `WorkCalendarPageEdit` | 更新 | `mstr_work_calendar` | `gql/work_calendar.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `CapabilityPageFilterSpec` | 抽象クラス |  | `lib/src/contents/capability_page_filter_spec.dart` |
| `CapabilityPageKeyName` | 抽象クラス |  | `lib/src/contents/capability_page_keyname.dart` |
| `CapableStaffPageFilterSpec` | 抽象クラス |  | `lib/src/contents/capable_staff_page_filter_spec.dart` |
| `CapableStaffPageKeyName` | 抽象クラス |  | `lib/src/contents/capable_staff_page_keyname.dart` |
| `EquipmentCategoryPageFilterSpec` | 抽象クラス |  | `lib/src/contents/equipment_category_page_filter_spec.dart` |
| `EquipmentPageFilterSpec` | 抽象クラス |  | `lib/src/contents/equipment_page_filter_spec.dart` |
| `EquipmentTagPageFilterSpec` | 抽象クラス |  | `lib/src/contents/equipment_tag_page_filter_spec.dart` |
| `FilePageFilterSpec` | 抽象クラス |  | `lib/src/contents/file_page_filter_spec.dart` |
| `InspectImpFilePageFilterSpec` | 抽象クラス |  | `lib/src/contents/inspect_imp_file_page_filter_spec.dart` |
| `InspectRecordPageFilterSpec` | 抽象クラス |  | `lib/src/contents/inspect_record_page_filter_spec.dart` |
| `InspectSchDetailPageFilterSpec` | 抽象クラス |  | `lib/src/contents/inspect_sch_detail_page_filter_spec.dart` |
| `InspectSchPageFilterSpec` | 抽象クラス |  | `lib/src/contents/inspect_sch_page_filter_spec.dart` |
| `InspectionEquipentPageFilterSpec` | 抽象クラス |  | `lib/src/contents/inspection_equipent_page_filter_spec.dart` |
| `InspectionItemPageFilterSpec` | 抽象クラス |  | `lib/src/contents/inspection_item_page_filter_spec.dart` |
| `InspectionKindPageFilterSpec` | 抽象クラス |  | `lib/src/contents/inspection_kind_page_filter_spec.dart` |
| `InspectionOperationPageFilterSpec` | 抽象クラス |  | `lib/src/contents/inspection_operation_page_filter_spec.dart` |
| `InspectionStatusPageFilterSpec` | 抽象クラス |  | `lib/src/contents/inspection_status_page_filter_spec.dart` |
| `ItemTaskCostPageFilterSpec` | 抽象クラス |  | `lib/src/contents/item_task_cost_page_filter_spec.dart` |
| `LicenseHoldersPageFilterSpec` | 抽象クラス |  | `lib/src/contents/license_holders_page_filter_spec.dart` |
| `LicenseHoldersPageKeyName` | 抽象クラス |  | `lib/src/contents/license_holders_page_keyname.dart` |
| `LicensePageFilterSpec` | 抽象クラス |  | `lib/src/contents/license_page_filter_spec.dart` |
| `LicensePageKeyName` | 抽象クラス |  | `lib/src/contents/license_page_keyname.dart` |
| `LocationPageFilterSpec` | 抽象クラス |  | `lib/src/contents/location_page_filter_spec.dart` |
| `WorkCalendarPageFilterSpec` | 抽象クラス |  | `lib/src/contents/work_calendar_page_filter_spec.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `resource`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)、`barcode_entry_model`(パッケージ)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/capability_page_flatten_roundtrip_test.dart`(3)、`test/capable_staff_page_edit_flatten_roundtrip_test.dart`(2)、`test/capable_staff_page_flatten_roundtrip_test.dart`(1)、`test/filter_spec_roundtrip_test.dart`(0)、`test/license_holders_page_flatten_roundtrip_test.dart`(3)、`test/license_page_flatten_roundtrip_test.dart`(3)、`test/location_tree_page_flatten_roundtrip_test.dart`(3)、`test/rfe_edit_interconversion_test.dart`(1)、`test/server_read_test.dart`(25)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
