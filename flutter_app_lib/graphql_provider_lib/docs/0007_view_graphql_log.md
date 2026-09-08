# 0007_画面仕様→GraphQL作成ログ(要件0006の手順に基づく)

対象: [画面仕様](../source/views.md) の "Company" 項目(要件0007)から
`graphql/Company/Read.graphql` ・ `graphql/Company/Edit.graphql` を作成するにあたり、
要件0006「ただし、graphql作成前に問題がある箇所はログを残す」に従い、
作成前に見つかった問題点を記録する。

参照した実DBスキーマ: [docs/06_cteate_test.sql](06_cteate_test.sql)
(容量が大きいため、実際にPostgraphileが生成するGraphQLスキーマそのものは未確認。
[CLAUDE.md](../CLAUDE.md) 仕様15のとおり、当CREATE文から構造を読み取って作成している)

## 問題一覧

| # | 区分 | 内容 | Company画面への影響 |
|---|---|---|---|
| 1 | DBスキーマ不足(最重要) | `shared_appellations.name` / `pronunciation` / `nickname` から `shared_dictionary.shared_dictionary_id` への外部キー制約が `06_cteate_test.sql` に存在しない。Postgraphileはリレーションの自動検出に外部キー制約(またはスマートコメント)を要するため、現状のDBのままでは[共通名前仕様](../CLAUDE.md#共通名前仕様)のネスト(`sharedDictionaryByName`等)がPostgraphile側で生成されない可能性が高い。 | 「会社名」「読み」の取得・更新すべて、および共通項「更新者名」も含め、名前解決の仕組み全体が機能しない。 |
| 2 | DBスキーマ不足 | `history_info_staff.shared_appellations_id` から `shared_appellations.shared_appellations_id` への外部キー制約が存在しない(`info_staff`・`info_office`等の同名列にはFK1制約があるが、`history_info_staff`のみ欠落)。 | 共通項として全クエリに含める「更新者名」(`update_user_id`,`update_user_history_id` → `history_info_staff` → `shared_appellations` → name)のうち、最後のホップが解決できない。 |
| 3 | DBスキーマ不足 | `info_company.info_address_id` から `info_address.info_address_id` への外部キー制約が存在しない。 | 「郵便番号」「住所1~3」の取得・更新ができない。 |
| 4 | DBスキーマ不足 | `info_office.info_company_id` / `info_staff.info_company_id` から `info_company.info_company_id` への外部キー制約が存在しない。 | 「所属するスタッフ数」「事業所のリスト」の逆参照(Relay Connection)が生成されない。 |
| 5 | 画面仕様とDBの不一致 | [画面仕様](../source/views.md)は「住所1~3」(3行)を要求しているが、`info_address`テーブルには`address1`,`address2`の2列しか存在せず、`address3`に相当する列がない。 | Read/Editとも住所3行目を提供できない。 |
| 6 | CLAUDE.md記述とDBの不一致 | [共通名前仕様](../CLAUDE.md#共通名前仕様)は列名を`shared_dictionary_name_id`/`shared_dictionary_pronunciation_id`/`shared_dictionary_nickname_id`と表記しているが、実際の`shared_appellations`テーブルの列名は`name`/`pronunciation`/`nickname`(いずれも`shared_dictionary_id`を指すuuid列と推測)である。 | GraphQLのフィールド名(`sharedDictionaryByName`等)はCLAUDE.mdの表記ではなく実列名から命名した。CLAUDE.md側の記述更新を推奨。 |
| 7 | CLAUDE.md記述とDBの不一致 | [仕様](../CLAUDE.md#仕様)の共通項チェーンは「`(update_user_id,update_user_history_id)->info_staff(shared_appellations_id)`」と記載しているが、実際の外部キー制約は`history_info_staff`(複合キー `history_id,info_staff_id`)を参照しており、`info_staff`(現行テーブル)ではない。 | 更新者名は更新時点のスナップショット(履歴テーブル)から取得する前提でGraphQLを作成した。CLAUDE.md側の記述更新を推奨。 |
| 8 | 設計上の課題 | 「会社名」「読み」の更新(Edit)は`info_company`だけでなく`shared_dictionary`の2レコード(name用・pronunciation用)にもまたがる。Postgraphileの自動生成ミューテーションはテーブル単位のため、単一ミューテーションでは完結せず、アプリケーション側で複数ミューテーションを組み合わせる必要がある。 | `Edit.graphql`は`info_company`本体・`shared_dictionary`(×2)を別ミューテーションとして分割作成した。 |
| 9 | 未検証事項 | Postgraphileが実際に生成するフィールド名(テーブル名/列名からのcamelCase変換、リレーション名のインフレクション等)は、生成済みスキーマが10MBを超え本タスクでは直接参照できないため([CLAUDE.md](../CLAUDE.md)仕様15)、V4の標準命名規則から推定した値であり未検証。 | `Read.graphql`/`Edit.graphql`の全フィールド名は暫定。実際のスキーマ生成後に照合が必要。 |

## 対応方針

- #1〜#4(外部キー制約の欠落)は本ライブラリの責務外(DB構成の変更)であり、[0003_risk_assessment.md](0003_risk_assessment.md)の判定基準に沿えば「低減処置(DB構成変更)で対応可能」に分類される。DB側に外部キー制約(またはPostgraphileスマートコメント)を追加する対応を推奨する。
- #5(住所3行目)はDB構成変更(`info_address.address3`列追加)か、画面仕様側の項目見直しのいずれかで解消する。
- #6・#7はCLAUDE.mdの記述と実DBの乖離であり、実DBを正とし、CLAUDE.mdの記述更新を別途検討する。
- #8はライブラリの仕様(コンバーター設計)に関わるため、`Edit.graphql`は複数ミューテーションに分割する形で作成した。
- 上記を踏まえ、`graphql/Company/Read.graphql`・`graphql/Company/Edit.graphql`は「外部キーが追加された後に有効になる設計」として作成し、該当箇所に本ログの番号を参照するコメントを付与した。

## 追記(要件0008適用後の再検証・2026/09/08)

要件0008により[このライブラリの仕様](../CLAUDE.md#このライブラリの仕様)の参照先が
`docs/06_cteate_test.sql`(実DBのCREATE文からの推定)から
[source/schema.graphql](../source/schema.graphql)(Postgraphileが実際に生成したスキーマ)へ
変更されたため、本ログの問題一覧を実スキーマと照合し、`graphql/Company/Read.graphql`・
`graphql/Company/Edit.graphql`を再作成した(要件0007再実行)。

### 実スキーマ照合の結果

| # | 再検証結果 |
|---|---|
| 1 | 確認: `SharedAppellation`型に`name`/`pronunciation`/`nickname`(いずれも`UUID`スカラー)はあるが、`shared_dictionary`への外部キー(`sharedDictionaryByName`等)は実スキーマにも存在しない。引き続き別クエリ(`CompanyReadDictionary`)で解決する構成とした。 |
| 2 | 確認: `HistoryInfoStaff`型に`sharedAppellationsId`(`UUID`スカラー)はあるが、`SharedAppellation`への外部キーは実スキーマにも存在しない。別クエリ(`CompanyReadAppellation`)で解決する構成とした。 |
| 3 | 確認: `InfoCompany`型に`infoAddressId`(`UUID`スカラー)はあるが、`InfoAddress`への外部キー(`infoAddressByInfoAddressId`相当のリレーションフィールド)は実スキーマにも存在しない。別クエリ(`CompanyReadAddress`、Query直下の`infoAddressByInfoAddressId(infoAddressId: ...)`)で解決する構成とした。 |
| 4 | 確認: `InfoOffice.infoCompanyId`・`InfoStaff.infoCompanyId`から`InfoCompany`への外部キー(逆参照Connection)は実スキーマにも存在しない。`allInfoOffices`/`allInfoStaffs`の`condition: { infoCompanyId: ... }`で絞り込む構成(`CompanyReadOffices`・`CompanyReadStaffCount`)とした。 |
| 5 | 確認: `InfoAddress`型に`address3`に相当する列は実スキーマにも存在しない(`address1`/`address2`のみ。他に`bill`(建物)/`phone`/`faxNumber`はあるが画面仕様に対応項目なし)。住所3行目は引き続き対象外。 |
| 6 | 訂正: 実スキーマでは型・フィールド名は`SharedAppellation`/`sharedAppellationBySharedAppellationsId`(**単数形**)であり、旧版で使用していた`sharedAppellationsBySharedAppellationsId`(複数形)は実際には存在しないフィールド名だった。`Read.graphql`を単数形に修正した。 |
| 7 | 確認: `InfoCompany`型に`historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId`のリレーションは実スキーマにも存在する(これはCLAUDE.md記述どおり有効)。ただし#2のとおりその先の`sharedAppellationsId`からのリレーションは存在しない。 |
| 8 | 変更なし: 会社名/読みの更新が`shared_dictionary`にまたがる点は実スキーマでも同様。`UpdateSharedDictionaryBySharedDictionaryIdInput`等の入力型・`sharedDictionaryPatch`等のフィールド名も実スキーマと照合し一致を確認した。 |
| 9 | 解消: 要件0008により`source/schema.graphql`を直接参照できるようになったため、フィールド名の推定という前提がなくなった。本再検証で照合したフィールド・型・入力型はすべて実スキーマの記載に基づく。 |

### 主な変更点

- 旧版は`InfoCompany`単体クエリの中に存在しないリレーション(`infoAddressByInfoAddressId`・
  `infoStaffsByInfoCompanyId`・`infoOfficesByInfoCompanyId`・`sharedDictionaryByName`等)を
  ネストして記述しており、実スキーマに対して実行すると失敗する内容だった。
- 新版`Read.graphql`は、実際にリレーションが存在する範囲(`sharedAppellationBySharedAppellationsId`・
  `historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId`)のみを1クエリにネストし、
  リレーションが存在しない範囲(住所・スタッフ数・事業所リスト・呼称セット・辞書)は
  それぞれ独立したクエリ(`CompanyReadAddress`・`CompanyReadStaffCount`・
  `CompanyReadOffices`・`CompanyReadAppellation`・`CompanyReadDictionary`)に分割し、
  アプリケーション側(コンバーター)で組み合わせて1つのドメインモデルに変換する構成とした。
- `Edit.graphql`は入力型・パッチ型のフィールド名が実スキーマと一致することを確認し、
  コメントの通し番号(1~4)のずれのみ修正した。

### 対応方針(継続)

#1~#4は引き続き本ライブラリの責務外(DB構成変更)であり、外部キー(またはPostgraphile
スマートコメント)の追加を推奨する。#5は住所3行目のDB構成変更または画面仕様見直しのいずれかで
解消する。低減処置の判定は[0003_risk_assessment.md](0003_risk_assessment.md)の基準に準拠する。
