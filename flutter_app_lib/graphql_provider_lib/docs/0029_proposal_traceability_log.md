# 0029 実施ログ(過去ログのみに記録された提案をviews.mdへ転記)

指示(要件0029):
> view.mdの評価、参照で発見された提案は、doc以下だけではなくview.mdの該当項目に"##見出し"として追記する
> (トレースが困難になるため)。

## 1. 対象の洗い出し

`docs/`配下の全ログ(`0005`〜`0028`)を「提案」「推奨」「要確認」「気付き」「設計判断」「注意点」で
検索し、views.mdの現状と突き合わせた。

- `0007_view_graphql_log.md`#6・#7: CLAUDE.md本文(共通名前仕様・仕様の共通項)とDBの不一致に関する
  指摘であり、views.mdではなくCLAUDE.md側の修正提案のため対象外。
- `0009_nested_mutation_investigation.md`: 要件0009自体の結論(ネストミューテーション採用)であり、
  要件0007実行によってGraphQLへ反映済み。views.mdへの追記事項なし。
- `0021_view_graphql_log.md`#11: 「`InfoStaff.info_office_id`削除に伴うviews.md側の整合は別途要確認」と
  記録されていたが、現行views.mdの`info_staff`見出しには元々「事業所名」「事業所id」の記述が無く、
  該当する不整合は存在しない(確認のみ、転記不要)。
- `0022_0023_views_schema_overview_log.md`: 「スキーマ確定後に要件0021同様の詳細検証を推奨する」という
  一般的な運用推奨であり、要件0025で実施済み。転記対象の具体的な提案なし。
- `0025_view_graphql_evaluation_log.md`8-3: **1対多参照(`customer`/`supplier`の「提供」、`item`の
  「品目提供」)は、実装時にジョインテーブル自身のid(`mstrStakeholderProvisionId`/`mstrItemProvisionId`)と
  参照先id(`infoProvisionId`)の両方を取得するGraphQLにすること**、という実装上の注意点。views.mdの
  「提供(結合)」「品目提供(結合)」というラベルのみでは実装時に見落とされる可能性があるため、**転記対象と
  判断した。**
- `0025_task_operation_inspection_evaluation_log.md`5-1〜5-3: task「工程場所」の多重度・「親id」編集、
  operation「工数」のgetプロパティ化は、既に`## task`・`## operation`へ`### 提案への指示`として
  転記済み(前回セッションで対応済み、本ログでは変更なし)。
- `0028_views_md_evaluation_report.md`: 本ログ自体がviews.mdとの突き合わせ評価であり、指摘済みの誤記・
  モレは既にviews.md本文へ直接反映済み(ラベル修正等)。「(結合)」表記統一など、ラベル変更のみで完結する
  ものは誤記修正と同様に扱い、別途`### 提案への指示`は不要と判断した。

## 2. views.mdへの転記内容

| 見出し2 | 追記内容 |
|---|---|
| `customer` | `### 提案への指示`へ「提供(結合)は1対多の参照であり、実装時はジョインテーブル自身のid
  (`mstrStakeholderProvisionId`)と参照先id(`infoProvisionId`)の両方を取得するGraphQLにすること」を追加。
  採択(実装時の注意点として)。 |
| `supplier` | 同上(`mstrStakeholderProvisionId`)。 |
| `item` | `### 提案への指示`を新設し、「品目提供(結合)は1対多の参照であり、実装時はジョインテーブル自身のid
  (`mstrItemProvisionId`)と参照先id(`infoProvisionId`)の両方を取得するGraphQLにすること」を追加。
  採択(実装時の注意点として)。 |

## 3. 結論

今回転記が必要だったのは3見出し(customer, supplier, item)。他のログの「提案」相当の記述は、
既にviews.md本文へ反映済み、対象外(CLAUDE.md向け)、または現状不整合なしのいずれかであり、追加の
転記は不要と判断した。GraphQL作成・build_runner実行は行っていない。
