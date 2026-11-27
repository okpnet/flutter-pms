# purchasing_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

purchasing_model: purchasing 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/purchasing_model` |
| Dart ファイル(生成物を除く) | 11 |
| `lib/src` の分け方 | `contents(10)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `PurchaseDetailBalancePage` | 読み込み | `v_purchase_detail_balance` | `gql/balance.yaml` |
| `PurchaseDetailCancelPageCall` | DB 関数の呼び出し | `purchaseDetailCancel` | `gql/balance.yaml` |
| `PurchaseDetailSetStopPageCall` | DB 関数の呼び出し | `purchaseDetailSetStop` | `gql/balance.yaml` |
| `PurchaseDetailChangePageCall` | DB 関数の呼び出し | `purchaseDetailChange` | `gql/balance.yaml` |
| `ItemSupplierPage` | 読み込み | `mstr_item_supplier` | `gql/item_supplier.yaml` |
| `ItemSupplierPageEdit` | 更新 | `mstr_item_supplier` | `gql/item_supplier.yaml` |
| `PurchasePageEdit` | 更新 | `trans_purchase` | `gql/purchase.yaml` |
| `PurchaseDetailPageEdit` | 更新 | `trans_purchase_detail` | `gql/purchase.yaml` |
| `PurchaseRecPageEdit` | 更新 | `trans_purchase_rec` | `gql/purchase.yaml` |
| `PurchaseRecPageCreate` | 登録 | `trans_purchase_rec` | `gql/purchase.yaml` |
| `PurchaseRecVisiterPageCreate` | 登録 | `trans_purchase_rec_visiter` | `gql/purchase.yaml` |
| `ComplaintPurchaseRecPageCreate` | 登録 | `trans_complaint_purchase_rec` | `gql/purchase.yaml` |
| `PurchasePageCreate` | 登録 | `trans_purchase` | `gql/purchase.yaml` |
| `PurchaseDetailPageCreate` | 登録 | `trans_purchase_detail` | `gql/purchase.yaml` |
| `PurchaseAmountPage` | 読み込み | `v_purchase_amount` | `gql/purchase_amount.yaml` |
| `PurchaseDeliveryCompliancePage` | 読み込み | `v_purchase_delivery_compliance` | `gql/purchase_delivery_compliance.yaml` |
| `SupplierPage` | 読み込み |  | `gql/supplier.yaml` |
| `SupplierPageEdit` | 更新 |  | `gql/supplier.yaml` |
| `UnrecognizedPageEdit` | 更新 | `trans_unrecognized` | `gql/unrecognized.yaml` |
| `UnrecognizedDetailPageEdit` | 更新 | `trans_unrecognized_detail` | `gql/unrecognized.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `ItemSupplierPageFilterSpec` | 抽象クラス |  | `lib/src/contents/item_supplier_page_filter_spec.dart` |
| `PurchaseAmountPageFilterSpec` | 抽象クラス |  | `lib/src/contents/purchase_amount_page_filter_spec.dart` |
| `PurchaseDeliveryCompliancePageFilterSpec` | 抽象クラス |  | `lib/src/contents/purchase_delivery_compliance_page_filter_spec.dart` |
| `PurchaseDetailBalancePageFilterSpec` | 抽象クラス |  | `lib/src/contents/purchase_detail_balance_page_filter_spec.dart` |
| `PurchaseDetailPageFilterSpec` | 抽象クラス |  | `lib/src/contents/purchase_detail_page_filter_spec.dart` |
| `PurchasePageFilterSpec` | 抽象クラス |  | `lib/src/contents/purchase_page_filter_spec.dart` |
| `PurchaseRecPageFilterSpec` | 抽象クラス |  | `lib/src/contents/purchase_rec_page_filter_spec.dart` |
| `SupplierPageFilterSpec` | 抽象クラス |  | `lib/src/contents/supplier_page_filter_spec.dart` |
| `UnrecognizedDetailPageFilterSpec` | 抽象クラス |  | `lib/src/contents/unrecognized_detail_page_filter_spec.dart` |
| `UnrecognizedPageFilterSpec` | 抽象クラス |  | `lib/src/contents/unrecognized_page_filter_spec.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `purchasing`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)、`barcode_entry_model`(パッケージ)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/filter_spec_roundtrip_test.dart`(0)、`test/operation_call_test.dart`(3)、`test/server_read_test.dart`(15)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
