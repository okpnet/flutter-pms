# 0025 実施ログ(点検実施/受入実績/生産計画系見出し・要件0031対応状況の評価)

指示: 「0025を実行」

前回の[docs/0025_symbol_and_transaction_evaluation_log.md](0025_symbol_and_transaction_evaluation_log.md)
以降、views.mdに以下の変化があったため、今回はこれらを対象に評価した。要件0029・0030に従い、
発見事項はviews.md本文に直接反映した。GraphQLの作成・build_runnerの実行は行っていない。

- `oepration_editer`見出しが削除され、`operation`が`read`/`RFE`/`edit`の3セクション構成に統合
  された(要件0031の適用)。
- 新規見出し`inspection_sch_detail`・`inspect_record`・`purchase_rec`・`operations_plan`・
  `work_plan`が追加された(要件0026で判明した`TransOperationsPlan`・`TransWorkPlan`等への対応)。
- `inspection_sch`の内容が完成した。

## 1. 誤記の修正

| 見出し | 内容 |
|---|---|
| inspection_sch | `### edit`が誤って`##  edit`(見出し2レベル)と記述され、独立した見出しに
  なってしまっていた。`### edit`に修正した。 |
| inspect_record | read「発注明細品目名」が2回連続で記載されていた(コピペミス)。品目コード/
  識別コード/表示コード/製造元名/読み/略称のパターンに合わせ、2回目を「発注明細品目読み」、
  3回目として「発注明細品目略称」を追加した。 |
| purchase_rec | edit「備考」「更新者id」「更新者履歴id」「削除」の対象説明が、直前の
  `inspect_record`からのコピペと見られる「点検整備実施を対象」のままだった。
  「受入実績を対象」に修正した。 |

## 2. モレ・提案(views.mdに記録、未採択)

### 2-1. purchase_rec:「数量」「シンボル」の重複ラベル

read側に「数量」「シンボル」が2回登場する(「発注明細の数量/シンボル」と自テーブル自身の
「数量/シンボル」)。`TransPurchaseRec`自身が`quantity`・`symbol`を独自に持つことをスキーマで
確認しており誤りではないが、ラベルが同一で紛らわしいため、呼び分けを提案として記録した。

### 2-2. inspect_record:サブ説明の欠落・未記載列

- 「点検整備予定詳細の数」にサブ説明が無い(記載漏れの可能性)。
- `TransInspectRecord.transInspectionReportByTransInspectionReportId`(点検整備報告書への参照)
  がviews.mdに記述されていない。

### 2-3. work_plan:見出し名と実態の乖離、TransWorkPlan自体の見出し不在

`work_plan`見出しの列構成(作業実績id・回数・開始・終了・作業数量・作業担当者・設備)は
`TransWorkRecord`(作業実績)型と一致しており、`TransWorkPlan`(生産計画詳細、
`operations_plan`のeditが参照する配列の要素)そのものではないことをスキーマで確認した。
見出し名の変更(`work_record`等)と、`TransWorkPlan`自体を表示・編集する見出しの追加を
提案として記録した。

## 3. 要件0031(operationのRFEパターンをorder/ship_order/purchaseに適用できるか評価)

views.md本文を確認したところ、`order`・`ship_order`・`purchase`のいずれも既に
`### 提案への指示`に「0031再評価」として記録され、**「採択。追加した」まで完了済み**
だった(`### RFE`セクションが3見出しとも既に追加されている)。内容を確認したところ、
editと同等の情報(明細のオブジェクト配列を含む)がRFEにも含まれており、要件0031の意図
(専用の明細編集画面があっても、編集画面を開いた瞬間に現在の明細が見えるようにする)に
沿った構成になっていることを確認した。**本ログでの追加対応は不要と判断した。**

## 4. その他確認事項

- `operations_plan`・`work_plan`は`TransOperationsPlan`・`TransWorkRecord`とほぼ一致しており、
  上記2-3以外の実質的なモレ・エラーは見つからなかった。
- `inspection_sch`・`inspection_sch_detail`はそれぞれ`TransInspectSch`・`TransInspectSchDetail`
  と概ね一致していることを確認した(誤記修正は1節参照)。

## 5. 結論

上記の誤記修正・モレ追加・提案記録をviews.mdへ直接反映した。GraphQL作成・build_runnerの
実行は行っていない。次回、対象見出しのGraphQL作成に進む際は、要件0027・0028(RFE、削除
フラグ条件)を踏まえた実装が必要になる。
