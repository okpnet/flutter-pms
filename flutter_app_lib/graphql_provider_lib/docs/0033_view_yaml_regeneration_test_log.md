# 0033 実施ログ(既存GraphQL・生成物の一括削除、view.yamlベースでのInfoCompany再生成テスト)

## 指示

> 0033を実行

要件0033(CLAUDE.md):
> 大幅な方針変更。[画面仕様](#画面仕様)を変更した。既存のGraphQL、生成物を一度削除し、GraphQLの再生成のテストを行い、問題が見つからなかった場合はCLAUD.mdの見え消し部分を削除する。問題、または発見したリスクはログに記録すること。テストのため一部のみInfoCompanyのみ実装している。この0033は1度のみ実行。

※ `docs/0033_shared_dictionary_language_redesign_log.md`は、本要件0033が追記される前
(2026/09/20)に実施された別作業(`SharedDictionary.ja/en`廃止に伴う設計・shipping_kind試作)の
記録であり、本要件0033(2026/09/24追記、画面仕様の全面変更・既存生成物の削除・再生成テスト)
とは対象が異なる。混同を避けるため本ログを別ファイルとして作成した。

## 0. 実行前の確認(要件0020)

ユーザーが会話中にCLAUDE.mdへ直接追記していたことを確認した(要件0033本文に「問題、または
発見したリスクはログに記録すること。テストのため一部のみInfoCompanyのみ実装している。」が
追加され、[画面仕様](#画面仕様)1点目も「schema.jsonをもとにview.yamlによる」から
「"27_yaml_to_graphql_conversion_rules.md"、及び"schema.json"をもとに変換を行う。変換する
対象は"view.yaml"による。」に更新されていた)。この追記を反映した最新のCLAUDE.mdを読み直した
うえで実行した。

実行前に`source/`を確認したところ、新方式の画面仕様一式(`view.yaml`・`schema.json`・
`27_yaml_to_graphql_conversion_rules.md`・`test.yaml`)がすでに用意されていたが、
`view.yaml`に定義済みの画面は**`CompanyPage`/`CompanyPageEdit`/`CompanyPageRFE`
(info_company)のみ**だった。また、`27_yaml_to_graphql_conversion_rules.md`が参照する
`24_yaml_schema_design_conditions.md`は`source/`に存在せず、同ドキュメントには
`/mnt/user-data/outputs/CompanyPage.graphql`という本リポジトリ外(別セッションのサンドボックス)
のパスへの言及があった。これらの資料は本セッション外(別のClaude会話)で試作されたものを
`source/`へ配置したものと判断した。

削除・実装の範囲についてユーザーに確認し、以下の方針で実行することとした。

- 削除範囲: **既存32画面すべて**(`schema.graphql`/`schema.graphql.dart`/
  `content_variable.dart`を除く)。
- 再生成方法: **手作業でGraphQLへ変換**(自動生成ツールは本ライブラリ内に存在しないため、
  今回は新設しない)。

## 1. 既存GraphQL・生成物の削除

以下175件を`git rm`で削除した(schema.graphql / schema.graphql.dart / content_variable.dart
は要件0033の対象外として除外)。

| 対象 | 件数 | 除外したファイル |
|---|---|---|
| `lib/graphql/**/*.graphql`(画面別) | 59 | `lib/graphql/schema.graphql` |
| `lib/postgraphile/**/*.graphql.dart`(画面別) | 59 | `lib/postgraphile/schema.graphql.dart` |
| `lib/contents/*_keyname.dart` | 26 | `lib/contents/content_variable.dart` |
| `test/*_flatten_roundtrip_test.dart` | 31 | (該当なし) |
| **合計** | **175** | |

`lib/converters`は元々空(IGraphQLConverter実装は未着手)だったため削除対象は無かった。
`lib/gqlmdlib.dart`(バレルファイル)も`library;`のみで画面別exportを含んでいなかったため
変更不要だった。

## 2. 発見した問題・リスク(要件0033「問題、または発見したリスクはログに記録すること」に対応)

`view.yaml`の`CompanyPage`/`CompanyPageEdit`定義を、実際の`lib/graphql/schema.graphql`
(Postgraphileが生成した現行スキーマ)と突き合わせたところ、**3件の重大な不整合**を発見した。
これらはいずれも「テストのため一部のみInfoCompanyのみ実装している」という前提のもとで、
今回はview.yamlの記述をそのまま採用せず、実スキーマに合わせて補正して実装した
(`lib/graphql/info_company/info_company_read.graphql`・`info_company_edit.graphql`の
ファイル先頭コメントにも同内容を記載)。

### 2-1. `InfoCompany.ceo`は呼称セット(shared_appellations経由)ではなく単純な`String`列

`view.yaml`の`CompanyPage.columns[].ceo`は`using: ceo`で`shared_appellations`への
FKとして定義され、`appellationLabels`(name/pronunciation/nickname、shared_dictionary経由)
を通じて解決する設計になっている。

しかし実スキーマでは:
```graphql
type InfoCompany implements Node {
  ...
  """代表"""
  ceo: String
  ...
}
```
`ceo`は単なる`String`スカラーであり、`shared_appellations`へのFK(UUID)ではない。
`InfoCompanyInput`/`InfoCompanyPatch`も同様に`ceo: String`。

**対応**: `ceo`はプレーンな文字列列としてそのまま取得・更新する(呼称セット経由の入れ子
解決は行わない)。

### 2-2. `InfoAddress.address1`/`address2`/`bill`も呼称セットではなく単純な`String`列

`view.yaml`の`addressFields`/`addressEditFields`は、`address1`/`address2`/`bill`を
それぞれ`using: address1`/`address2`/`bill`で`shared_appellations`への独立したFKとして
定義し、`appellationLabels`経由で解決する設計になっている。

しかし実スキーマでは:
```graphql
type InfoAddress implements Node {
  ...
  """住所1"""
  address1: String
  """住所2"""
  address2: String
  """建物"""
  bill: String
  """電話番号"""
  phone: String
  ...
}
```
いずれも単なる`String`スカラーであり、UUID型のFK列ですらない(`using`で指定する結合キー
自体が存在しない)。

**対応**: `address1`/`address2`/`bill`/`phone`/`faxNumber`はいずれもプレーンな文字列列
としてそのまま取得・更新する。

### 2-3. `requiredWhere: [code]`(shared_language_code.codeの直接引数化)は標準のPostGraphile
   condition/filterでは実現できない

`27_yaml_to_graphql_conversion_rules.md`(6-5節・9-3節)は、`dictionaryLabel.value.language`
ノード(`from: shared_language_code`、`requiredWhere: [code]`、`output: false`)について、
生成される概念SQLとして`slc.code = $code`が**LATERALサブクエリ内のJOIN/WHERE句へ直接
埋め込まれる**ことを前提にしている。

しかし実スキーマの`SharedDictionaryValueCondition`/`SharedDictionaryValueFilter`は
`sharedLanguageCodeId: UUID`(結合先の`SharedLanguageCode.code`ではなく、あくまで
`SharedDictionaryValue`自身が持つUUID列)でのフィルタしか提供しない。
postgraphile-plugin-connection-filterによる「結合先テーブルの列」への入れ子フィルタ
(例: `sharedLanguageCodeBySharedLanguageCodeId: SharedLanguageCodeFilter`)も
`SharedDictionaryValueFilter`には存在しない。つまり`code`(例:`'ja'`)を直接GraphQL引数として
LATERAL結合のWHERE句に反映する標準的な方法が、現行スキーマ構成には存在しない。

**対応**: 既存のshipping_kind試作(`docs/0033_shared_dictionary_language_redesign_log.md`、
要件0026追記9)で採用済みの方式を踏襲し、`$jaLanguageCodeId`/`$enLanguageCodeId`
(`UUID`、アプリケーション側が別途`SharedLanguageCode`を`code`で検索して解決した結果を渡す
想定)を`condition: { sharedLanguageCodeId: ... }`に使う2段階解決方式とした。
`27_yaml_to_graphql_conversion_rules.md`の設計(`requiredWhere`列を直接SQLへ埋め込む
カスタム生成)を実現するには、本ライブラリの責務(既存のPostGraphile GraphQLスキーマに
対する手書き/生成クエリ)を超えた、バックエンド側のカスタムリゾルバ/プラグイン追加が
別途必要になると考えられる。

### 2-4. (参考・エラーではない)`condition: true`単独の役割の解釈

`view.yaml`の`CompanyPage`ノードは`pagination: true`を持たず`condition: true`のみを
指定しているため、ルートクエリを「1件取得」と「一覧(コネクション)」のどちらで生成するかが
YAML側からは一意に決まらなかった。今回は本ライブラリの既存31画面すべてが採用している
「`allXxx(condition:, filter:, orderBy:, first:, offset:)`によるコネクション一覧」の
慣習を優先し、`allInfoCompanies`ベースで実装した(`first`/`offset`は`view.yaml`に
明記が無いため、既存の他画面と同じ形で追加した)。この解釈が意図と異なる場合は
`view.yaml`側に`pagination`の要否を明記してもらう必要がある。

## 3. 実装内容(InfoCompanyのみ、要件0033の指示どおり)

- [lib/graphql/info_company/info_company_read.graphql](../lib/graphql/info_company/info_company_read.graphql)
- [lib/graphql/info_company/info_company_edit.graphql](../lib/graphql/info_company/info_company_edit.graphql)
- [lib/contents/info_company_keyname.dart](../lib/contents/info_company_keyname.dart)
- [test/info_company_flatten_roundtrip_test.dart](../test/info_company_flatten_roundtrip_test.dart)

会社名(shared_appellations経由、name/pronunciation/nickname)・事業所一覧
(`infoOfficesByInfoCompanyId`、`view.yaml`の`pick: [name]`にならい事業所名のみ取得)・
共通項(remarks/updateAt/remove)・更新者id解決用の`historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId`
は`view.yaml`の設計どおり実装できた(2-1〜2-3の3点を除く)。

## 4. 再生成テストの結果

```
dart run build_runner build --build-filter="lib/postgraphile/info_company/**"
```
結果: `Built with build_runner/aot in 28s; wrote 2 outputs.`
警告は既知のスカラーフォールバックのみ(`UUID`/`Cursor`/`Datetime`を`String`にフォールバック)。
エラーなし。

- `dart analyze lib/contents/info_company_keyname.dart lib/postgraphile/info_company test/info_company_flatten_roundtrip_test.dart`:
  906件、すべて`info`(生成コードのスタイル指摘)。`error`・`warning`は0件。
- `flutter test test/info_company_flatten_roundtrip_test.dart`: **3件すべて成功**
  (`All tests passed!`)。
  1. `Query$InfoCompanyRead <-> Map`往復変換が元と一致(read側)。
  2. `InfoCompanyKeyName` + `collapseSingleRecordPaths`でja/en(name/pronunciation)・
     `ceo`・`address1`(実スキーマの単純列)をすべて正しく解決できることを確認。
  3. `Mutation$InfoCompanyEdit <-> Map`往復変換が元と一致(edit側)。

リポジトリ全体でも確認した。

- `dart analyze lib test`: 906件、すべて`info`。`error`・`warning`は0件
  (削除した175件への参照漏れ等は無いことを確認)。
- `flutter test`(全体): `test/`配下に残るテストファイルは本ログで新規作成した
  `info_company_flatten_roundtrip_test.dart`の1件のみ(他30画面分は削除済み)。
  3件すべて成功(`All tests passed!`)。

## 5. 結論・CLAUDE.mdの見え消し削除について

2節のとおり、`view.yaml`の設計と実スキーマの間に3件の不整合(問題)を発見したため、
要件0033の「問題が見つからなかった場合はCLAUD.mdの見え消し部分を削除する」の条件を
満たさない。**CLAUDE.mdの見え消し(`~~...~~`)部分は削除していない。**

パイプライン自体(削除→view.yamlベースでの手作業GraphQL変換→build_runner→
nested_map_flattener往復変換テスト)は、上記の補正を加えたうえでinfo_company 1画面に
限り動作を確認できた。残り30画面については、view.yamlへの定義追加(`view.yaml`の
`CompanyPage`と同様の粒度)と、本ログ2節で発見した3点(呼称セットか否かの実スキーマ照合、
`requiredWhere: [code]`の代替方式)を踏まえた設計の見直しが今後の課題として残る。
