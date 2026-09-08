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

## 追記(要件0010再調査・2026/09/09)

要件0010により[source/schema.graphql](../source/schema.graphql)が更新されたため、上記「補足」の
外部キーが実際に追加されたかどうかを再調査した。

### 追加された外部キーの確認

| # | 追加すべき外部キー(上記表) | 再調査結果 |
|---|---|---|
| 1 | `shared_appellations.(name/pronunciation/nickname) -> shared_dictionary` | **追加を確認**。列名も`name`/`pronunciation`/`nickname`から`sharedDictionaryNameId`/`sharedDictionaryPronunciationId`/`sharedDictionaryNicknameId`に変更されており、CLAUDE.mdの[共通名前仕様](../CLAUDE.md#共通名前仕様)の記載(`shared_dictionary_name_id`等)と一致した([0007_view_graphql_log.md](0007_view_graphql_log.md)ログ#6も解消)。`SharedAppellation`型に`sharedDictionaryBySharedDictionaryNameId`等のリレーションフィールドが生成されている。 |
| 2 | `info_company.info_address_id -> info_address` | **追加を確認**。`InfoCompany`型に`infoAddressByInfoAddressId`が生成されている。 |

これに伴い、nested-mutationsプラグインの入れ子フィールドも1ホップ深く生成されるようになったことを確認した。

```graphql
# InfoCompanyPatch(要件0010時点)
input InfoCompanyPatch {
  ...
  sharedAppellationToSharedAppellationsId: InfoCompanyFk1Input
  infoAddressToInfoAddressId: InfoCompanyFk2Input   # ← 新規: info_addressへの入れ子
  ...
}

# InfoCompanyFk1Input.updateBySharedAppellationsId の先(SharedAppellation更新パッチ)
input updateSharedAppellationOnInfoCompanyForInfoCompanyFk1Patch {
  ...
  sharedDictionaryToSharedDictionaryNameId: SharedAppellationsFk1Input          # ← 新規
  sharedDictionaryToSharedDictionaryPronunciationId: SharedAppellationsFk3Input # ← 新規
  ...
}
```

`InfoCompany -> SharedAppellation -> SharedDictionary`、`InfoCompany -> InfoAddress`のいずれも
`updateBy<PK>Id`で対象レコードのPKとパッチを指定でき、末端(`SharedDictionaryPatch`の`ja`/`en`、
`InfoAddressPatch`の`zipCode`/`address1`/`address2`)まで1つの`updateInfoCompanyByInfoCompanyId`
ミューテーションの中に入れ子で記述できることをスキーマ上で確認した。

なお、ログ#2(`history_info_staff.shared_appellations_id -> shared_appellations`、共通項「更新者名」
のためのリレーション)は要件0010時点でも**未解消**。ただし更新者名はEdit対象の項目ではなく
Read専用の共通項であるため、本ミューテーションの統合可否には影響しない。

### 結論(更新)

「補足」に記載した2件の外部キーがいずれも追加されたことを確認したため、要件0009の条件
「調査結果が可能と判断した場合は0007を実行」に照らし、**今回は「可能」と判断し、要件0007を
再実行した**。[graphql/Company/Read.graphql](../graphql/Company/Read.graphql)・
[graphql/Company/Edit.graphql](../graphql/Company/Edit.graphql)は、Editを4分割ミューテーション
から1つの`UpdateCompany`ミューテーションへ統合する形で作成し直した。詳細は
[0007_view_graphql_log.md](0007_view_graphql_log.md)の追記を参照。
