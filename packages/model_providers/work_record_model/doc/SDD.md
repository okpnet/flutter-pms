# work_record_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

work_record_model: work_record 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/work_record_model` |
| Dart ファイル(生成物を除く) | 31 |
| `lib/src` の分け方 | `contents(30)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `MrpVisiterItemPage` | 読み込み | `v_mrp_visiter_item` | `gql/mrp_visiter_item.yaml` |
| `VisiterOwnerPage` | 読み込み | `trans_visiter_owner` | `gql/owner.yaml` |
| `ExternalPropertyPage` | 読み込み | `v_external_property` | `gql/owner.yaml` |
| `VisiterOwnerRebuildPageCall` | DB 関数の呼び出し | `visiterOwnerRebuild` | `gql/owner.yaml` |
| `RegisterWorkRecordStartPageCall` | DB 関数の呼び出し | `workRecordStart` | `gql/register.yaml` |
| `RegisterInspectionPageCall` | DB 関数の呼び出し | `inspectionRegister` | `gql/register.yaml` |
| `RegisterPlanPage` | 読み込み | `trans_operations_plan` | `gql/register.yaml` |
| `RegisterWorkPlanPage` | 読み込み | `trans_work_plan` | `gql/register.yaml` |
| `RegisterWorkRecordPage` | 読み込み | `trans_work_record` | `gql/register.yaml` |
| `RegisterRecordVisiterPage` | 読み込み | `trans_work_record_visiter` | `gql/register.yaml` |
| `RegisterRecordComplaintPage` | 読み込み | `trans_complaint_work` | `gql/register.yaml` |
| `RegisterLotPage` | 読み込み | `v_visiter_issuable` | `gql/register.yaml` |
| `RegisterContainerPage` | 読み込み | `trans_container` | `gql/register.yaml` |
| `RegisterStaffPage` | 読み込み | `info_staff` | `gql/register.yaml` |
| `RegisterLotItemPage` | 読み込み | `v_visiter_item` | `gql/register.yaml` |
| `RegisterItemPage` | 読み込み | `mstr_item` | `gql/register.yaml` |
| `RegisterStakeholderPage` | 読み込み | `mstr_stakeholder` | `gql/register.yaml` |
| `ShelfInventoryStatusPage` | 読み込み | `v_shelf_inventory_status` | `gql/shelf_inventory_status.yaml` |
| `VisiterPageEdit` | 更新 | `trans_visiter` | `gql/visiter.yaml` |
| `ConveyPageEdit` | 更新 | `trans_convey` | `gql/visiter.yaml` |
| `WorkRecordPickPage` | 読み込み | `trans_work_record` | `gql/visiter.yaml` |
| `LotPickPage` | 読み込み | `trans_visiter` | `gql/visiter.yaml` |
| `VisiterIssuablePage` | 読み込み | `v_visiter_issuable` | `gql/visiter_ledger.yaml` |
| `VisiterHoldWithoutComplaintPage` | 読み込み | `v_visiter_hold_without_complaint` | `gql/visiter_ledger.yaml` |
| `VisiterLedgerIssuePage` | 読み込み | `v_visiter_ledger_issue` | `gql/visiter_ledger.yaml` |
| `VisiterOriginCheckPage` | 読み込み | `v_visiter_origin_check` | `gql/visiter_ledger.yaml` |
| `VisiterIssuePageCall` | DB 関数の呼び出し | `visiterIssue` | `gql/visiter_ledger.yaml` |
| `VisiterMovePageCall` | DB 関数の呼び出し | `visiterMove` | `gql/visiter_ledger.yaml` |
| `VisiterAdjustPageCall` | DB 関数の呼び出し | `visiterAdjust` | `gql/visiter_ledger.yaml` |
| `ContainerPageEdit` | 更新 | `trans_container` | `gql/work_record.yaml` |
| `CertificatePageEdit` | 更新 | `trans_certificate` | `gql/work_record.yaml` |
| `PurchaseCertificationPageEdit` | 更新 | `trans_purchase_certification` | `gql/work_record.yaml` |
| `WorkRecordPageEdit` | 更新 | `trans_work_record` | `gql/work_record.yaml` |
| `WorkRecordCertificatePageEdit` | 更新 | `trans_work_record_certificate` | `gql/work_record.yaml` |
| `InventoryRequestPageEdit` | 更新 | `trans_inventory_request` | `gql/work_record.yaml` |
| `InventoryApplyPageEdit` | 更新 | `trans_inventory_apply` | `gql/work_record.yaml` |
| `ContainerTreePageEdit` | 更新 | `trans_container_tree` | `gql/work_record.yaml` |
| `WorkRecordPageCreate` | 登録 | `trans_work_record` | `gql/work_record.yaml` |
| `WorkRecordVisiterPageCreate` | 登録 | `trans_work_record_visiter` | `gql/work_record.yaml` |
| `VisiterPageCreate` | 登録 | `trans_visiter` | `gql/work_record.yaml` |
| `ConveyPageCreate` | 登録 | `trans_convey` | `gql/work_record.yaml` |
| `ComplaintWorkPageCreate` | 登録 | `trans_complaint_work` | `gql/work_record.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `CertificatePageFilterSpec` | 抽象クラス |  | `lib/src/contents/certificate_page_filter_spec.dart` |
| `ContainerPageFilterSpec` | 抽象クラス |  | `lib/src/contents/container_page_filter_spec.dart` |
| `ConveyPageFilterSpec` | 抽象クラス |  | `lib/src/contents/convey_page_filter_spec.dart` |
| `ExternalPropertyPageFilterSpec` | 抽象クラス |  | `lib/src/contents/external_property_page_filter_spec.dart` |
| `InventoryApplyPageFilterSpec` | 抽象クラス |  | `lib/src/contents/inventory_apply_page_filter_spec.dart` |
| `InventoryRequestPageFilterSpec` | 抽象クラス |  | `lib/src/contents/inventory_request_page_filter_spec.dart` |
| `LotPickPageFilterSpec` | 抽象クラス |  | `lib/src/contents/lot_pick_page_filter_spec.dart` |
| `MrpVisiterItemPageFilterSpec` | 抽象クラス |  | `lib/src/contents/mrp_visiter_item_page_filter_spec.dart` |
| `PurchaseCertificationPageFilterSpec` | 抽象クラス |  | `lib/src/contents/purchase_certification_page_filter_spec.dart` |
| `RegisterContainerPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_container_page_filter_spec.dart` |
| `RegisterItemPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_item_page_filter_spec.dart` |
| `RegisterLotItemPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_lot_item_page_filter_spec.dart` |
| `RegisterLotPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_lot_page_filter_spec.dart` |
| `RegisterPlanPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_plan_page_filter_spec.dart` |
| `RegisterRecordComplaintPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_record_complaint_page_filter_spec.dart` |
| `RegisterRecordVisiterPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_record_visiter_page_filter_spec.dart` |
| `RegisterStaffPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_staff_page_filter_spec.dart` |
| `RegisterStakeholderPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_stakeholder_page_filter_spec.dart` |
| `RegisterWorkPlanPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_work_plan_page_filter_spec.dart` |
| `RegisterWorkRecordPageFilterSpec` | 抽象クラス |  | `lib/src/contents/register_work_record_page_filter_spec.dart` |
| `ShelfInventoryStatusPageFilterSpec` | 抽象クラス |  | `lib/src/contents/shelf_inventory_status_page_filter_spec.dart` |
| `VisiterHoldWithoutComplaintPageFilterSpec` | 抽象クラス |  | `lib/src/contents/visiter_hold_without_complaint_page_filter_spec.dart` |
| `VisiterIssuablePageFilterSpec` | 抽象クラス |  | `lib/src/contents/visiter_issuable_page_filter_spec.dart` |
| `VisiterLedgerIssuePageFilterSpec` | 抽象クラス |  | `lib/src/contents/visiter_ledger_issue_page_filter_spec.dart` |
| `VisiterOriginCheckPageFilterSpec` | 抽象クラス |  | `lib/src/contents/visiter_origin_check_page_filter_spec.dart` |
| `VisiterOwnerPageFilterSpec` | 抽象クラス |  | `lib/src/contents/visiter_owner_page_filter_spec.dart` |
| `VisiterPageFilterSpec` | 抽象クラス |  | `lib/src/contents/visiter_page_filter_spec.dart` |
| `WorkRecordCertificatePageFilterSpec` | 抽象クラス |  | `lib/src/contents/work_record_certificate_page_filter_spec.dart` |
| `WorkRecordPageFilterSpec` | 抽象クラス |  | `lib/src/contents/work_record_page_filter_spec.dart` |
| `WorkRecordPickPageFilterSpec` | 抽象クラス |  | `lib/src/contents/work_record_pick_page_filter_spec.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `work_record`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)、`barcode_entry_model`(パッケージ)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/filter_spec_roundtrip_test.dart`(0)、`test/server_read_test.dart`(33)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
