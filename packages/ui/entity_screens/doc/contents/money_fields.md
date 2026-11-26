# 金額の項目の一覧(順 3「金額の単位」。反映の前の確認用)

`issue/20261125_0003.md` の 3 の方針: 表示の通貨は、アプリの設定(`info_app.settings` の `currency`)で 1 つに統一し(既定「円」)、換算・複数通貨は対象外。金額の項目だけに単位を付ける(数量の単位 `shared_unit` とは別)。
このファイルは、**金額として単位を付ける項目の洗い出し**(2026-11-26。`packages/features/*/lib/src/entities/*_definitions.dart` の数値項目と、`06_cteate_test.sql` の `numeric` の金額の列から)。確認してから反映する。

## A. 金額として単位を付ける(案)
| 機能 | 実体のキー | 項目(キー) | DB の列(表・ビュー) | 入力 | 備考 |
|---|---|---|---|---|---|
| sales | `orderdetail` | `unit_price` | `trans_order_detail.unit_price` | 編集 | 受注明細の単価 |
| purchasing | `purdetail` | `unit_price` | `trans_purchase_detail.unit_price` | 編集 | 発注明細の単価 |
| purchasing | `unrecdetail` | `unit_price` | `trans_unrecognized_detail.unit_price` | 編集 | 非計上明細の単価 |
| item | `itemtaskcost` | `cost` | `mstr_item_task_cost.cost` | 編集(0 以上) | 工程の原価(品目の下) |
| item | `itemsupplier` | `cost` | `mstr_item_supplier.cost` | 編集 | 仕入先ごとの単価(コスト) |
| production_plan | `mrppurchase` | `amount` | (ビュー。購買の提案の金額) | 読み取り | 提案の金額の合計 |
| cost | `costunit` | `purchase_cost`・`production_cost`・`component_cost`・`unit_cost` | `v_item_unit_cost` | 読み取り | 標準原価(購買・生産・部品・単位原価) |
| cost | `costvaluation` | `amount`(合計あり) | `v_item_valuation` | 読み取り | 品目ごとの在庫評価額 |
| cost | `costlot` | `unit_cost`・`amount` | `v_visiter_valuation` | 読み取り | ロットの単位原価・評価額 |
| cost | `costwork` | `material_amount`・`process_cost`・`total_cost`(合計あり)・`unit_cost` | 作業実績の原価(ビュー) | 読み取り | 材料・工程・合計・単位原価 |

## B. DB に金額の列があるが、画面に出ていない(今回は対象外。出すときに単位を付ける)
| 表 | 列 | 備考 |
|---|---|---|
| `trans_order_detail`・`trans_purchase_detail`・`trans_unrecognized_detail` | `fixed_price`・`price_adjustment` | 画面の定義に無い |
| `trans_order_detail_settlement` | `amount` | 精算(DB 関数 `order_detail_settle` で登録。画面は未作成) |
| `trans_supply_detail` | `unit_price`(有償の支給) | 支給の画面は未作成 |
| `trans_mrp_suggestion`・`trans_mrp_suggestion_task` | `cost` | 提案の原価。画面の定義に無い |

## C. 金額ではない(単位を付けない)
`line_count`・`late_count`・`pending_count`(件数)、数量(`quantity` ほか。数量の単位 `shared_unit`)。

## 確認してほしい点
1.  A の範囲でよいか(特に `itemsupplier.cost`・`itemtaskcost.cost` は「コスト」で、単価か原価かの区別は画面の名称のまま)。
1.  通貨記号の位置: 後ろ(「1,200 円」)を標準にする(`position: suffix`)。英語の画面は「¥1,200」のように前に付ける案。
1.  合計(`total: true`)の金額にも単位を付ける(案)。
