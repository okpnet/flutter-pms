# 0036 実施ログ(company_page読み込み系GraphQLの言語引数を単純化)

## 指示

> 0036の実行

要件0036(CLAUDE.md):
> 出力されたGraphQLの引数に古い列指定パターンが含まれていたので生成パターンを修正する。
> "$ja: Boolean!,$en: Boolean!"->"$languageCode: String"のように言語コード("JA"や"EN")で
> 受け取る。schema.jsonの変更が必要であれば修正する。

## 0. 設計確認(ユーザー判断)

`$ja: Boolean!`/`$en: Boolean!`は、要件0033・shipping_kind試作から引き継いだ実装上の
仕組みであり、`27_yaml_to_graphql_conversion_rules.md`・`view.yaml`・`schema.json`側の
設計(4-1節、`requiredWhere:[code]`を外部解決してUUIDを渡す2段階方式)そのものとは別物
だった(view.yaml/schema.jsonにboolean/言語トグルの概念は存在しない)。

指示の「$languageCode: String」を文字通り実装しようとすると、実スキーマの
`SharedDictionaryValueCondition`/`Filter`は`sharedLanguageCodeId: UUID`のフィルタしか
提供せず、`code`(文字列)を直接condition/filter引数として渡すことはGraphQLの型システム上
できない(String型変数をUUID型引数の位置では使えない、バリデーションエラー)ため、
実装方針をユーザーに確認した。

**採用方針(ユーザー選択)**: 1回の呼び出しで言語1つのみ取得する設計に変更する。
実際のGraphQL変数は引き続き事前解決済みのUUID(`$languageCodeId: UUID!`)のままとし、
`$ja: Boolean!`/`$en: Boolean!`/`$jaLanguageCodeId: UUID`/`$enLanguageCodeId: UUID`
(計4変数)を、1つの`$languageCodeId: UUID!`に集約する。呼び出し側(アプリ層)が
「JA」「EN」のような言語コードから`SharedLanguageCode`を検索してUUIDへ解決する処理は
従来どおり(要件0033・0034で確立済みの2段階方式を維持)。

schema.json・view.yamlはこの変更の影響を受けない(言語引数の扱いはYAML定義の範囲外、
生成側(手作業でのGraphQL変換)の実装詳細のため)。このため**schema.jsonの変更は不要**と
判断した。

## 1. 適用範囲の判断

`$ja: Boolean!`/`$en: Boolean!`パターンは`company_page_read.graphql`と
`company_page_rfe.graphql`の2ファイルに存在した(`company_page_edit.graphql`には
存在しない。editは`$nameJa`/`$nameEn`等、ja/en個別のString変数を常に必須で受け取る
別パターンで、booleanトグルは元々使っていない)。

- **company_page_read.graphql**: 表示用の一覧取得クエリであり、実際のUIは1回に
  現在の表示言語1つしか必要としないと判断できるため、ユーザー選択の「1回の呼び出しで
  言語1つのみ取得」をそのまま適用した。
- **company_page_rfe.graphql**: 編集フォームへのプリセット用クエリであり、編集
  ミューテーション(`company_page_edit.graphql`)は`deleteOthers`+`create`でja/en
  2件を毎回丸ごと置き換える方式のため、RFEは**常に両方の言語が必要**(単一言語化は
  不可)。このため「1回の呼び出しで言語1つのみ」は適用せず、`$ja`/`$en`という
  常にtrueで呼ばれるだけの無意味なboolean変数のみを撤廃し、`$jaLanguageCodeId`/
  `$enLanguageCodeId`を`UUID`(任意)から`UUID!`(必須)にしたうえで両方の
  フィールドを`@include`無しで常時取得する形に単純化した。

## 2. 変更したファイル

- [lib/graphql/company_page/company_page_read.graphql](../lib/graphql/company_page/company_page_read.graphql):
  `$ja`/`$en`/`$jaLanguageCodeId`/`$enLanguageCodeId`(4変数)を`$languageCodeId: UUID!`
  (1変数)に統一。全15箇所の辞書値フィールド(会社名×3・ceo×3・address1×3・address2×3・
  billName×3)を、`ja:`/`en:`のアリアスされた2フィールド+`@include`から、
  `value:`という単一エイリアスの1フィールドに変更。
- [lib/graphql/company_page/company_page_rfe.graphql](../lib/graphql/company_page/company_page_rfe.graphql):
  `$ja: Boolean!`/`$en: Boolean!`を撤廃。`$jaLanguageCodeId`/`$enLanguageCodeId`を
  `UUID!`(必須)に変更。`ja:`/`en:`両フィールドから`@include(if: ...)`を除去し、
  常時取得する形に変更(フィールド構成自体は変更なし)。
- [lib/graphql/company_page/company_page_edit.graphql](../lib/graphql/company_page/company_page_edit.graphql):
  対象パターンが存在しないため変更なし。
- [lib/contents/company_page_keyname.dart](../lib/contents/company_page_keyname.dart):
  read用の新キー`..._value_dictionaryValue`を15箇所ぶん追加(read側は`value`エイリアス、
  edit/RFEの戻り値は引き続き`ja`/`en`エイリアスのため、既存の`..._ja_dictionaryValue`/
  `..._en_dictionaryValue`はedit/RFE用として維持)。
- [test/company_page_flatten_roundtrip_test.dart](../test/company_page_flatten_roundtrip_test.dart):
  read用のモックJSON生成ヘルパーを`value`単一形状用に新設(`_sharedAppellationReadJson`等)
  し、read側のテストデータ・KeyName解決テストを新形状に更新。edit/RFE用のモックJSON
  (`_sharedAppellationJson`等、ja/enペア)は変更なし。

## 3. read/edit間のキー構造の非対称性について(記録)

この変更により、company_pageのread(`value`単一エイリアス)とedit/RFEの戻り値
(`ja`/`en`ペア)は、同じ辞書値に対して異なる平坦化キー構造を持つことになった。
要件0032・0033が前提とする「readのMapとeditのMapの列名を一致させる」原則には
厳密には反するが、これは意図的な非対称性であり、理由は以下のとおり。

- read(表示)は1回に1言語のみ必要(呼び出し側の表示言語に応じて`$languageCodeId`を
  差し替えて再取得する想定)。
- edit(編集)・RFE(編集フォームへのプリセット)は、1回の編集操作でja/en両方を
  同時に確定させる必要があるため、常に両方が必要。

この非対称性は表示用途と編集用途の要件の違いに起因するものであり、対応方針として
新たなプロパティや仕組みを追加する必要は無いと判断した(読み込んだread結果をそのまま
編集ミューテーションの入力Mapとして使い回すことは、そもそもこの画面ではできない
設計になっている。編集にはRFEを使う、という要件0027の方針どおり)。

## 4. build_runner・検証

`lib/graphql/schema.graphql`が別途(要件0024)大きく更新されたため、`schema.graphql.dart`
の再生成(`--build-filter="lib/postgraphile/schema.graphql.dart"`)を先に実行してから、
本変更ぶんの`--build-filter="lib/postgraphile/company_page/**"`を実行した(build_runnerの
同時多重実行によるロック競合を避けるため)。結果は追記1に記録する。
