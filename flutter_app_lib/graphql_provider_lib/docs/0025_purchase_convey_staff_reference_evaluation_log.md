# 0025 実施ログ(担当者参照追加を受けた未生成11見出しの再評価、product_rez除く)

指示: 「0026の実行。product_rezを除き、0025を実行。」

## 0. 対象範囲の確認

views.mdの全40見出しのうち、既に生成済みの31見出し(info_company〜task_group)を除いた
未生成9見出し+今回新たに確認した2見出しは以下の11見出し(全角スペース見出し
`##　purchase_rec`を含む)。指示により`product_rez`(見出しのみ・read/edit中身が空の状態)は
評価対象から除外した。

1. unrecognized
2. resource_plan
3. inspection_sch
4. inspection_sch_detail
5. inspect_record
6. purchase_rec
7. operations_plan
8. work_record
9. work_record_visiter
10. purchase_rec_visitor
11. container_tree

これらは[docs/0025_symbol_and_transaction_evaluation_log.md](0025_symbol_and_transaction_evaluation_log.md)・
[docs/0025_inspection_and_production_evaluation_log.md](0025_inspection_and_production_evaluation_log.md)・
[docs/0025_container_and_visiter_evaluation_log.md](0025_container_and_visiter_evaluation_log.md)で
既に評価済みで、いずれもエラー無し(一部、ユーザー判断待ちの未採択提案が`### 提案への指示`に
残るのみ)の状態であることを確認済み。今回は直前の[0026再実行(追記7)](0026_schema_fetch_log.md)
によるschema更新を受けて、新たな影響が無いかを再確認した。

## 1. 0026(追記7)のschema更新による影響確認

[0026追記7](0026_schema_fetch_log.md#追記7-0026再実行2026-09-190026の実行product_rezを除き0025を実行の指示)
で判明した実質差分は、`TransConvey`・`TransInventoryApply`・`TransInventoryRequest`・
`TransProductRez`・`TransPurchaseRez`の5テーブルへの「担当者」参照(複合外部キー)追加のみ
だった。このうち:

- `TransConvey`・`TransInventoryApply`・`TransInventoryRequest`はviews.mdに対応する見出しが
  存在しない。
- `TransProductRez`は`product_rez`見出し(今回評価対象外)に対応する。
- `TransPurchaseRez`は`purchase_rec`見出しが対応する`TransPurchaseRec`(cで終わる)とは
  **別の物理テーブル**であり、views.mdのどの見出しにも対応しない(`purchase_rec_visitor`が
  参照する親テーブルも`TransPurchaseRecVisiter`→`TransPurchaseRec`の経路であり、
  `TransPurchaseRez`ではないことを`lib/graphql/schema.graphql`で確認済み)。

対象11見出しの物理型(`TransUnrecognized`・`TransResorcePlan`・`TransInspectSch`・
`TransInspectSchDetail`・`TransInspectRecord`・`TransPurchaseRec`・`TransOperationsPlan`・
`TransWorkRecord`・`TransWorkRecordVisiter`・`TransPurchaseRecVisiter`・`TransContainer`・
`TransContainerTree`)自身のフィールドが変更対象になっている差分は無いことを、
inspectorの差分出力(ノイズ除く)に対する`grep`で確認済み(0026追記7参照)。

**結論: 今回のschema更新による対象11見出しへの影響は無い。**

## 2. views.md本文の現状確認

各見出しの`### 提案への指示`を確認し、前回評価時から状態が変わっていないことを確認した。

| 見出し | 状態 |
|---|---|
| unrecognized | `decisionDate`モレ追加、採択済み。追加のエラー・提案なし。 |
| resource_plan | 非計上明細id追加は採択済み。`registerAt`追加/非計上由来時のnull許容の2件は**未採択(ユーザー判断待ち)のまま**、変化なし。 |
| inspection_sch | `### edit`見出しレベルの誤記は修正済み。追加の指摘なし。 |
| inspection_sch_detail | 提案への指示なし(エラー・提案とも無し)。 |
| inspect_record | 品目名の重複記載修正済み。サブ説明欠落・`transInspectionReportByTransInspectionReportId`未記載の指摘は`### 提案への指示`に記録されたまま(採否未確認、views.md本文は追記済み内容を確認)。 |
| purchase_rec | 「数量」「シンボル」の呼び分け提案は**未採択(ユーザー判断待ち)のまま**、変化なし。 |
| operations_plan | 提案への指示なし。 |
| work_record | `TransWorkPlan`専用見出し追加の提案は`### 提案への指示`に記録(採否は次項参照)。 |
| work_record_visiter | 参照解決不能列(`transProductDetailId`)は、schema側の列削除とviews.md側の項目削除で**解消済み**であることを確認済み(0025追記・0026追記6)。 |
| purchase_rec_visitor | エラー・提案なし。 |
| container_tree | `TransContainer.code`モレ追加は採択済み。追加のエラー・提案なし。 |

いずれも新規のエラー・モレは見つからなかった。`resource_plan`(2件)・`purchase_rec`(1件)・
`inspect_record`(2件)・`work_record`(1件)の未採択/未確認の提案は、ユーザー判断待ちのため
今回も何も記載していない(要件0025「提案に対して採択しないときは何も記載しない」に従う)。

## 3. 結論

対象11見出し(product_rez除く)はいずれも変換エラー無しの状態を維持していることを確認した。
今回のschema更新(0026追記7)による影響も無い。GraphQLの作成・build_runnerの実行は
行っていない(要件0025「評価後、エラーが無い状態になったときにGraphQLを作成」に沿うと
生成段階へ進める状態だが、今回の指示は評価の実行までであり、生成は別途の指示を待つ)。

`product_rez`は指示により評価対象外とした(read/edit見出しのみで中身が空の状態を確認)。
