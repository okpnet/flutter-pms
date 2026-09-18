# 0025 実施ログ(コンテナ体系/作業実績ビジター/受入実績ビジター見出しの評価)

指示: 「0026の実行。完了後0025を実行。」(0026は[docs/0026_schema_fetch_log.md](0026_schema_fetch_log.md)
追記5を参照)

前回の[docs/0025_inspection_and_production_evaluation_log.md](0025_inspection_and_production_evaluation_log.md)
以降、views.mdに以下の変化があったため、今回はこれらを対象に評価した。要件0029・0030に従い、
発見事項はviews.md本文に直接反映した。GraphQLの作成・build_runnerの実行は行っていない。

- `work_plan`見出しが`work_record`に改名された(前回0025評価の提案「見出し名を実態
  (`TransWorkRecord`)に合わせる」が採択された)。ただし、もう一つの提案(`TransWorkPlan`
  自体を表示・編集する見出しの追加)は**非採択**と明記されていることを確認した。
- 新規見出し`work_rcord_visiter`・`purchase_rec_visitor`・`container_tree`が追加された
  (要件0026 追記5で判明した`TransContainer`のsharedAppellationsId移行、および
  `TransWorkRecordVisiter`・`TransPurchaseRecVisiter`への対応)。

## 1. container_tree の評価

対応する物理型は`TransContainer`(自身)+`TransContainerTree`(体系マスタ、親子関係)。
org_res_location等と同じ「体系マスタ経由の親子関係を1画面にまとめる」パターンで、
概ね妥当な設計だった。以下を修正した。

| 内容 | 対応 |
|---|---|
| `### REF`という見出しがあったが、これは`### RFE`の誤記だった | `### RFE`に修正 |
| `TransContainer.code`(必須列`String!`)がread・RFE・editのいずれにも記載が無かった
  (重大なモレ) | read・RFE・editの3箇所すべてに「コード」を追加 |

## 2. work_rcord_visiter の評価(エラー)

`TransWorkRecordVisiter`型を確認したところ、`transProductDetailId`列が`String!`型
(他の参照列は通常`UUID`)であり、対応する単一参照リレーション
(`transProductDetailByTransProductDetailId`等)がschema.graphql上に**存在しない**ことを
確認した。要件0026(2026/09/18実施分、追記4)で`TransProduct`・`TransProductDetail`型が
削除されたことを確認済みであり、その余波でこの列が参照先を失い孤立した(Postgraphileが
外部キー制約を解決できずString型にフォールバックしたと見られる)ものと判断した。

views.mdの「生産計画詳細: 生産計画詳細のオブジェクト」という項目は、この孤立列を参照解決
しようとしている状態であり、現状のスキーマでは変換不可能である。この列が今後どう扱われる
べきか(削除された`TransProductDetail`の後継テーブルへの参照に置き換わるのか、そもそも
不要な列なのか)は業務要件の確認が必要なため、**エラーとして記録**し、views.md本文
(「生産計画詳細」項目自体)は変更せずに残した。

併せて、見出し名「work_rcord_visiter」が「work_record_visiter」の誤字(rが1つ抜けている)
と見られる点を提案として記録した(未採択)。

## 3. purchase_rec_visitor の評価

対応する物理型`TransPurchaseRecVisiter`を確認したところ、views.mdの記載(受入実績ビジターid・
受入実績オブジェクト・棚ビジターオブジェクト・数量・シンボル・備考等)と完全に一致しており、
モレ・エラーは見つからなかった。

## 4. 結論

`container_tree`の誤記修正・モレ追加をviews.mdへ直接反映した。`work_rcord_visiter`の
参照解決不能な列は、業務要件の確認が必要なためエラーとして記録するに留め、views.md本文は
変更していない。`purchase_rec_visitor`は対応不要。GraphQL作成・build_runnerの実行は行って
いない。

## 追記: work_record_visiter のエラー解消確認(2026/09/18、「0026実行。完了後0025実行。」の指示)

要件0026(2026/09/18、追記6)で`TransWorkRecordVisiter.transProductDetailId`列自体が
スキーマから削除されたことを確認した。views.mdの現在の状態を確認したところ、以下2点が
既にユーザー側で対応済みであることを確認した。

1.  見出し名が「work_rcord_visiter」から「work_record_visiter」に修正済み(前回提案の採択)。
2.  editの「生産計画詳細」項目自体が削除済み(前回エラーとして記録した参照解決不能な項目は、
    項目そのものの削除という形で解消された)。

対応するPatch型(`TransWorkRecordVisiterPatch`)の`transVisiterId`は引き続き`UUID`(任意)の
ままであることを確認し、必須化(`UUID!`)された出力型側の変更はviews.md・GraphQLの記述に
影響しないと判断した。

views.mdの`work_record_visiter`見出しの`### 提案への指示`に、上記解消状況の確認結果を追記した。
他の見出し(全41見出し、行数2214行、前回評価時と同数)に新たな変更は見つからなかった。
GraphQL作成・build_runnerの実行は行っていない。
