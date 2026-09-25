# 0034 実施ログ(view.yaml → GraphQL変換の評価。この段階ではGraphQLは作成しない)

## 指示

> 0034の実行

要件0034(CLAUDE.md):
> [画面仕様](#画面仕様)に従いGraphQLの再生成のテストを行い、GraphQLを作成するための評価を実施。この段階ではGraphQLは作成しない。
> GraphQLへの変換できないエラーは変換できない理由をログへ記録し、評価後、エラーが無い状態になったときにGraphQLを作成し、GraphQLからモデル生成を実行する。変更を含んでいる"##"を評価、生成の対象とする。

## 0. 前提・評価範囲

現行の[画面仕様](#画面仕様)(要件0033)は`source/view.yaml`(定義本体)・`source/schema.json`
(構造検証用JSON Schema)・`source/27_yaml_to_graphql_conversion_rules.md`(変換ルール、
2026-09-26〜27に7回改訂)の3点で構成される。旧`views.md`方式の"##見出し"に相当する単位は
存在しないため、本評価では**`view.yaml`のトップレベルキー(YAMLアンカーを持つ共有アーム定義、
および`Page`系の画面定義)ごと**に評価する。

`view.yaml`はこれまで要件0033で`CompanyPage`のみを対象に部分的に検証されていたが、
`27_yaml_to_graphql_conversion_rules.md`はその後(`pick`・`output`・`pagination`の追加)も
改訂が続いており、また[要件0026(本日実施)](0026_schema_fetch_log.md追記10)で
`InfoCompany.ceo`・`InfoAddress.address1`/`address2`/`bill`が`String`から`UUID`
(shared_appellations参照)へ変更されたことで、0033で「実スキーマと不整合」として記録した
前提そのものが変わった。このため`view.yaml`の**全12定義**を対象に、現行の
`lib/graphql/schema.graphql`(0026本日の再取得結果)と突き合わせて再評価した。

検証方法: `schema.json`によるYAML構造の静的妥当性確認に加え、`27_yaml_to_graphql_conversion_rules.md`
の各ルール(3-1引数名衝突、6-2 `using`一意性、6-4 `pick`実在性、7 edit書き込み対象のid充足)を
`lib/graphql/schema.graphql`の型定義と手動で突き合わせた。

## 1. 定義ごとの評価結果

凡例: ✅ 問題なし / ⚠ 参考(エラーではない) / ❌ 変換できないエラー

### 1-1. `dictionaryLabel`(read、共有アーム) ❌

`columns[].value.columns[].language`(`from: shared_language_code`, `requiredWhere: [code]`,
`output: false`)は、`slc.code = $code`をLATERALサブクエリのJOIN/WHERE句へ直接埋め込むことを
前提にしているが、実スキーマの`SharedDictionaryValueCondition`/`SharedDictionaryValueFilter`は
`sharedLanguageCodeId: UUID`(結合先`SharedLanguageCode.code`ではなく`SharedDictionaryValue`
自身のUUID列)でのフィルタしか提供せず、postgraphile-plugin-connection-filterの入れ子フィルタ
(`sharedLanguageCodeBySharedLanguageCodeId: SharedLanguageCodeFilter`)も存在しない。
標準のPostGraphile GraphQL引数として`code`を直接反映する経路が無い。

要件0033(2-3節)で記録済みの問題と同一。[要件0026(本日)](0026_schema_fetch_log.md)で
`SharedDictionaryValue`/`SharedLanguageCode`関連にHistory系テーブルが追加されたが、
`SharedDictionaryValueCondition`/`Filter`自体の絞り込み能力には変化が無く、**未解決のまま**。

**対応案(未適用)**: 0033で採用した2段階解決方式(`$jaLanguageCodeId`/`$enLanguageCodeId`を
アプリケーション側で事前解決し`condition: { sharedLanguageCodeId: ... }`に使う)を踏襲する
か、`27_yaml_to_graphql_conversion_rules.md`側の設計(`requiredWhere`を直接SQLへ埋め込む)を
実現するバックエンド側カスタムリゾルバ追加を検討する。本ライブラリ単独では解決できない。

この❌は`dictionaryLabel`を参照する全ての定義(`appellationLabels`・`addressFields`・
`CompanyPage`)に伝播する。

### 1-2. `dictionaryEdit`(edit、共有アーム) ❌

ルートノード(`from: shared_dictionary`)の`columns`が`value`(toMany、shared_dictionary_value)・
`remarks`・`update_user_id`・`update_user_history_id`・`remove`のみで、**`shared_dictionary_id`
自身を含んでいない**。

実スキーマの`SharedAppellationsFk1Input`(shared_appellationsからshared_dictionaryへの入れ子
ミューテーション入力)を確認したところ、既存の`shared_dictionary`行を更新する
`updateBySharedDictionaryId`は`sharedDictionaryId`(PK)を明示的に要求する構造になっており、
「FKで既に紐づいているから暗黙にupdate対象が特定できる」わけではない(`connectBySharedDictionaryId`
等も同様にPKが必要)。`shared_dictionary_id`を持たない現状の`dictionaryEdit`では、
既存の`shared_dictionary`行を**更新できず**、`create`(新規作成して繋ぎ替え)しか選べない。
`info_company`の名前(shared_appellations)編集で「既存の辞書行を更新する」ケースが
成立しない。

要件0025の「editが含む参照列は各テーブルのidを含むオブジェクトへ変換できなければならない」
という原則に反する、新規に確認した不備(0033時点では未検出)。

**対応案(未適用)**: `dictionaryEdit`の`columns`に`shared_dictionary_id`を追加する。

この❌は`dictionaryEdit`を参照する`dictionaryRFE`・`appellationLabelsEdit`・
`appellationLabelsRFE`・`CompanyPageEdit`(ceoの入れ子経由)に伝播する。

### 1-3. `dictionaryRFE`(RFE = `<<: *dictionaryEdit`) ❌(1-2を継承)

マージ自体は`<<: *dictionaryEdit`(既存アンカーの正しい参照)であり構文上の問題は無い。
1-2のエラーをそのまま継承する。

### 1-4. `appellationLabelsEdit`(edit、共有アーム) ❌(1-2を継承)

ルート自身は`requiredWhere: [shared_appellations_id]`を持ち、更新対象の`shared_appellations`
行を一意に特定できるため、この階層自体にidの不足は無い(✅)。ただし`name`/`pronunciation`/
`nickname`列(`<<: *dictionaryEdit`)経由で1-2のエラーを継承する(❌)。

⚠参考: `name:`識別子に`pronunciatione`・`nicknam`という誤字があるが、`as: pronunciation`/
`as: nickname`で出力名は正しく上書きされており、出力・`using`(`shared_dictionary_pronunciation_id`/
`shared_dictionary_nickname_id`、これは誤字の影響を受けない)には影響しない。将来の保守性の
ため修正が望ましいが変換エラーではない。

### 1-5. `appellationLabelsRFE`(RFE = `<<: *appellationLabelsEdit`) ❌(1-4を継承)

マージは正しい参照。1-4のエラーをそのまま継承する。

### 1-6. `appellationLabels`(read、共有アーム) ❌(1-1を継承)

`shared_appellations_id`(プレーン列)は✅。`name`/`pronunciation`/`nickname`列
(`<<: *dictionaryLabel`)経由で1-1のエラーを継承する。

⚠参考: `name: npronunciatione`の誤字があるが`as: pronunciation`で出力名は正しい
(1-4と同様、変換エラーではない)。

### 1-7. `addressFields`(read、共有アーム) ❌(新規、要件0026本日の変更で顕在化)

`address1`/`address2`/`bill`の3つの`columnEntry`がいずれも`<<: *appellationLabels`で
`shared_appellations`へマージしているが、**いずれも`using`を指定していない**。

[要件0026本日](0026_schema_fetch_log.md追記10)の確認により、実スキーマの`InfoAddress`は
`address1`/`address2`/`bill`という**3本の独立したFK**(いずれも`shared_appellations`へ)を
持つことが判明した(`sharedAppellationByAddress1`/`sharedAppellationByAddress2`/
`sharedAppellationByBill`が個別に存在)。27_yaml_to_graphql_conversion_rules.md 6-2節の
「1つのテーブル間に複数のFKが存在する場合…省略時は生成側がFK制約から一意に決定できる場合の
み許容され、決定できない場合は生成時エラーとする」に該当し、**一意に決定できないため
エラー**となる。

`view.yaml`自体は元々「address1/address2/billがそれぞれ独立したshared_appellations参照」
という設計(`<<: *appellationLabels`を使っている点)を先取りしていたと見られるが、当時
(要件0033時点)の実スキーマがまだ単純な`String`だったため`using`を書く動機が無かったと
推測される。今回のスキーマ変更で`using`の指定が必須になった。

**対応案(未適用)**: `address1`→`using: address1`、`address2`→`using: address2`、
`bill`→`using: bill`をそれぞれ追加する(`CompanyPage.ceo`の`using: ceo`と同じパターン)。

加えて、`address1`/`address2`/`bill`いずれも`pick: [name, pronunciatione, nickname]`を
指定しているが、`appellationLabels`の実際の出力名(`as`の値)は`name`/`pronunciation`/
`nickname`であり、**`pronunciatione`はどの出力名にも一致しない**。27節6-4・点10の方針
(`pick`が指す名前の実在性は検証しないが生成時エラーとする)により、これも❌エラーと
判定する(3箇所とも同一の誤字を繰り返している)。

**対応案(未適用)**: `pick`配列の`pronunciatione`を`pronunciation`に修正する(3箇所)。

さらに1-1のエラー(`dictionaryLabel`の`requiredWhere: [code]`)を`appellationLabels`経由で
継承する。

`phone`/`fax_number`はプレーン列で✅。

### 1-8. `addressEditFields`(edit、共有アーム) ❌(新規、要件0026本日の変更で顕在化)

`address1`列に3つの複合的な誤りがある。

1.  `using: shared_dictionary_name_id`を指定しているが、`info_address`に
    `shared_dictionary_name_id`という列(FK)は存在しない(実際のFK列は`address1`/
    `address2`/`bill`自身)。
2.  `<<: *dictionaryLabel`で`shared_dictionary`にマージしているが、実スキーマでは
    `info_address.address1`は`shared_dictionary`ではなく`shared_appellations`へ直接
    FKする(要件0026本日確認)。マージ先のテーブルそのものが誤っている。
3.  `dictionaryLabel`は`kind: read`だが、`addressEditFields`自身は`kind: edit`
    (書き込み対象定義)の文脈で使われている。kindの不整合。

**対応案(未適用)**: `CompanyPage.ceo`/`CompanyPageEdit.ceo`と同じパターンに合わせ、
`<<: *appellationLabelsEdit`・`using: address1`に修正する。

`address2`・`bill`はプレーンスカラー列(`- name: address2`、`- bill`)のまま定義されて
いるが、要件0026本日の変更によりこの2列も`address1`と同じ`shared_appellations`への
FK(UUID)になっているため、プレーン文字列としての読み書きはもはや成立しない。
`address1`と同じ`appellationLabelsEdit`ベースの入れ子構造への書き換えが必要。

`info_address_id`/`iso3166_3`/`zip_code`/`phone`/`fax_number`/共通項は✅
(要件0026本日の変更の影響を受けない列)。

### 1-9. `languageCodeEdit`(edit、独立定義) ⚠(エラーではないが未使用)

`shared_language_code`への直接編集(`shared_language_code_id`/`code`/`label`/
`priority`/`is_default`/共通項)のみのシンプルな構造で、対応するテーブル列との
不整合は無い(✅)。

ただし`view.yaml`内のどこからも`*languageCodeEdit`として参照されておらず、対応する
`read`側の定義や`Page`名も存在しない。このままでは画面(生成対象)を持たない孤立した
定義であり、[共通名前仕様](../CLAUDE.md#共通名前仕様)が触れる「言語管理画面」向けの
下書きと推測されるが、生成対象として組み込むには対応する`read`定義と`Page`単位への
組み込みが別途必要。エラーとしては扱わない(生成をブロックしない)が、次回以降の
評価対象として記録する。

### 1-10. `CompanyPage`(read、画面) ❌(1-1・1-6・1-7を継承)

- `info_company_id`/`web_page`/`symbol`/`remarks`: ✅
- `ceo`(`using: ceo`、`<<: *appellationLabels`): `using: ceo`は要件0026本日の変更に
  より**正しくなった**(0033の2-1で記録した不整合はこれで解消)。ただし
  `pick: [name, pronunciatione, nickname]`は1-7と同じ`pronunciatione`誤字により❌
  (1件目)。加えて1-1の`requiredWhere: [code]`未解決問題を継承する。
- `address`(`using: info_address_id`、`<<: *addressFields`): `using`は✅
  (`InfoCompany.infoAddressId`は単一FKで曖昧さなし)。1-7の全エラー(`using`欠落×3、
  `pick`誤字×3、`requiredWhere:[code]`未解決)を継承する❌。
- `offices`(toMany、`from: info_office`、`shared_appellations_id`列で
  `<<: *appellationLabels`、`using`省略): `InfoOffice`の`shared_appellations_id`は
  単一FKのため`using`省略は✅(曖昧さなし)。1-1の`requiredWhere:[code]`問題のみ継承。
- `condition: true`のみで`pagination`が無いため、ルートを単数取得にするか
  `allInfoCompanies`コネクションにするかがYAML側から一意に決まらない(要件0033
  2-4節で記録済み、⚠参考。要件0033ではこのライブラリの既存慣習を優先し
  `allInfoCompanies`ベースで実装した実績がある)。

結論: `CompanyPage`は現状のままでは生成不可(❌が複数残存)。

### 1-11. `CompanyPageEdit`(edit、画面) ❌(1-2・1-4・1-8を継承)

- `info_company_id`/`shared_appellations_id`/`web_page`/共通項: ✅
- `info_address_id`(`using: info_address_id`、`<<: *addressEditFields`): `using`は✅
  (単一FK)。1-8の全エラー(address1のkind/マージ先/using誤り、address2・billの
  未対応)を継承する❌。
- `ceo`(`using: ceo`、`<<: *appellationLabelsEdit`): `using: ceo`は要件0026本日の
  変更により**正しくなった**(0033の2-1解消)。ただし1-4経由で1-2の
  `shared_dictionary_id`欠落を継承する❌。

結論: `CompanyPageEdit`は現状のままでは生成不可(❌が複数残存)。

### 1-12. `CompanyPageRFE`(RFE、画面) ❌(重大・構造そのものが誤り)

```yaml
CompanyPageRFE:
  kind: RFE
  <<: *dictionaryEdit
```

`dictionaryRFE`(`<<: *dictionaryEdit`)・`appellationLabelsRFE`
(`<<: *appellationLabelsEdit`)はいずれも「同じ対象の`edit`定義をkindだけ差し替えて
再利用する」というRFEの設計方針(27節8章)どおりに、自分と対応する`edit`定義を
参照している。しかし`CompanyPageRFE`だけは**`info_company`と無関係な`dictionaryEdit`
(`shared_dictionary`が対象)をマージしており**、`CompanyPageEdit`(`info_company`が
対象)を参照していない。

原因を確認したところ、**`CompanyPageEdit`にはYAMLアンカー(`&CompanyPageEdit`)が
定義されていない**ため、そもそも`<<: *CompanyPageEdit`と書くことが構文上できない
状態になっている。他のRFEとの一貫性から見て、`<<: *dictionaryEdit`は誤って
コピー&ペーストされた残骸である可能性が高い。

**対応案(未適用)**: `CompanyPageEdit:`を`CompanyPageEdit: &CompanyPageEdit`に変更し、
`CompanyPageRFE`を`<<: *CompanyPageEdit`に修正する。

結論: `CompanyPageRFE`は現状のままでは`info_company`のRFEとして機能せず、生成不可。

## 2. 集計

| 定義 | 種別 | 判定 | 主因 |
|---|---|---|---|
| `dictionaryLabel` | read/共有 | ❌ | `requiredWhere:[code]`が標準PostGraphileで表現不可(0033 2-3の再確認、未解決) |
| `dictionaryEdit` | edit/共有 | ❌ | `shared_dictionary_id`欠落(新規) |
| `dictionaryRFE` | RFE/共有 | ❌ | 上記を継承 |
| `appellationLabelsEdit` | edit/共有 | ❌ | `dictionaryEdit`を継承 |
| `appellationLabelsRFE` | RFE/共有 | ❌ | 上記を継承 |
| `appellationLabels` | read/共有 | ❌ | `dictionaryLabel`を継承 |
| `addressFields` | read/共有 | ❌ | `using`欠落×3・`pick`誤字×3(新規、要件0026本日で顕在化)+継承 |
| `addressEditFields` | edit/共有 | ❌ | address1のkind/マージ先/using誤り、address2・bill未対応(新規) |
| `languageCodeEdit` | edit/独立 | ⚠ | 未使用の孤立定義(生成対象外、ブロッキングではない) |
| `CompanyPage` | read/画面 | ❌ | 上記の継承(`addressFields`・`appellationLabels`経由) |
| `CompanyPageEdit` | edit/画面 | ❌ | 上記の継承(`addressEditFields`・`appellationLabelsEdit`経由) |
| `CompanyPageRFE` | RFE/画面 | ❌ | `CompanyPageEdit`ではなく`dictionaryEdit`を誤参照(新規・重大) |

**エラー0件の定義は無い**(`languageCodeEdit`のみ⚠だが生成対象を持たないため対象外)。
要件0034の「評価後、エラーが無い状態になったときにGraphQLを作成し」の条件を満たさない
ため、**本ログではGraphQLの作成・モデル生成は実施していない**。

## 3. 結論・次のアクション

要件0033で発見した3件の不整合のうち、2-1(`ceo`)・2-2(`address1`/`address2`/`bill`が
`String`)は[要件0026本日](0026_schema_fetch_log.md追記10)のスキーマ変更で
**解消の方向に進んだ**(shared_appellations参照という設計は正しくなった)ものの、
今度は`using`の必須化・`addressEditFields`側の追随漏れという**別の変換エラー**が
新たに顕在化した。2-3(`requiredWhere:[code]`)は未解決のまま。加えて`view.yaml`自体の
記述誤り(`pick`の誤字、`dictionaryEdit`のid欠落、`CompanyPageRFE`の誤参照)を新規に
5件発見した。

次に実施が必要な対応(本ログでは未適用、view.yaml自体の修正権限・要否はユーザー判断を
要するため実施していない):

1.  `dictionaryLabel`の`requiredWhere:[code]`問題への対応方針の確定(0033踏襲の
    2段階解決方式を`view.yaml`の設計として正式採用するか、別の解決策を採るか)。
2.  `dictionaryEdit`に`shared_dictionary_id`を追加。
3.  `addressFields`の`address1`/`address2`/`bill`に`using`を追加、`pick`の
    `pronunciatione`誤字を`pronunciation`に修正(`CompanyPage.ceo`の`pick`も同様)。
4.  `addressEditFields`の`address1`を`appellationLabelsEdit`ベースに修正し、
    `address2`/`bill`にも同じ構造を追加。
5.  `CompanyPageEdit`にアンカーを追加し、`CompanyPageRFE`の参照先を修正。

上記1〜5がすべて解決した時点で改めて評価をやり直し、エラーが無くなった定義から
GraphQL作成・モデル生成(要件0034後段)に進む。

## 追記1: ユーザーによる部分修正の再評価 + 残課題への対応方針

ユーザーが`source/view.yaml`を以下3点修正した(`git diff`で確認)。

1.  `dictionaryEdit`に`shared_dictionary_id`を追加(本ログ2節の対応案2)。
2.  `addressEditFields.address1`の`<<: *dictionaryLabel`を`<<: *dictionaryEdit`に変更。
3.  `CompanyPageRFE`を`<<: *dictionaryEdit`(誤参照)から、`CompanyPageEdit`と同一の
    構造を直接記述する形に変更。

これを受けて筆者側で以下を実施した。

- **`addressFields`(対応案3)を直接修正**: `address1`/`address2`/`bill`の3エントリに
  `using: address1`/`using: address2`/`using: bill`を追加し、`pick`の誤字
  `pronunciatione`を`pronunciation`に修正(3箇所)。あわせて`CompanyPage.ceo`の
  `pick`にも同じ誤字があったため同様に修正した(1箇所)。
- 残る2点(`addressEditFields`の未解決分、`dictionaryLabel`の`requiredWhere:[code]`)は
  ユーザーの指示により**提案の提示のみ**(view.yaml/schema.jsonへの適用はしていない)。

### 1-1. 再評価結果

| 対象 | 修正内容 | 判定 |
|---|---|---|
| `dictionaryEdit` | `shared_dictionary_id`追加 | ✅ 解決。`updateBySharedDictionaryId`で既存行を更新可能になった。継承先(`dictionaryRFE`・`appellationLabelsEdit`・`appellationLabelsRFE`)も連動して解決。 |
| `CompanyPageRFE` | `CompanyPageEdit`と同一構造を直接記述 | ✅ 誤参照は解消(`info_company`を正しく対象にした)。ただし`CompanyPageEdit`とは別内容として二重管理になり、片方だけ修正すると乖離するリスクがある(⚠参考、後述1-4)。 |
| `addressFields` | `using`追加・`pick`誤字修正(筆者対応) | ✅ 解決。ただし`appellationLabels`→`dictionaryLabel`経由で1-2節の`requiredWhere:[code]`問題は引き続き継承。 |
| `addressEditFields.address1` | `<<: *dictionaryLabel`→`<<: *dictionaryEdit` | ❌ **未解決**。詳細は1-2節。 |
| `dictionaryLabel`(`requiredWhere:[code]`) | 未着手 | ❌ **未解決**。詳細は1-3節。 |

この結果、`CompanyPageEdit`・`CompanyPageRFE`は依然として`addressEditFields`経由で❌、
`CompanyPage`は`dictionaryLabel`経由で❌のままであり、要件0034の「エラーが無い状態」には
まだ達していない。

### 1-2. `addressEditFields.address1`がまだ誤っている理由(提案・未適用)

`<<: *dictionaryLabel`→`<<: *dictionaryEdit`への変更は、**kindの不一致**
(`dictionaryLabel`が`kind: read`だった点)は解消したが、**マージ先テーブルそのものの
誤り**は解消していない。`dictionaryEdit`は`from: shared_dictionary`であり、
`shared_appellations`ではない。しかし[要件0026(2026/09/25)](0026_schema_fetch_log.md追記10)
で確認したとおり、実スキーマの`info_address.address1`は`shared_dictionary`を経由せず
**`shared_appellations`へ直接FK**する(`sharedAppellationByAddress1`)。`using`も
`shared_dictionary_name_id`のままだが、`info_address`にはそのような列は存在しない
(実際のFK列は`address1`自身)。

`address2`/`bill`は今回未修正のまま(プレーンスカラー`- name: address2`/`- bill`)だが、
これも同じ理由で実スキーマ(いずれも`UUID`、`shared_appellations`への独立FK)と一致しない。

**提案(未適用)**: `CompanyPageEdit.ceo`(`using: ceo`、`<<: *appellationLabelsEdit`)と
同じパターンに揃える。

```yaml
addressEditFields: &addressEditFields
  kind: edit
  from: info_address
  columns:
    - info_address_id
    - iso3166_3
    - zip_code
    - name: address1
      using: address1
      arrayType: toFirstOne
      <<: *appellationLabelsEdit
    - name: address2
      using: address2
      arrayType: toFirstOne
      <<: *appellationLabelsEdit
    - name: bill
      as: bill_name
      using: bill
      arrayType: toFirstOne
      <<: *appellationLabelsEdit
    - phone
    - fax_number
    - remarks
    - update_user_id
    - update_user_history_id
    - remove
```

`bill`に`as: bill_name`を付けたのは、`addressFields`(read側)が`bill`を`bill_name`という
出力名にしている(6-3節の`as`)ため、read/edit間で対応するキー名を揃える目的
(要件0032・0033が前提とする「readのMapとeditのMapの列名を一致させる」ため、
`nested_map_flattener.dart`の往復変換・`test/info_company_flatten_roundtrip_test.dart`
相当のテストで両者を一致させやすくする)。

適用すればこの対応案で`addressEditFields`・`CompanyPageEdit`・`CompanyPageRFE`の
❌はすべて解消する見込み(他に依存する未解決項目が無いことを確認済み)。

### 1-3. `dictionaryLabel`の`requiredWhere:[code]`問題 — schema.json拡張案(提案・未適用)

根本原因の再確認: `language`(`from: shared_language_code`、`output: false`、
`requiredWhere: [code]`)は「`shared_dictionary_value` → `shared_language_code`の
LATERAL結合のWHERE句に`slc.code = $code`を直接埋め込む」ことを前提にしているが、
実スキーマの`SharedDictionaryValueCondition`/`Filter`は結合先テーブルの列への
フィルタを提供しない。一方、`SharedDictionaryValueCondition`/`Filter`は**自分自身の列**
`sharedLanguageCodeId`(UUID)へのフィルタは提供している。要件0033・shipping_kind試作
(要件0026追記9)ではこれを踏まえ、「呼び出し側が`code`(例:"ja")を`SharedLanguageCode`に
対して別途解決し、得られた`sharedLanguageCodeId`(UUID)をアプリケーション側で
`condition: { sharedLanguageCodeId: ... }`に渡す」という2段階方式を採用し、実際に
`info_company_read.graphql`はこの方式で動作している(要件0033のログ2-3節)。

この実証済みの方式を`view.yaml`の記法として正式に表現できるようにするため、
「呼び出し側に見せる引数名(例:`code`)」と「実際にPostGraphileのcondition/filterへ
渡す、直近の親(`from`)が持つ列名(例:`sharedLanguageCodeId`)」を分離して宣言できる
新しいプロパティ`resolvedWhere`を`schema.json`に追加することを提案する。
`requiredWhere`/`where`(自テーブル自身の列を直接引数化する。3節)や`defaultWhere`
(固定条件。4節)とは別枠とし、「結合先テーブルの列を、呼び出し側が別途解決した
サロゲート値(UUID等)経由でしか絞り込めない」ケース専用の第3のカテゴリと位置づける。

```json
"resolvedWhereEntry": {
  "type": "object",
  "description": "標準のPostGraphile condition/filterでは結合先テーブルの列を直接フィルタできないため、呼び出し側が別途解決した代理キー(surrogate、通常はUUID)経由で絞り込むことを表す。argument(呼び出し側に見せる引数名)の値そのものは生成されるGraphQLへ渡さず、viaColumn(このエントリを含むnode/columnEntry自身のfromが持つ列名)への実際の絞り込み値は呼び出し側が解決して渡す前提とする。argumentからviaColumnの値への解決方法自体はGraphQL生成の範囲外(呼び出し側アプリケーション、または生成ツールの前段処理)であり、resolveTable/resolveColumnは解決方法を人が読むためのドキュメント情報に留める(生成時に自動解決処理を組み立てる用途ではない)。",
  "properties": {
    "argument": { "type": "string", "minLength": 1, "description": "呼び出し側に公開する引数名(例: code)" },
    "viaColumn": { "type": "string", "minLength": 1, "description": "実際にPostGraphileのcondition/filter引数として使う、このnode/columnEntry自身のfromが持つ列名(例: sharedLanguageCodeId)" },
    "resolveTable": { "type": "string", "minLength": 1, "description": "(ドキュメント用、任意)argumentの値の解決先テーブル名(例: shared_language_code)" },
    "resolveColumn": { "type": "string", "minLength": 1, "description": "(ドキュメント用、任意)resolveTable側でargumentの値と比較する列名(例: code)" }
  },
  "required": ["argument", "viaColumn"],
  "additionalProperties": false
},
"resolvedWhere": {
  "type": "array",
  "items": { "$ref": "#/$defs/resolvedWhereEntry" },
  "minItems": 1
}
```

`node`・`columnEntry`双方の`properties`に`"resolvedWhere": { "$ref": "#/$defs/resolvedWhere" }`
を追加する。

この拡張を適用した場合の`dictionaryLabel`の書き換え案(参考、`language`ノード自体が
不要になる):

```yaml
dictionaryLabel: &dictionaryLabel
  kind: read
  from: shared_dictionary
  defaultWhere:
    - column: remove
      operator: "="
      value: false
  columns:
    - name: value
      arrayType: toFirstOne
      from: shared_dictionary_value
      defaultWhere:
        - column: remove
          operator: "="
          value: false
      resolvedWhere:
        - argument: code
          viaColumn: shared_language_code_id
          resolveTable: shared_language_code
          resolveColumn: code
      columns:
        - dictionary_value
```

`language`(`from: shared_language_code`、`output: false`)ノードは、絞り込みが
`value`自身の`sharedLanguageCodeId`列へ移ったことで出力・絞り込みのどちらの役割も
無くなるため削除できる。`dictionaryEdit`側は元々`shared_language_code_id`を
`shared_dictionary_value`の編集列として直接持っており、この変更の影響を受けない。

この提案はまだ`schema.json`・`view.yaml`のどちらにも適用していない。適用する場合は
本節のスキーマ変更と`dictionaryLabel`の書き換えに加え、実際にGraphQLを生成する際に
`resolvedWhere`をどう解釈するか(`$code`という引数名では受け取らず、
`$jaLanguageCodeId`/`$enLanguageCodeId`のように事前解決済みのUUID引数として
公開する、要件0033の実装と同じ形)を生成側の実装方針として別途確認する必要がある。

## 追記2: 対応案4の採択(適用)、対応案1の分類整理(ユーザー指示)

ユーザーから以下2点の指示を受けた。

1. 対応案4(1-2節、`addressEditFields`)を採択(適用してよい)。
2. 対応案1(1-3節、`resolvedWhere`)について、「`where`系のプロパティが多すぎる」ため、
   まず「値を属性として与えるケースかどうか」で分類してから提示すること。

### 2-1. 対応案4の適用

1-2節の提案どおり`addressEditFields`を修正した。

```yaml
- name: address1
  using: address1
  arrayType: toFirstOne
  <<: *appellationLabelsEdit
- name: address2
  using: address2
  arrayType: toFirstOne
  <<: *appellationLabelsEdit
- name: bill
  as: bill_name
  using: bill
  arrayType: toFirstOne
  <<: *appellationLabelsEdit
```

**この修正により`addressEditFields`・`CompanyPageEdit`・`CompanyPageRFE`の❌はすべて
解消した。** `appellationLabelsEdit`は既に`dictionaryEdit`(`shared_dictionary_id`追加済み、
追記1で解決済み)を経由するのみで、`dictionaryLabel`(1-3節の`requiredWhere:[code]`問題)
には一切依存しない(edit側はそもそも`code`による言語の絞り込みを行わず、
`shared_language_code_id`を直接編集列として持つため)。

現時点で❌が残るのは**`dictionaryLabel`(read専用、1-3節)を経由する読み込み系のみ**
(`appellationLabels`・`addressFields`・`CompanyPage`)である。

### 2-2. 「属性として与えるケース」による分類

`where`/`requiredWhere`/`defaultWhere`(および1-3節で提案した`resolvedWhere`)が
乱立して分かりにくいとの指摘を受け、まず**2つの軸**で分類する。

**軸A: 条件の値をどう与えるか**

| | 説明 | 該当プロパティ |
|---|---|---|
| (I) 属性(定義時点で固定) | YAML上に`value`としてそのまま書く。呼び出し側は関与できない | `defaultWhere` |
| (II) 引数(呼び出し時に指定) | 列名だけをYAMLに書き、値はGraphQL引数として呼び出し側が渡す | `where` / `requiredWhere` |

**軸B: 条件が実際にどの列にかかるか**

| | 説明 |
|---|---|
| (a) 自テーブルの列 | そのnode/columnEntry自身の`from`が持つ列。PostGraphile標準の`condition`/`filter`引数でそのまま実現できる |
| (b) 絞り込み専用(`output: false`)の子ノードが持つ、孫テーブルの列 | 6-5節の「絞り込み専用・出力列なし」の子ノード(`from`が別テーブル)が持つ列。標準の`condition`/`filter`は自テーブルの列にしか届かないため、そのままでは実現できない |

**軸A×軸Bで4通りに分類し、`view.yaml`の全8箇所の実例を当てはめた結果:**

| 分類 | 該当箇所(`view.yaml`) | 件数 | 実現可否 |
|---|---|---|---|
| (I, a) 属性・自テーブル | `dictionaryLabel`(shared_dictionary/shared_dictionary_value)・`appellationLabelsEdit`・`appellationLabels`・`CompanyPage.offices`の各`defaultWhere: remove = false` | 5件 | ✅ 標準の`condition`/`filter`でそのまま実現可能(既存実装で動作確認済み) |
| (II, a) 引数・自テーブル | `appellationLabelsEdit.requiredWhere: [shared_appellations_id]`(更新対象自身のPK) | 1件 | ✅ PostGraphile標準の`updateByPK`ミューテーションでそのまま実現可能(`CompanyPageEdit.ceo`等で実績あり) |
| (I, b) 属性・絞り込み専用の孫テーブル | `dictionaryLabel.value.language.defaultWhere: remove = false`(`shared_language_code.remove`) | 1件 | ❌ 標準の`condition`/`filter`では届かない。ただし固定値であり業務影響は小さいため、**最悪削除しても実害が少ない**(表示自体は`shared_dictionary_value`側の`remove`で既にガードされている) |
| (II, b) 引数・絞り込み専用の孫テーブル | `dictionaryLabel.value.language.requiredWhere: [code]`(`shared_language_code.code`) | 1件 | ❌ 標準の`condition`/`filter`では届かない。**唯一の真のブロッカー**(表示言語を切り替える手段そのものが無くなるため削除できない) |

### 2-3. 結論

「`where`が多すぎる」問題は、実際には**(I,a)と(II,a)の6件は既存の`where`/`requiredWhere`/
`defaultWhere`の素直な用法で全く問題が無く**、真に対応が必要なのは**(II,b)の1件
(`code`)のみ**であり、(I,b)の1件(`shared_language_code.remove`)は実害が小さいため
対応を保留してよい、という整理になった。

このため、1-3節で提案した`resolvedWhere`は「`where`系プロパティ全体を置き換える」
汎用機構としてではなく、**(II,b)(絞り込み専用の孫テーブル列を、呼び出し側の引数として
公開したい場合)専用のプロパティ**として、既存の`where`/`requiredWhere`/`defaultWhere`
とは別に**最小限追加する**方針が妥当と考える(既存6件には一切手を加えない)。
schema.json上の具体的な定義案は1-3節のとおり(`resolvedWhereEntry`/`resolvedWhere`)。

(I,b)の`shared_language_code.remove`については、対応方針の決定(削除するか、
`resolvedWhere`と同様の機構を`defaultWhere`側にも用意するか)をユーザーに委ねる。
本ログでは分類の提示のみに留め、`schema.json`・`view.yaml`への適用は行っていない。

## 追記3: 対応案1の決着(新プロパティ不要と判明、`27_yaml_to_graphql_conversion_rules.md`のみ更新)

ユーザーとの検討の結果、`resolvedWhere`→`viaParent`(2-3節で提案した新プロパティ案)は
**不要**と判明した。経緯は以下のとおり。

1.  ユーザーから「`viaParent`は`requiredWhere`だけでなく`where`にも該当するはず」との
    指摘を受けた(その通り。両者を区別する理由は無い)。
2.  続けて「`using`で指定した列の戻り値が親の列(外部キー)に適用されるなら、そもそも
    `viaParent`もいらないのでは」との指摘を受けた。確認したところ、
    `27_yaml_to_graphql_conversion_rules.md`4節が既に「単数(`toFirstOne`)リレーションには
    stock PostGraphileの`condition`/`filter`引数自体が存在しない」ことを`defaultWhere`
    について述べていたが、**この制約は`where`/`requiredWhere`にも等しく当てはまる**
    (単数リレーションフィールドという入れ物自体に絞り込み引数が無いのだから、
    `defaultWhere`だろうと`where`/`requiredWhere`だろうと直接は実現できない)。
    したがって「直接フィルタできる場合とできない場合を`viaParent`で分岐する」という
    発想自体が不要で、`arrayType: toFirstOne`上の`where`/`requiredWhere`/`defaultWhere`は
    **常に**「`using`が指す親の列への値を、`from`に対して外部で一意に検索するための
    WHERE句一式」として統一的に扱えば良いと判明した(新プロパティ無しで説明できる)。
3.  さらにユーザーから「`remove=false`も`from`に対する`Where`ではないのか」との指摘を
    受けた。その通りであり、2-3節で「`defaultWhere`は`using`経由の親列に適用できない
    (対応不可、削除を推奨)」としたのは誤りだった。`remove=false`は`code`と同じ
    `shared_language_code`(`from`)に対する条件であり、`code`を解決する外部検索
    (`shared_language_code`から`code = $code`を満たす1件のIDを引く処理)に
    `AND remove = false`を含めれば良いだけで、`requiredWhere`と`defaultWhere`を
    区別して扱う理由は無い。

**結論**: `schema.json`・`view.yaml`のどちらも変更不要。`dictionaryLabel.value.language`
(`from: shared_language_code`、`requiredWhere: [code]`、`defaultWhere: [remove = false]`、
`output: false`)は現状の記述のままで正しく、「`code = $code AND remove = false`を満たす
`shared_language_code`の1件を外部で検索し、そのIDを親(`shared_dictionary_value`)の
`shared_language_code_id`列への条件として使う」という意味として扱う。この規則を
`27_yaml_to_graphql_conversion_rules.md`4-1節として明文化した(2026-09-25、変更履歴に追記済み)。

### 3-1. 最終集計

上記により1-3節(`dictionaryLabel`)の❌は解消した。追記1・追記2で解決済みの項目と
合わせ、`view.yaml`全12定義の判定は以下のとおりになった。

| 定義 | 判定 |
|---|---|
| `dictionaryLabel` | ✅(4-1節のルール明文化により解決。YAML変更なし) |
| `dictionaryEdit` | ✅ |
| `dictionaryRFE` | ✅ |
| `appellationLabelsEdit` | ✅ |
| `appellationLabelsRFE` | ✅ |
| `appellationLabels` | ✅ |
| `addressFields` | ✅ |
| `addressEditFields` | ✅ |
| `languageCodeEdit` | ⚠(未使用の孤立定義。生成対象を持たないためブロッキングではない) |
| `CompanyPage` | ✅ |
| `CompanyPageEdit` | ✅ |
| `CompanyPageRFE` | ✅(`CompanyPageEdit`と内容が重複しているため、要件0034後段でGraphQLを
  作成する際にどちらを正として保守するか整理が必要。1-1節参照) |

**要件0034の「エラーが無い状態」に到達した。** `languageCodeEdit`(⚠)を除く全定義が
生成可能な状態にある。次のアクションはGraphQLの作成・モデル生成(要件0034後段)だが、
これはユーザーの別途の指示を待って実施する。

### 1-4. 集計(追記1時点)

| 定義 | 判定 |
|---|---|
| `dictionaryLabel` | ❌(1-3、未適用) |
| `dictionaryEdit` | ✅ |
| `dictionaryRFE` | ✅ |
| `appellationLabelsEdit` | ✅ |
| `appellationLabelsRFE` | ✅ |
| `appellationLabels` | ❌(`dictionaryLabel`を継承) |
| `addressFields` | ❌(`appellationLabels`経由で`dictionaryLabel`を継承。`using`/`pick`自体は✅) |
| `addressEditFields` | ❌(1-2、未適用) |
| `languageCodeEdit` | ⚠(未使用、変化なし) |
| `CompanyPage` | ❌(`dictionaryLabel`を継承) |
| `CompanyPageEdit` | ❌(`addressEditFields`を継承) |
| `CompanyPageRFE` | ❌(`addressEditFields`を継承。誤参照自体は✅解決) |

残る❌はすべて1-2節(`addressEditFields`)・1-3節(`dictionaryLabel`)の2件に集約された。
この2件は提案の提示に留め、view.yaml・schema.jsonへの適用はユーザーの判断を待って
別途実施する。
