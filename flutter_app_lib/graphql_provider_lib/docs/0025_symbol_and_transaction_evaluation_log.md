# 0025 実施ログ(symbol列の反映・受注/出荷/発注/非経常/資材計画系7見出しの評価)

指示: 「symbol列があるテーブルに該当するview.mdの画面項目にsymbolを追加することを許可しつつ、
0025を実行してください。ただし、inspection_schは途中のためスキップしてください。」

要件0029・0030(views.mdの評価・参照で発見されたモレ・提案は、docsだけでなくviews.mdの該当
"##見出し"項目にも追記する)に従い、**今回の修正・記録はすべてviews.md本文に直接反映した**。
本ログはその内容の要約・裏付けを記録する。GraphQLの作成・build_runnerの実行は行っていない
(要件0030の先例、および要件0027・0028でGraphQL変換ルール自体が大きく変わった直後であることを
踏まえ、まずviews.mdの整備を優先した)。

## 1. symbol列の一括追加(全見出し共通)

要件0026(2026/09/17実施分)で、`lib/graphql/schema.graphql`のほぼ全テーブルに`symbol`
(`String`、説明「リニアシンボル」、バーコード用の値)列が追加されたことを確認済みだった。
今回、views.mdが対象とする全34見出しのうち、**inspection_schを除く33見出し**の主テーブルすべてに
`symbol`列が存在することをスキーマで確認し、「シンボル」項目を機械的に追加した。

- read側: 32見出し(全read保有見出し)の「更新日」直前に追加
- edit側: 31見出し(全edit保有見出し、read専用のoperation/equipment_inspection_operationを除く)
  の「備考」直前に追加
- equipment_inspection_operation_editor(要件0027・0028によりreadが無いRFE専用の編集画面)は
  editのみに追加

## 2. 新規見出し(order, order_detail, ship_order, purchase, purchase_detail, unrecognized,
   resource_plan)の評価

いずれもトランザクション系の画面で、対応する物理型は`TransOrder`・`TransOrderDetail`・
`TransShipOrder`・`TransPurchase`・`TransPurchaseDetail`・`TransUnrecognized`・
`TransResorcePlan`(スキーマ自体に"Resource"ではなく"Resorce"というタイポがある)。

### 2-1. order・ship_orderの「顧客id」「顧客窓口id」の説明を訂正

views.mdの記述「利害関係者履歴マスタ」「利害関係者窓口履歴マスタ」は誤解を招く表現だった。
実際のスキーマでは、`TransOrder.mstrStakholderId`(スキーマ自体のタイポ、"Stakeholder"では
なく"Stakholder")・`mstrStakeholderConcatId`(同、"Contact"ではなく"Concat")は、履歴テーブルの
主キーではなく**現行の利害関係者(窓口)マスタへの直接スカラー参照**である。「顧客コード/名/
読み/略称」等が履歴マスタ(`customerHistoryId`+`mstrStakholderId`の複合キー経由の
`HistoryMstrStakeholder`)を必要とするのとは別物のため、「顧客id」自体の説明を
「利害関係者マスタへの直接参照(mstrStakholderId、履歴ではない)」に訂正した(order・
ship_orderの計4箇所)。

### 2-2. resource_plan:「非計上明細id」のモレ(重大)

`TransResorcePlan`には`受注明細ID`(`transOrderDetailId`、任意)と`非計上明細ID`
(`transUnrecognizedDetailId`、任意)の**両方**の列が存在する(どちらか一方が入る、または
両方null)。views.mdには「受注明細id」のみが記載され、「非計上明細id」への参照列が完全に
欠落していたため、要件0025の「参照列はidを含むオブジェクトへ変換できなければならない」に
基づき、モレとしてread・edit両方に追加した(「非計上明細」オブジェクトをeditにも追加)。

### 2-3. resource_plan:「非経常」というコピペ誤記を「資材計画」に修正

edit側の備考・更新者id・更新者履歴id・削除の対象説明が、直前の見出し(unrecognized、
論理名「非経常」)からのコピペと見られる「非経常を対象」のままだった。「資材計画を対象」に
修正した。

### 2-4. resource_plan:提案(未採択、ユーザー判断待ち)

- `registerAt`(登録日時)列がスキーマに存在するがviews.mdに記述が無い。他のトランザクション
  系画面の「受注日」「登録日」に合わせて追加するか確認が必要。
- read「顧客コード/名/読み/略称」「顧客発注番号」「管理コード1/2/3」は「受注明細の受注の...」
  経由の設計だが、資材計画が非計上明細id経由(受注に紐づかない)の場合はこの経路が存在せず
  nullになる。非計上由来のケースでこれらの項目をどう扱うか確認が必要。

views.mdの`### 提案への指示`に記録済み、views.md本文は未変更(採否未確定のため)。

### 2-5. unrecognized:「決定日」のモレ

`decisionDate`(決定日)列がスキーマに存在するが、views.mdには記述が無かった(管理コード1〜3と
納期の間に位置する列)。モレとしてread・edit両方に追加した。

### 2-6. purchase_detail:既存の提案は採択済みで対応不要

`資材計画ID`(`transResorcePlanId`)に関する提案(要件0030評価で記録)は、views.md本文に
既に「資材計画id」「在庫発注」として反映済み(採択済み)であることを確認した。追加対応なし。

### 2-7. 上記以外(order, order_detail, ship_order, purchase)

symbol以外の実質的なモレ・エラーは発見しなかった。「更新日」「削除」等の共通項は要件0028
どおりread側に既に含まれていることを確認済み。

## 3. inspection_sch

指示どおりスキップした。中身は見出しのみで未着手(`1.`のみの空行)であることを確認し、
一切変更していない。

## 4. 既存26見出し(info_company〜equipment_inspection_peration_task)の再確認

- 要件0028(readに削除フラグ列が必須)は、全見出し(read保有見出し全数)で既に「削除」項目が
  含まれていることを確認した。追加対応なし。
- 要件0026で判明した`MstrItem.mstrItemKindId`・`MstrItemOperationTask.mstrItemId`の必須化は、
  対応する`Patch`型が引き続き任意のままであることを既に確認済み(docs/0026_schema_fetch_log.md
  追記3参照)であり、views.mdの記述変更は不要と判断した。

## 5. 結論

views.mdへのsymbol列反映(33見出し)、新規7見出しの評価・モレ修正・表現訂正・提案記録を
実施した。GraphQL作成・build_runnerの実行は行っていない。次回、対象見出しのGraphQL作成に
進む際は、要件0027・0028(RFE、削除フラグ条件)を踏まえた実装が必要になる。
