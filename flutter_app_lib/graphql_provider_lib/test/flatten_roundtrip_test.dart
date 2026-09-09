// 要件0013: build_runnerで生成されたモデル(Query$CompanyRead)から
// nested_map_flattener.dartを使ってMapへ変換し、Mapからモデルへ復元できるかを検証する。
//
// 手順:
//   1. Postgraphileから返るであろうネストしたJSON(Map)を模したフィクスチャを用意する。
//   2. Query$CompanyRead.fromJson でモデルに変換する(= graphql_generatorの生成物としての利用)。
//   3. モデルの toJson() で得たMapを nested_map_flattener.dart の flatten() で平坦化する。
//   4. 平坦化したMapを unflatten() で元のネスト構造に復元し、再度モデルに変換する。
//   5. 復元後のMap・モデルが変換前と一致するか(往復変換できるか)を検証する。
//
// 実行結果とMapのJSONテキストは docs/0013_flatten_roundtrip_log.md に記録する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/Company/company_read.graphql.dart';

/// Postgraphileから返る想定のネストしたJSON(Company画面 Read相当)。
/// 事業所リスト(1対多/Connection形状)を含め、共通名前仕様のネストも再現する。
Map<String, dynamic> _buildRawCompanyReadJson() {
  return <String, dynamic>{
    'infoCompanyByInfoCompanyId': {
      'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
      'webPage': 'https://example.com',
      'ceo': '山田太郎',
      'remarks': '備考テキスト',
      'updateAt': '2026-09-09T00:00:00',
      'remove': false,
      'sharedAppellationBySharedAppellationsId': {
        'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
        'sharedDictionaryBySharedDictionaryNameId': {
          'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
          'ja': '株式会社サンプル',
          'en': 'Sample Co., Ltd.',
          '__typename': 'SharedDictionary',
        },
        'sharedDictionaryBySharedDictionaryPronunciationId': {
          'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
          'ja': 'カブシキガイシャサンプル',
          'en': null,
          '__typename': 'SharedDictionary',
        },
        '__typename': 'SharedAppellation',
      },
      'infoAddressByInfoAddressId': {
        'infoAddressId': 'ad111111-1111-1111-1111-111111111111',
        'zipCode': '100-0001',
        'address1': '東京都千代田区千代田1-1',
        'address2': 'サンプルビル3F',
        '__typename': 'InfoAddress',
      },
      'infoStaffsByInfoCompanyId': {
        'totalCount': 42,
        '__typename': 'InfoStaffsConnection',
      },
      'infoOfficesByInfoCompanyId': {
        'nodes': [
          {
            'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
            'sharedAppellationBySharedAppellationsId': {
              'sharedDictionaryBySharedDictionaryNameId': {
                'ja': '本社',
                'en': 'Head Office',
                '__typename': 'SharedDictionary',
              },
              '__typename': 'SharedAppellation',
            },
            '__typename': 'InfoOffice',
          },
        ],
        '__typename': 'InfoOfficesConnection',
      },
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
        'historyId': 'h1111111-1111-1111-1111-111111111111',
        'infoStaffId': 's1111111-1111-1111-1111-111111111111',
        'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
        '__typename': 'HistoryInfoStaff',
      },
      '__typename': 'InfoCompany',
    },
    '__typename': 'Query',
  };
}

void main() {
  group('要件0013: 生成モデル(Query\$CompanyRead) <-> Map 往復変換', () {
    test('モデル -> Map -> flatten -> unflatten -> Map -> モデル が元と一致する', () {
      final rawJson = _buildRawCompanyReadJson();

      // 1) 生成モデルへの変換(= Postgraphileレスポンスをモデル化する想定)
      final model = Query$CompanyRead.fromJson(rawJson);

      // 2) モデル -> Map(ドメインモデルのJSON表現) -> 平坦化
      final modelMap = model.toJson();
      final flatMap = modelMap.flatten();

      // 3) 平坦化Map -> 復元(ネスト構造)-> モデルへ再変換
      final restoredMap = flatMap.unflatten();
      final restoredModel = Query$CompanyRead.fromJson(restoredMap);

      // 4) 往復変換の検証(Map・モデルの両方で元と一致することを確認)
      expect(restoredMap, equals(modelMap));
      expect(restoredModel, equals(model));

      // ログ記録用に、平坦化したMapと復元後モデルのJSONテキストを出力する。
      // (docs/0013_flatten_roundtrip_log.md へ転記する)
      // ignore: avoid_print
      print('FLAT_MAP_JSON=${jsonEncode(flatMap)}');
      // ignore: avoid_print
      print('RESTORED_MODEL_JSON=${jsonEncode(restoredModel.toJson())}');
    });

    test('flattenForColumns で列指定した場合も、指定した列だけ復元できる', () {
      final rawJson = _buildRawCompanyReadJson();
      final model = Query$CompanyRead.fromJson(rawJson);
      final companyMap = model.infoCompanyByInfoCompanyId!.toJson();

      const columnFields = [
        'infoCompanyId',
        'webPage',
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        'infoAddressByInfoAddressId||zipCode',
      ];

      final flatColumns = companyMap.flattenForColumns(columnFields);

      expect(flatColumns['infoCompanyId'], model.infoCompanyByInfoCompanyId!.infoCompanyId);
      expect(flatColumns['webPage'], model.infoCompanyByInfoCompanyId!.webPage);
      expect(
        flatColumns['sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja'],
        model
            .infoCompanyByInfoCompanyId!
            .sharedAppellationBySharedAppellationsId!
            .sharedDictionaryBySharedDictionaryNameId!
            .ja,
      );
      expect(
        flatColumns['infoAddressByInfoAddressId||zipCode'],
        model.infoCompanyByInfoCompanyId!.infoAddressByInfoAddressId!.zipCode,
      );
    });
  });
}
