# 0033 実施ログ(SharedDictionary.ja/en廃止に伴う共通名前仕様の再設計・shipping_kind試作)

## 背景

要件0026(2026/09/20実施分)でschema.graphqlを再取得したところ、
[CLAUDE.md 共通名前仕様](../CLAUDE.md#共通名前仕様)が前提とする`SharedDictionary.ja`/`en`
スカラー列が廃止され、新設の`SharedLanguageCode`(言語コードマスタ)・
`SharedDictionaryValue`(辞書値、1言語1行)経由の構造に置き換わっていることが判明した
(詳細は[docs/0026_schema_fetch_log.md](0026_schema_fetch_log.md)追記9)。

影響は既存31画面のうち48個のGraphQLファイルに及ぶ全面的なものであり、要件0003の言う
「低減処置で対応できず仕様そのものの変更としてコミットすべき」領域に該当すると判断し、
以下の手順で対応した。

1.  ユーザーへ対応方針を確認 → **「新クエリ形状を設計してから全画面改修」を選択**。
2.  READ側・EDIT側それぞれのクエリ/ミューテーション形状を設計。
3.  EDIT側の空値表現についてユーザーへ確認 → **「空文字列('')を代用して常にja/enの2行を作る」を選択**。
4.  最小画面(shipping_kind、18定数)で試作し、動作確認。

## 1. スキーマの新構造(再掲)

- `SharedLanguageCode`: `sharedLanguageCodeId`・`code`(`String!`、例: `'ja'`/`'en'`、一意制約あり)・
  `label`・`priority`・`isDefault`・共通項。
- `SharedDictionaryValue`: `sharedDictionaryValueId`・`sharedLanguageCodeId`・`sharedDictionaryId`・
  `dictionaryValue`(`String!`)・共通項。`(shared_language_code_id, shared_dictionary_id)`に
  一意制約があるため、1つの`SharedDictionary`行に対して1言語につき常に0または1行。
- `SharedDictionary`は`sharedDictionaryValuesBySharedDictionaryId`(Relay Connection)経由で
  `SharedDictionaryValue`を参照する。

## 2. READ側の設計

`ja`/`en`をエイリアス付きの`sharedDictionaryValuesBySharedDictionaryId`フィールドとして取得し、
`condition: { sharedLanguageCodeId: $xxLanguageCodeId }`で言語を絞り込む。既存の
`@include(if: $ja)`/`@include(if: $en)`によるフィールド選択の出し分けはそのまま維持する。

```graphql
ja: sharedDictionaryValuesBySharedDictionaryId(
  condition: { sharedLanguageCodeId: $jaLanguageCodeId }
) @include(if: $ja) {
  nodes {
    dictionaryValue
  }
}
```

- 新規変数`$jaLanguageCodeId: UUID`・`$enLanguageCodeId: UUID`が全read/edit操作に追加される。
  値の解決(`SharedLanguageCode`を`code`で検索してIDを得る)はアプリケーション側の責務とする
  (要件0005「アプリケーションがローカライズを基に引数として与える」の考え方を踏襲)。
- `nested_map_flattener.dart`の`flattenForColumns`が持つ`collapseSingleRecordPaths`
  (1対多だが実質1対1のConnectionを先頭1件として展開する既存機能)がそのまま使える。
  一意制約により対象パスは常に0〜1件のため、安全に適用できる。
- 平坦化キーは`...||ja`から`...||ja||dictionaryValue`へ1段深くなる。`lib/contents/*_keyname.dart`
  の対応する定数名は`..._ja`→`..._ja_dictionaryValue`にリネームする。
- `flatten()`(汎用・列指定なし)は、Connection形状のMapを従来どおり再帰せず保持するだけで
  対称性(round-trip)が保たれるため、変更不要。

## 3. EDIT側の設計

`sharedDictionaryPatch: { ja: ..., en: ... }`は使用できなくなるため、
`sharedDictionaryValuesUsingSharedDictionaryId`(ネストしたinverse relation input)の
`deleteOthers: true` + `create: [...]`で、ja/enの2行を毎回まるごと置き換える方式を採用する。

```graphql
sharedDictionaryPatch: {
  sharedDictionaryValuesUsingSharedDictionaryId: {
    deleteOthers: true
    create: [
      { sharedLanguageCodeId: $jaLanguageCodeId, dictionaryValue: $nameJa }
      { sharedLanguageCodeId: $enLanguageCodeId, dictionaryValue: $nameEn }
    ]
  }
}
```

検討した代替案とその却下理由:

| 案 | 却下理由 |
|---|---|
| `create`リストをアプリ層で動的組み立て(値がnullの言語を除外) | GraphQL変数の型として`SharedDictionaryValueFk1SharedDictionaryValueCreateInput`のような
  postgraphile-plugin-nested-mutations由来のFk#付き型名を`.graphql`ファイルに直接書く必要があり、
  スキーマ再取得のたびにFk番号が再採番されうる(要件0026の既知の癖)ため、既存コードベースの
  「Fk#付き型名を手書きGraphQLで参照しない」慣習から外れる。 |
| 言語ごとに別ミューテーション(標準の`updateSharedDictionaryValueBySharedLanguageCodeIdAndSharedDictionaryId`等)を都度呼ぶ | 1画面1編集mutationの既存規約から外れ、1回の編集が複数mutationに分解される。 |

**採用**: `dictionaryValue`は`String!`のため、翻訳が無い言語は**空文字列('')**で表現する
(呼び出し側でnull→''変換を行う。ユーザー合意済み)。これにより`create`は常に2要素の静的リストで
書け、Fk#付き型名にも依存しない。

- 変数`$nameJa`/`$nameEn`等は、旧`String`(nullable)から`String!`(必須)に変更する
  (呼び出し側が事前に''へ変換する契約を型で明示する)。
- 出力選択(戻り値)側もREAD側と同じエイリアス+Connection形状に変更する。

## 4. 試作: shipping_kind画面

最小規模(18定数、呼称セット×3・共通項のみ)の画面を選び、設計を実装した。

### 変更ファイル

- [lib/graphql/shipping_kind/shipping_kind_read.graphql](../lib/graphql/shipping_kind/shipping_kind_read.graphql):
  `ShippingKindRead`・`ShippingKindReadUpdaterAppellation`の両クエリで、3箇所
  (名前/読み/略称)×2言語のja/enフィールドを新形状に変更。`$jaLanguageCodeId`・
  `$enLanguageCodeId`変数を追加。
- [lib/graphql/shipping_kind/shipping_kind_edit.graphql](../lib/graphql/shipping_kind/shipping_kind_edit.graphql):
  3箇所の`sharedDictionaryPatch`を`deleteOthers`+`create`方式に変更。
  `$nameJa`等6変数を`String!`に変更し、`$jaLanguageCodeId: UUID!`・
  `$enLanguageCodeId: UUID!`を追加。出力選択も新形状に変更。
- [lib/contents/shipping_kind_keyname.dart](../lib/contents/shipping_kind_keyname.dart):
  `..._ja`/`..._en`の6定数を`..._ja_dictionaryValue`/`..._en_dictionaryValue`にリネーム。
- [test/shipping_kind_flatten_roundtrip_test.dart](../test/shipping_kind_flatten_roundtrip_test.dart):
  モックJSONを新しいConnection形状(`{nodes: [{dictionaryValue: ...}]}`、値が無い場合は
  `{nodes: []}`)に変更。`ShippingKindKeyName`の新定数と`collapseSingleRecordPaths`を使って
  ja/enを解決するテストを追加。

### 実行結果

```
dart run build_runner build --build-filter="lib/postgraphile/shipping_kind/**"
```
→ `Built with build_runner/aot in 8s; wrote 2 outputs.`(新スキーマに対して`ja`/`en`の
新フィールド構成が正しく解決され、コード生成エラーなし)。

- `dart analyze lib/contents/shipping_kind_keyname.dart lib/postgraphile/shipping_kind test/shipping_kind_flatten_roundtrip_test.dart`:
  error・warning 0件。
- `flutter test test/shipping_kind_flatten_roundtrip_test.dart`: 3件(既存2件+新規1件)成功。
- `flutter test`(全体): 61件すべて成功。他30画面は今回`--build-filter`で対象外のため
  未再生成・無影響であることを確認。

## 5. 残作業(未着手)

以下は本ログの範囲外(次回以降の作業)。

1.  **他30画面のGraphQL・KeyName改修**: shipping_kindと同じ変換をorg_res_equipment_kind等の
    残り全画面へ適用する。画面ごとに呼称セット参照箇所の数が異なるため、置換パターンの
    機械化(スクリプト化)を検討する。
2.  **`$jaLanguageCodeId`/`$enLanguageCodeId`解決クエリの追加**: `SharedLanguageCode`を
    `code`で検索するクエリ(アプリ起動時に1度呼び出し、UUIDをキャッシュする想定)がまだ
    どの画面にも存在しない。共通のブートストラップ用GraphQL(例:
    `lib/graphql/shared_language_code/shared_language_code_read.graphql`)を新設する必要がある。
3.  **[CLAUDE.md 共通名前仕様](../CLAUDE.md#共通名前仕様)本文の更新**: 本ログの設計内容を
    正式な仕様として反映するかどうかはユーザー判断(CLAUDE.mdの要件追記はユーザーの
    指示チャネルであるため、本ログでは編集していない)。
4.  **全画面再生成後の`dart analyze`/`flutter test`の総合確認**。

上記のうち、どこから着手するか(1画面ずつ確認しながら進めるか、まとめて機械変換するか等)は
次回の指示を待つ。
