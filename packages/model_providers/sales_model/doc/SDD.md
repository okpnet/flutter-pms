# sales_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

sales_model: sales 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/sales_model` |
| Dart ファイル(生成物を除く) | 13 |
| `lib/src` の分け方 | `contents(12)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `OrderDetailBalancePage` | 読み込み | `v_order_detail_balance` | `gql/balance.yaml` |
| `OrderDetailSettlementPage` | 読み込み | `trans_order_detail_settlement` | `gql/balance.yaml` |
| `OrderDetailSettlementPageEdit` | 更新 | `trans_order_detail_settlement` | `gql/balance.yaml` |
| `OrderDetailCancelPageCall` | DB 関数の呼び出し | `orderDetailCancel` | `gql/balance.yaml` |
| `OrderDetailSetStopPageCall` | DB 関数の呼び出し | `orderDetailSetStop` | `gql/balance.yaml` |
| `OrderDetailChangePageCall` | DB 関数の呼び出し | `orderDetailChange` | `gql/balance.yaml` |
| `OrderDetailSettlePageCall` | DB 関数の呼び出し | `orderDetailSettle` | `gql/balance.yaml` |
| `CustomerPage` | 読み込み |  | `gql/customer.yaml` |
| `CustomerPageEdit` | 更新 |  | `gql/customer.yaml` |
| `OrderPageEdit` | 更新 | `trans_order` | `gql/order.yaml` |
| `OrderDetailPageEdit` | 更新 | `trans_order_detail` | `gql/order.yaml` |
| `OrderPageCreate` | 登録 | `trans_order` | `gql/order.yaml` |
| `OrderDetailPageCreate` | 登録 | `trans_order_detail` | `gql/order.yaml` |
| `SalesRecordPage` | 読み込み | `v_sales_record` | `gql/sales_record.yaml` |
| `ShippingDeliveryCompliancePage` | 読み込み | `v_shipping_delivery_compliance` | `gql/shipping_delivery_compliance.yaml` |
| `ShippingOrderPageEdit` | 更新 | `trans_shipping_order` | `gql/shipping_order.yaml` |
| `ShippingOrderDetailPageEdit` | 更新 | `trans_shipping_order_detail` | `gql/shipping_order.yaml` |
| `ShippingOrderDetailRecordPageEdit` | 更新 | `trans_shipping_order_detail_record` | `gql/shipping_order.yaml` |
| `ShippingOrderPageCreate` | 登録 | `trans_shipping_order` | `gql/shipping_order.yaml` |
| `ShippingOrderDetailPageCreate` | 登録 | `trans_shipping_order_detail` | `gql/shipping_order.yaml` |
| `ShippingOrderStatusPage` | 読み込み | `v_shipping_order_status` | `gql/shipping_order_status.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `CustomerPageFilterSpec` | 抽象クラス |  | `lib/src/contents/customer_page_filter_spec.dart` |
| `OrderDetailBalancePageFilterSpec` | 抽象クラス |  | `lib/src/contents/order_detail_balance_page_filter_spec.dart` |
| `OrderDetailPageFilterSpec` | 抽象クラス |  | `lib/src/contents/order_detail_page_filter_spec.dart` |
| `OrderDetailSettlementPageFilterSpec` | 抽象クラス |  | `lib/src/contents/order_detail_settlement_page_filter_spec.dart` |
| `OrderPageFilterSpec` | 抽象クラス |  | `lib/src/contents/order_page_filter_spec.dart` |
| `SalesRecordPageFilterSpec` | 抽象クラス |  | `lib/src/contents/sales_record_page_filter_spec.dart` |
| `ShippingDeliveryCompliancePageFilterSpec` | 抽象クラス |  | `lib/src/contents/shipping_delivery_compliance_page_filter_spec.dart` |
| `ShippingOrderDetailPageFilterSpec` | 抽象クラス |  | `lib/src/contents/shipping_order_detail_page_filter_spec.dart` |
| `ShippingOrderDetailRecordPageFilterSpec` | 抽象クラス |  | `lib/src/contents/shipping_order_detail_record_page_filter_spec.dart` |
| `ShippingOrderPageFilterSpec` | 抽象クラス |  | `lib/src/contents/shipping_order_page_filter_spec.dart` |
| `ShippingOrderStatusPageFilterSpec` | 抽象クラス |  | `lib/src/contents/shipping_order_status_page_filter_spec.dart` |
| `ShippingTodayPageFilterSpec` | 抽象クラス |  | `lib/src/contents/shipping_today_page_filter_spec.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `sales`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/customer_model_test.dart`(2)、`test/filter_spec_roundtrip_test.dart`(0)、`test/operation_call_test.dart`(5)、`test/server_read_test.dart`(17)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
