# barcode_entry_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

barcode_entry_model: barcode_entry 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/barcode_entry_model` |
| Dart ファイル(生成物を除く) | 21 |
| `lib/src` の分け方 | `contents(19)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `ScanWorkPlanPage` | 読み込み | `trans_work_plan` | `gql/scan.yaml` |
| `ScanWorkRecordPage` | 読み込み | `trans_work_record` | `gql/scan.yaml` |
| `ScanContainerPage` | 読み込み | `trans_container` | `gql/scan.yaml` |
| `ScanVisiterPage` | 読み込み | `trans_visiter` | `gql/scan.yaml` |
| `ScanPurchaseDetailPage` | 読み込み | `trans_purchase_detail` | `gql/scan.yaml` |
| `ScanPurchaseRecPage` | 読み込み | `trans_purchase_rec` | `gql/scan.yaml` |
| `ScanItemPage` | 読み込み | `mstr_item` | `gql/scan.yaml` |
| `ScanEquipmentPage` | 読み込み | `mstr_equipment` | `gql/scan.yaml` |
| `ScanInspectSchPage` | 読み込み | `trans_inspect_sch` | `gql/scan.yaml` |
| `ScanInspectSchDetailPage` | 読み込み | `trans_inspect_sch_detail` | `gql/scan.yaml` |
| `ScanInspectRecordPage` | 読み込み | `trans_inspect_record` | `gql/scan.yaml` |
| `ScanInspectionPage` | 読み込み | `mstr_inspection` | `gql/scan.yaml` |
| `ScanInspectionFormulaPage` | 読み込み | `mstr_inspection_formula` | `gql/scan.yaml` |
| `ScanStaffHistoryPage` | 読み込み | `history_info_staff` | `gql/scan.yaml` |
| `ScanLocationHistoryPage` | 読み込み | `history_mstr_location` | `gql/scan.yaml` |
| `ScanStaffPage` | 読み込み | `info_staff` | `gql/scan.yaml` |
| `ScanContentsPage` | 読み込み | `v_visiter_issuable` | `gql/scan.yaml` |
| `ScanLotItemPage` | 読み込み | `v_visiter_item` | `gql/scan.yaml` |
| `ScanContainerChildPage` | 読み込み | `trans_container_tree` | `gql/scan.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `ScanContainerChildPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_container_child_page_filter_spec.dart` |
| `ScanContainerPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_container_page_filter_spec.dart` |
| `ScanContentsPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_contents_page_filter_spec.dart` |
| `ScanEquipmentPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_equipment_page_filter_spec.dart` |
| `ScanInspectRecordPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_inspect_record_page_filter_spec.dart` |
| `ScanInspectSchDetailPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_inspect_sch_detail_page_filter_spec.dart` |
| `ScanInspectSchPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_inspect_sch_page_filter_spec.dart` |
| `ScanInspectionFormulaPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_inspection_formula_page_filter_spec.dart` |
| `ScanInspectionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_inspection_page_filter_spec.dart` |
| `ScanItemPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_item_page_filter_spec.dart` |
| `ScanLocationHistoryPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_location_history_page_filter_spec.dart` |
| `ScanLotItemPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_lot_item_page_filter_spec.dart` |
| `ScanPurchaseDetailPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_purchase_detail_page_filter_spec.dart` |
| `ScanPurchaseRecPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_purchase_rec_page_filter_spec.dart` |
| `ScanStaffHistoryPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_staff_history_page_filter_spec.dart` |
| `ScanStaffPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_staff_page_filter_spec.dart` |
| `ScanVisiterPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_visiter_page_filter_spec.dart` |
| `ScanWorkPlanPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_work_plan_page_filter_spec.dart` |
| `ScanWorkRecordPageFilterSpec` | 抽象クラス |  | `lib/src/contents/scan_work_record_page_filter_spec.dart` |
| `ScanClientException` | クラス | 通信・サーバーの異常。 | `lib/scan_client.dart` |
| `ScanFoundKind` | 列挙型 | symbol で引いた対象の種類。 | `lib/scan_client.dart` |
| `ScanFound` | クラス | symbol で引いた対象(平らな型)。使わない項目は null。 | `lib/scan_client.dart` |
| `ScanStaff` | クラス | 担当者(symbol で引いた結果)。 | `lib/scan_client.dart` |
| `ScanHeld` | クラス | 棚の保持アイテム(品目ごとの数量)。 | `lib/scan_client.dart` |
| `ScanShelfHolding` | クラス | 同じ品目を持つ棚と、その数量(入庫先のおすすめ)。 | `lib/scan_client.dart` |
| `ScanClient` | クラス |  | `lib/scan_client.dart` |
| `ScanInspection` | クラス | 点検予定の明細(平らな型)。式の引数は JSON のまま持つ。 | `lib/scan_client.dart` |
| `ScanVisiter` | クラス | 棚のロット(平らな型)。数量は今の数量(入庫 + 出庫 + 棚卸し)。 | `lib/scan_client.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `work_record_model`、`purchasing_model`、`resource_model`、`quality_model`、`pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `entry_app`(アプリ)、`barcode_entry`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/scan_client_test.dart`(16)、`test/server_read_test.dart`(24)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
