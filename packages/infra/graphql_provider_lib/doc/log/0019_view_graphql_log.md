# 0019_画面仕様→GraphQL作成ログ(要件0006の手順、要件0011・0017・0018の規則を適用)

対象: [画面仕様](../source/views.md) の "info_company" 項目(要件0019)から
`lib/graphql/info_company/info_company_read.graphql` ・
`lib/graphql/info_company/info_company_edit.graphql` を作成するにあたり、
要件0006「ただし、graphql作成前に問題がある箇所はログを残す」に従い、
作成前に確認した内容・問題点を記録する。

参照した実スキーマ: [lib/graphql/schema.graphql](../lib/graphql/schema.graphql)(容量が大きいため、
`InfoCompany`・`InfoAddress`・関連する`Condition`/`Patch`/`Fk*Input`型のみを個別に参照した)。

## "Company"(要件0007)との違い・位置づけ

[画面仕様](../source/views.md)には`InfoCompany`テーブルを対象にした画面が2つ存在する。

- "Company"(要件0007で対応済): 単一レコードの詳細編集画面。`infoCompanyByInfoCompanyId(infoCompanyId: ...)`による単票取得。
- "info_company"(本ログの対象): [フロントエンド仕様](../CLAUDE.md#フロントエンド仕様)の
  「ほぼすべての画面はTrinaGridを使用して、リスト、ツリー表示を行う」に対応する一覧画面。
  要件0018([GraphQL変換ルール](../CLAUDE.md#GraphQL変換ルール))で新たに定義された
  「ページネーション」「取得する最大行数を引数で受け取る」「検索条件をcondition(Map)で受け取る」
  「使用する言語を引数で受け取る」という一覧クエリ向けの規則を、初めて適用して評価する対象。

そのため、対象テーブルは"Company"と同じ`InfoCompany`だが、クエリ形状は
`allInfoCompanies(first, offset, condition, orderBy)`によるConnection取得とした。

## 実スキーマ確認結果

| 項目 | 確認結果 |
|---|---|
| 一覧取得 | `Query.allInfoCompanies(first, last, offset, before, after, orderBy: [InfoCompaniesOrderBy!], condition: InfoCompanyCondition, filter: InfoCompanyFilter): InfoCompaniesConnection` が存在。`nodes`/`edges`/`pageInfo`/`totalCount`を持つ。 |
| 検索条件 | `InfoCompanyCondition`は`infoCompanyId`/`sharedAppellationsId`/`infoAddressId`/`webPage`/`ceo`/`revision`/`remarks`/`updateAt`/`updateUserId`/`updateUserHistoryId`/`remove`の全項目が任意(nullable)。要件0018「条件はNULLもあり得る」を満たす。 |
| 会社名/読み | `InfoCompany.sharedAppellationBySharedAppellationsId` -> `SharedAppellation.sharedDictionaryBySharedDictionaryNameId`/`sharedDictionaryBySharedDictionaryPronunciationId` -> `SharedDictionary.ja`/`en`。[共通名前仕様](../CLAUDE.md#共通名前仕様)どおり存在(0007/0010で解消済のFKを再利用)。 |
| 郵便番号/住所1~3 | `InfoAddress`に`zipCode`/`address1`/`address2`はあるが`address3`相当の列はなし。**⚠#1(既知)**: [0007ログ #5](0007_view_graphql_log.md)と同一の制約。住所3行目は今回も取得不可。 |
| 建物/電話番号/FAX番号 | `InfoAddress.bill`/`phone`/`faxNumber`が存在することを確認。"Company"画面のEditでは使用しなかったが、"info_company"画面のEditで新たに使用する。 |
| 備考(info_company) | `InfoCompany.remarks`をそのまま使用(共通項)。 |
| 所属するスタッフ数/事業所のリスト | `InfoCompany.infoStaffsByInfoCompanyId(...).totalCount` / `InfoCompany.infoOfficesByInfoCompanyId(...).nodes`が存在。0007/0010で解消済の逆参照FKを再利用。 |
| 共通項「更新者名」 | `InfoCompany.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId`は存在するが、その先の`sharedAppellationsId` -> `SharedAppellation`への外部キーは実スキーマに未定義。**⚠#2(既知)**: [0007ログ #2](0007_view_graphql_log.md)と同一の制約。"Company"と同様、別クエリ`InfoCompanyReadUpdaterAppellation`に分離して解決する。 |
| 更新(Edit) | `InfoCompanyPatch`に`sharedAppellationToSharedAppellationsId: InfoCompanyFk1Input`・`infoAddressToInfoAddressId: InfoCompanyFk2Input`のネスト入力を確認(`postgraphile-plugin-nested-mutations`)。`InfoCompanyFk1Input.updateBySharedAppellationsId`・`InfoCompanyFk2Input.updateByInfoAddressId`経由で、"Company"のEditと同じ入れ子更新パターンが使える。`SharedAppellationPatch`->`sharedDictionaryToSharedDictionaryNameId`/`...PronunciationId`、`InfoAddressPatch`(`zipCode`/`address1`/`address2`/`bill`/`phone`/`faxNumber`)も同様に確認済。 |

## 対応方針

- #1・#2は"Company"画面(要件0007)から継続する既知のDB制約であり、本ライブラリの責務外(DB構成変更)。
  [0003_risk_assessment.md](0003_risk_assessment.md)の基準に沿って低減処置(外部キー追加)が可能と判定済みのため、
  本ログでは新規の判定は行わず、0007ログの対応方針を踏襲する。
- 上記を踏まえ、`info_company_read.graphql`・`info_company_edit.graphql`は要件0018の規則
  (ページネーション/条件/言語引数、nested_map_flattener対応)に沿って作成する。
- 続けて、要件0018の手順に従い、`lib/contents/info_company_keyname.dart`(平坦化キーの定数クラス)・
  モデル別の往復変換テスト・build_runner再実行を行う(結果は本ログに追記する)。

## 追記1: build_runner実行結果(2026/09/10)

`lib/graphql/info_company/info_company_read.graphql`・`info_company_edit.graphql`作成後、
要件0018「指示全てのGraphQLを作成後、buildrunnerを実行し、モデルを生成する」に従い
`flutter pub run build_runner build` を実行。結果は成功(exit code 0)。

- `lib/postgraphile/info_company/info_company_read.graphql.dart` (約194KB)
- `lib/postgraphile/info_company/info_company_edit.graphql.dart` (約118KB)

いずれも5000KB未満のため、要件0015のGit無視リスト追加は不要(`.gitignore`にも参考として追記済)。
生成されたモデルクラス(`Query$InfoCompanyRead`・`Query$InfoCompanyReadUpdaterAppellation`・
`Mutation$InfoCompanyEdit`とそのネストクラス群)は、事前にスキーマ調査した型・フィールド名と
過不足なく一致した。

## 追記2: nested_map_flattener往復変換テスト(2026/09/10、要件0018・0013踏襲)

`test/info_company_flatten_roundtrip_test.dart` を作成し、以下3件を検証した(結果: 3 tests, all passed)。

1. `Query$InfoCompanyRead`(一覧の1行分, `nodes`の要素)-> `toJson()` -> `flatten()` ->
   `unflatten()` -> `fromJson()` の往復変換が、Map・モデルの両方で元と一致することを確認。
2. `lib/contents/info_company_keyname.dart` の `InfoCompanyKeyName` 定数を使った
   `flattenForColumns()` が、会社名(ja)・郵便番号・スタッフ数など指定した列を正しく復元できることを確認。
3. `Mutation$InfoCompanyEdit`(更新後の`infoCompany`)の往復変換に加え、"Company"画面のEditには
   無かった建物(`bill`)・電話番号(`phone`)・FAX番号(`faxNumber`)が、平坦化キー
   (`infoAddressByInfoAddressId||bill`等)として正しく取得・復元できることを確認。

平坦化したMap・復元後モデルのJSON(抜粋、住所ID等はテスト用のダミー値):

```json
INFO_COMPANY_READ_FLAT_MAP_JSON(抜粋)=
{"infoCompanyId":"c1111111-...","webPage":"https://example.com","ceo":"山田太郎",
 "sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja":"株式会社サンプル",
 "infoAddressByInfoAddressId||zipCode":"100-0001",
 "infoStaffsByInfoCompanyId||totalCount":42,
 "infoOfficesByInfoCompanyId":{"nodes":[{"infoOfficeId":"o1111111-...", ...}], ...}}

INFO_COMPANY_EDIT_FLAT_MAP_JSON(抜粋)=
{"infoCompanyId":"c1111111-...","remarks":"備考テキスト(編集後)",
 "infoAddressByInfoAddressId||bill":"サンプルビル",
 "infoAddressByInfoAddressId||phone":"03-1111-2222",
 "infoAddressByInfoAddressId||faxNumber":"03-1111-2223"}
```

(完全なJSONテキストはテスト実行時の標準出力 `INFO_COMPANY_READ_FLAT_MAP_JSON` /
`INFO_COMPANY_READ_RESTORED_NODE_JSON` / `INFO_COMPANY_EDIT_FLAT_MAP_JSON` /
`INFO_COMPANY_EDIT_RESTORED_MODEL_JSON` を参照)

変換の失敗・`nested_map_flattener.dart`の変更は発生しなかったため、処理の中断は無し。

## 追記3: 要件0019の評価(0006・0011・0017・0018の一連の規則について)

"Company"(要件0007、単票の詳細編集)とは別に、一覧・TrinaGrid向けの"info_company"画面を
要件0018の新規則(ページネーション・条件・言語引数・lib/contents定数化)に沿って一から作成し、
問題なくモデル生成・往復変換テストまで完了できることを確認した。フォルダ/ファイル命名(要件0011・0017)、
GraphQL変換ルール(要件0018)ともに、既存の"Company"実装からの流用・拡張がしやすく、
実運用可能な規則であると評価する。追加の仕様変更は不要。
