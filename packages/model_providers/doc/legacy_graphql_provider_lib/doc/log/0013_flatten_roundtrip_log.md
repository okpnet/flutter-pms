# 0013_モデル⇔Map往復変換テストログ

対象: 要件0012で生成されたモデル(`lib/postgraphile/Company/company_read.graphql.dart`の
`Query$CompanyRead`)から、[nested_map_flattener.dart](../lib/extensions/nested_map_flattener.dart)を
とおしてMapへ変換し、Mapからモデルへ復元できるかを検証する。

テストファイル: [test/flatten_roundtrip_test.dart](../test/flatten_roundtrip_test.dart)

## テスト内容

1. Postgraphileから返る想定のネストしたJSON(Company画面Read相当。事業所リスト
   `infoOfficesByInfoCompanyId`のようなRelay Connection形状(1対多)、および
   [共通名前仕様](../CLAUDE.md#共通名前仕様)のネスト(shared_appellations→shared_dictionary)を含む)
   をフィクスチャとして用意した。
2. `Query$CompanyRead.fromJson`で生成モデルに変換する。
3. モデルの`toJson()`で得たMapを`flatten()`で平坦化する。
4. 平坦化したMapを`unflatten()`で元のネスト構造に復元し、`Query$CompanyRead.fromJson`で
   再度モデルに変換する。
5. 復元後のMap・モデルが変換前と一致するか(`==`演算子。生成モデルは値ベースの`==`を持つ)を検証する。
6. 追加で、列指定版`flattenForColumns()`についても、共通名前仕様のネストパスを含む列指定で
   正しく値を取得できるかを検証した。

## 実行結果

```
$ flutter test test/flatten_roundtrip_test.dart
00:00 +0: loading .../test/flatten_roundtrip_test.dart
00:00 +0: 要件0013: 生成モデル(Query$CompanyRead) <-> Map 往復変換 モデル -> Map -> flatten -> unflatten -> Map -> モデル が元と一致する
00:00 +1: 要件0013: 生成モデル(Query$CompanyRead) <-> Map 往復変換 flattenForColumns で列指定した場合も、指定した列だけ復元できる
00:00 +2: All tests passed!
```

**結果: 成功。2件のテストとも合格。** モデル→Map→flatten→unflatten→Map→モデルの往復変換で、
値の欠落・変化は発生しなかった。事業所リスト(Connection形状/1対多)は設計どおり平坦化されず
そのままの構造で保持され、共通名前仕様のネスト(呼称セット→辞書のja/en)も正しく往復した。

## Map(平坦化後)のJSONテキスト

```json
{"infoCompanyByInfoCompanyId||infoCompanyId":"c1111111-1111-1111-1111-111111111111","infoCompanyByInfoCompanyId||webPage":"https://example.com","infoCompanyByInfoCompanyId||ceo":"山田太郎","infoCompanyByInfoCompanyId||remarks":"備考テキスト","infoCompanyByInfoCompanyId||updateAt":"2026-09-09T00:00:00","infoCompanyByInfoCompanyId||remove":false,"infoCompanyByInfoCompanyId||sharedAppellationBySharedAppellationsId||sharedAppellationsId":"a1111111-1111-1111-1111-111111111111","infoCompanyByInfoCompanyId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId":"d1111111-1111-1111-1111-111111111111","infoCompanyByInfoCompanyId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja":"株式会社サンプル","infoCompanyByInfoCompanyId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en":"Sample Co., Ltd.","infoCompanyByInfoCompanyId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||__typename":"SharedDictionary","infoCompanyByInfoCompanyId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId":"d2222222-2222-2222-2222-222222222222","infoCompanyByInfoCompanyId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja":"カブシキガイシャサンプル","infoCompanyByInfoCompanyId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en":null,"infoCompanyByInfoCompanyId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||__typename":"SharedDictionary","infoCompanyByInfoCompanyId||sharedAppellationBySharedAppellationsId||__typename":"SharedAppellation","infoCompanyByInfoCompanyId||infoAddressByInfoAddressId||infoAddressId":"ad111111-1111-1111-1111-111111111111","infoCompanyByInfoCompanyId||infoAddressByInfoAddressId||zipCode":"100-0001","infoCompanyByInfoCompanyId||infoAddressByInfoAddressId||address1":"東京都千代田区千代田1-1","infoCompanyByInfoCompanyId||infoAddressByInfoAddressId||address2":"サンプルビル3F","infoCompanyByInfoCompanyId||infoAddressByInfoAddressId||__typename":"InfoAddress","infoCompanyByInfoCompanyId||infoStaffsByInfoCompanyId||totalCount":42,"infoCompanyByInfoCompanyId||infoStaffsByInfoCompanyId||__typename":"InfoStaffsConnection","infoCompanyByInfoCompanyId||infoOfficesByInfoCompanyId":{"nodes":[{"infoOfficeId":"o1111111-1111-1111-1111-111111111111","sharedAppellationBySharedAppellationsId":{"sharedDictionaryBySharedDictionaryNameId":{"ja":"本社","en":"Head Office","__typename":"SharedDictionary"},"__typename":"SharedAppellation"},"__typename":"InfoOffice"}],"__typename":"InfoOfficesConnection"},"infoCompanyByInfoCompanyId||historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId":"h1111111-1111-1111-1111-111111111111","infoCompanyByInfoCompanyId||historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId":"s1111111-1111-1111-1111-111111111111","infoCompanyByInfoCompanyId||historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId":"a2222222-2222-2222-2222-222222222222","infoCompanyByInfoCompanyId||historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||__typename":"HistoryInfoStaff","infoCompanyByInfoCompanyId||__typename":"InfoCompany","__typename":"Query"}
```

## 復元後モデル(toJson)のJSONテキスト

```json
{"infoCompanyByInfoCompanyId":{"infoCompanyId":"c1111111-1111-1111-1111-111111111111","webPage":"https://example.com","ceo":"山田太郎","remarks":"備考テキスト","updateAt":"2026-09-09T00:00:00","remove":false,"sharedAppellationBySharedAppellationsId":{"sharedAppellationsId":"a1111111-1111-1111-1111-111111111111","sharedDictionaryBySharedDictionaryNameId":{"sharedDictionaryId":"d1111111-1111-1111-1111-111111111111","ja":"株式会社サンプル","en":"Sample Co., Ltd.","__typename":"SharedDictionary"},"sharedDictionaryBySharedDictionaryPronunciationId":{"sharedDictionaryId":"d2222222-2222-2222-2222-222222222222","ja":"カブシキガイシャサンプル","en":null,"__typename":"SharedDictionary"},"__typename":"SharedAppellation"},"infoAddressByInfoAddressId":{"infoAddressId":"ad111111-1111-1111-1111-111111111111","zipCode":"100-0001","address1":"東京都千代田区千代田1-1","address2":"サンプルビル3F","__typename":"InfoAddress"},"infoStaffsByInfoCompanyId":{"totalCount":42,"__typename":"InfoStaffsConnection"},"infoOfficesByInfoCompanyId":{"nodes":[{"infoOfficeId":"o1111111-1111-1111-1111-111111111111","sharedAppellationBySharedAppellationsId":{"sharedDictionaryBySharedDictionaryNameId":{"ja":"本社","en":"Head Office","__typename":"SharedDictionary"},"__typename":"SharedAppellation"},"__typename":"InfoOffice"}],"__typename":"InfoOfficesConnection"},"historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId":{"historyId":"h1111111-1111-1111-1111-111111111111","infoStaffId":"s1111111-1111-1111-1111-111111111111","sharedAppellationsId":"a2222222-2222-2222-2222-222222222222","__typename":"HistoryInfoStaff"},"__typename":"InfoCompany"},"__typename":"Query"}
```

上記2つのJSONを比較すると、`infoOfficesByInfoCompanyId`(Relay Connection形状/1対多)を除く
全リーフ値が`||`区切りで平坦化されており、`unflatten()`後は元のモデルのJSON(`toJson()`)と
完全に一致することが確認できる(テスト内`expect(restoredMap, equals(modelMap))`
および`expect(restoredModel, equals(model))`が合格)。

## 結論

`nested_map_flattener.dart`は、要件0012で生成されたモデル(`Query$CompanyRead`)が持つ
ネスト構造(共通名前仕様の多段ネスト、1対多のRelay Connection、null許容フィールド)に対して、
変更なしで正しく往復変換できることを確認した。**`nested_map_flattener.dart`の変更は不要。**
