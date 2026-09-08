# 0009: ネストしたミューテーションによる単一更新の調査

対象: 要件0009。`postgraphile-plugin-nested-mutations`・
`postgraphile-plugin-connection-filter@2.3.0` の導入により、Company画面のEditで分割している
複数ミューテーション([0007_view_graphql_log.md](0007_view_graphql_log.md)ログ#8)を
1つのミューテーションにまとめられないか、[source/schema.graphql](../source/schema.graphql)を
調査した。

## 調査方法
`source/schema.graphql`を検索し、`InfoCompanyPatch`・`InfoCompanyInput`等に
`postgraphile-plugin-nested-mutations`由来のフィールド(関係名を使った入れ子フィールド、
例: `<関係名>To<列名>`)が生成されているか、また生成されている場合その入れ子が
どこまで(何ホップ)到達できるかを確認した。

## 調査結果

### 1. nested-mutationsプラグインは有効(外部キーが存在するリレーションに限る)

`InfoCompanyPatch`には、外部キーが実在するリレーションに対応する入れ子フィールドが
生成されていることを確認した。

```graphql
input InfoCompanyPatch {
  ...
  sharedAppellationToSharedAppellationsId: InfoCompanyFk1Input
  historyInfoStaffToUpdateUserHistoryIdAndUpdateUserId: InfoCompanyUpdaterFkInput
}
```

`InfoCompanyFk1Input`は`connectBySharedAppellationsId`・`updateBySharedAppellationsId`・
`create`等を持ち、`updateBySharedAppellationsId`経由で`SharedAppellation`側の
`name`・`pronunciation`・`nickname`(UUID)・`remarks`等を**同一ミューテーション内で**
書き換えられることを確認した(`updateSharedAppellationOnInfoCompanyForInfoCompanyFk1Patch`)。

→ 外部キーが存在する範囲(`info_company.shared_appellations_id -> shared_appellations`)は、
  プラグインにより1ミューテーションでの入れ子更新が**可能**。

### 2. ただし、それ以上先(shared_dictionary・info_address)へは到達できない

`updateSharedAppellationOnInfoCompanyForInfoCompanyFk1Patch`の中身を確認したところ、
`name`・`pronunciation`・`nickname`は依然として素のUUIDスカラーのままで、
`sharedDictionaryToName`のような入れ子フィールドは**生成されていない**。

同様に`InfoCompanyPatch`にも`infoAddressId`(UUIDスカラー)のみで、
`infoAddressToInfoAddressId`のような入れ子フィールドは**生成されていない**。

```graphql
input updateSharedAppellationOnInfoCompanyForInfoCompanyFk1Patch {
  name: UUID          # ← ここで止まる。shared_dictionaryへの入れ子は無い
  pronunciation: UUID  # ← 同上
  ...
}
```

理由: `postgraphile-plugin-nested-mutations`は、通常のリレーションフィールド
(`sharedAppellationBySharedAppellationsId`等)と同じく、**実DBの外部キー制約(またはスマート
コメント)を根拠にリレーションを検出**する。[0007_view_graphql_log.md](0007_view_graphql_log.md)
のログ#1(`shared_appellations.name/pronunciation/nickname -> shared_dictionary`)・
ログ#3(`info_company.info_address_id -> info_address`)で指摘した外部キー欠落は、
プラグインの導入有無に関わらず未解消のままであり、この2つの経路は**プラグインを導入しても
1ミューテーションにまとめられない**。

`postgraphile-plugin-connection-filter`はQuery側の`filter`/`condition`引数を提供するプラグイン
であり、ミューテーションの入れ子可否には影響しない(既存の`allInfoStaffs`/`allInfoOffices`の
`condition: { infoCompanyId: ... }`はこのプラグインによるものと確認済み)。

## 結論

Company画面のEditで実際に分割が必要になっている境界([0007_view_graphql_log.md](0007_view_graphql_log.md)
ログ#8: 「会社名」「読み」= `shared_dictionary`、「郵便番号」「住所1~3」= `info_address`)は、
**いずれも外部キーが存在しないリレーション**であるため、`postgraphile-plugin-nested-mutations`を
導入していても1つのミューテーションにはまとめられない。プラグイン導入は
`info_company.shared_appellations_id -> shared_appellations`のように**外部キーが存在する
リレーション**の入れ子更新を可能にするものであり、Company画面が抱えるボトルネック
(外部キー欠落)そのものを解消するものではない。

→ 要件0009の条件「調査結果が可能と判断した場合は0007を実行」に照らし、**今回は「不可能」と
判断し、0007(`graphql/Company/Read.graphql`・`Edit.graphql`)の再実行は行わない**。
現行の4分割ミューテーション構成([graphql/Company/Edit.graphql](../graphql/Company/Edit.graphql))
を維持する。

## 補足: 今後外部キーが追加された場合の対応

[0003_risk_assessment.md](0003_risk_assessment.md)・[0007_view_graphql_log.md](0007_view_graphql_log.md)
の対応方針どおり、以下の外部キー(またはスマートコメント)がDB側に追加されれば、
`postgraphile-plugin-nested-mutations`により本画面の一部ミューテーションを統合できる。

| 追加すべき外部キー | 統合できる範囲 |
|---|---|
| `shared_appellations.name/pronunciation/nickname -> shared_dictionary.shared_dictionary_id` | 「会社名」「読み」の更新を`UpdateCompanyProfile`(または新設する会社本体ミューテーション)へ統合可能 |
| `info_company.info_address_id -> info_address.info_address_id` | 「郵便番号」「住所1~3」の更新を同上ミューテーションへ統合可能 |

上記が実現した場合は、本調査(要件0009)を再度参照のうえ、要件0007を再実行しミューテーションを
1つにまとめることを推奨する。
