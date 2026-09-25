# 0035 実施ログ(company_page画面のGraphQL作成・モデル生成)

## 指示

> 0035の実行

要件0035(CLAUDE.md):
> [画面仕様](#画面仕様)に従いGraphQLの再生成のテストを行い、GraphQLを作成するための評価を実施。
> エラーが無い状態になったときにGraphQLを作成し、GraphQLからモデル生成を実行する。

要件0034(docs/0034_view_yaml_graphql_evaluation_log.md、追記1〜3)の評価により、
`view.yaml`全12定義のうち`languageCodeEdit`(未使用の孤立定義)を除く全てが✅
(エラー無し)の状態に到達済みだったため、本ログでは再評価の再確認のみ行い、
GraphQL作成・モデル生成(要件0035後段)に進んだ。

## 0. 命名規則の確認(ユーザー判断)

CLAUDE.md 画面仕様命名規則は「トップノードをディレクトリ名/ファイル名にする」と定める。
`view.yaml`のトップノード名は`CompanyPage`/`CompanyPageEdit`/`CompanyPageRFE`
(スネークケースで`company_page`)だが、要件0033時点の実装は暫定的に対象テーブル名
`info_company`を使っていた(`lib/graphql/info_company/`等)。

ユーザーに確認したところ、**命名規則どおり`company_page`に統一する**方針を選択した。
このため、要件0033の実装(`info_company_*`)は`git rm`で削除し、`company_page_*`として
作り直した。

## 1. 削除したファイル(要件0033の暫定実装)

- `lib/graphql/info_company/info_company_read.graphql`
- `lib/graphql/info_company/info_company_edit.graphql`
- `lib/postgraphile/info_company/info_company_read.graphql.dart`
- `lib/postgraphile/info_company/info_company_edit.graphql.dart`
- `lib/contents/info_company_keyname.dart`
- `test/info_company_flatten_roundtrip_test.dart`

## 2. 作成したGraphQL(3ファイル、`lib/graphql/company_page/`)

view.yamlの`CompanyPage`(read)/`CompanyPageEdit`(edit)/`CompanyPageRFE`(RFE)から、
以下の方針でGraphQLを作成した。

- [company_page_read.graphql](../lib/graphql/company_page/company_page_read.graphql)
- [company_page_edit.graphql](../lib/graphql/company_page/company_page_edit.graphql)
- [company_page_rfe.graphql](../lib/graphql/company_page/company_page_rfe.graphql)
  (要件0033では未実装だった。「RFEはミューテーションを生成するための読み込み用クエリ」
  (CLAUDE.md画面仕様)として、`infoCompanyByInfoCompanyId(infoCompanyId: $infoCompanyId)`
  で1件取得するクエリを新規作成した)

### 2-1. 要件0033からの主な変更点(要件0026本日のスキーマ変更への追随)

要件0026(2026-09-25、schema.graphql再取得)により`InfoCompany.ceo`・
`InfoAddress.address1`/`address2`/`bill`が単純な`String`から`shared_appellations`への
直接FK(UUID)へ変更されたことを受け、要件0033で採用していた暫定対応
(プレーンな文字列として取得・更新)を廃止し、会社名(`sharedAppellationBySharedAppellationsId`)
と同型の入れ子構造(name/pronunciation/nickname、shared_dictionary経由)に置き換えた。

- read: `ceo: sharedAppellationByCeo { ... }`、
  `infoAddressByInfoAddressId { address1: sharedAppellationByAddress1 {...},
  address2: sharedAppellationByAddress2 {...}, billName: sharedAppellationByBill {...} }`
  (`billName`は`view.yaml`の`addressFields.bill`の`as: bill_name`に対応するエイリアス)
- edit: `sharedAppellationToCeo` / `sharedAppellationToAddress1` /
  `sharedAppellationToAddress2` / `sharedAppellationToBill`それぞれに、会社名と同じ
  `updateBySharedAppellationsId → sharedDictionaryToSharedDictionaryNameId/
  PronunciationId/NicknameId → updateBySharedDictionaryId →
  sharedDictionaryValuesUsingSharedDictionaryId(deleteOthers+create)`の入れ子
  ミューテーションを追加(スキーマの型構造(`InfoCompanyFk1Input`・`InfoAddressFk1/2/3Input`
  とその配下)を確認し、既存の会社名実装と完全に同型であることを確認済み)。

### 2-2. view.yamlの記述どおりに修正した点

`CompanyPage.offices`(`shared_appellations_id`)には`pick`指定が現行の`view.yaml`に
存在しないため、要件0033時点のGraphQLコメント(「view.yamlのpick: [name]に合わせ」)
が参照していた`pick`は現在は存在しないと判断し、name/pronunciation/nicknameすべてを
取得するよう修正した。

### 2-3. view.yamlの記述を補って実装した点(要件0033から継続)

`view.yaml`の`CompanyPage`は会社自身の名前(`shared_appellations_id`)・
`infoAddressId`・住所の共通項(remarks/updateAt/remove)を明示していないが、
[共通名前仕様](../CLAUDE.md#共通名前仕様)により会社名の解決は必須であり、
`infoAddressId`は編集画面との整合上必要なため、要件0033の実装を踏襲してそのまま含めている
(要件0033のログですでに同様の判断をしており、今回変更していない)。

## 3. lib/contents/company_page_keyname.dart

`InfoCompanyKeyName` → `CompanyPageKeyName`にリネームし、会社名(既存10定数)に加えて
ceo・address1・address2・bill(view.yamlの`as: bill_name`により出力名は`billName`)の
4系統、各10定数(`sharedAppellationsId`・name/pronunciation/nicknameそれぞれの
`sharedDictionaryId`+`ja||dictionaryValue`+`en||dictionaryValue`)を追加した
(計40定数追加)。旧`ceo`(String)・`infoAddressByInfoAddressId_address1`/`_address2`/
`_bill`(String)の定数は、対応する列がshared_appellations経由の入れ子構造になったため削除した。

## 4. test/company_page_flatten_roundtrip_test.dart

要件0033のテスト(read/edit往復変換2件+KeyName解決1件)を土台に、以下を追加・変更した。

- read/edit両方のテストデータで、ceo・address1・address2・billをすべて
  `_sharedAppellationJson`ヘルパー(name/pronunciation/nicknameを持つ共通ヘルパー、
  会社名と同型のため関数化)で表現するよう変更。
- KeyName解決テストに、会社名に加えてceo(name/nickname)・address1(name)・
  bill(name)の解決確認を追加。
- **RFEの往復変換テストを新規追加**(要件0033には無かった。`Query$CompanyPageRfe`)。

## 5. build_runner実行

```
dart run build_runner build --build-filter="lib/postgraphile/company_page/**"
```
結果: `Built with build_runner/aot in 9s; wrote 3 outputs.`
警告は既知のスカラーフォールバック(`UUID`/`Cursor`/`Datetime`を`String`にフォールバック)
のみ。エラーなし。生成物のサイズはいずれも要件0015の閾値(5000KB)を大きく下回るため
(最大`company_page_edit.graphql.dart`の約1.2MB)、`.gitignore`・アナライザ除外・
VSCode監視除外への追加は不要だった。

## 6. 検証結果

- `dart analyze lib test`: 4,699件、すべて`info`(生成コードのスタイル指摘)。
  `error`・`warning`は0件(削除した`info_company_*`への参照漏れも無いことを確認)。
- `flutter test`: `test/company_page_flatten_roundtrip_test.dart`の4件すべて成功
  (`All tests passed!`)。
  1. `Query$CompanyPageRead <-> Map`往復変換が元と一致(read側、ceo/address1/address2/
     billすべてshared_appellations経由で正しく往復)。
  2. `CompanyPageKeyName` + `collapseSingleRecordPaths`で会社名・ceo・address1・bill
     のja/enをすべて正しく解決できることを確認(値が無い言語・ニックネームは`null`として
     正しく解決)。
  3. `Mutation$CompanyPageEdit <-> Map`往復変換が元と一致(edit側)。
  4. `Query$CompanyPageRfe <-> Map`往復変換が元と一致(RFE、新規)。

## 7. 結論・次のアクション

要件0035の対象(view.yamlの`CompanyPage`/`CompanyPageEdit`/`CompanyPageRFE`)について、
GraphQL作成・モデル生成・往復変換テストまで完了した。命名規則も`company_page`に統一し、
要件0033の暫定実装(`info_company_*`・ceo/address1/address2/billのプレーン文字列扱い)は
解消した。

`languageCodeEdit`(未使用の孤立定義)は生成対象を持たないため今回は対象外。対応する
`read`定義・`Page`単位への組み込みが必要になった場合は別途要件として扱う。
