// 要件0018・0019: info_company画面のGraphQL(info_company_read.graphql /
// info_company_edit.graphql)から build_runner で生成されたモデルが、
// nested_map_flattener.dart によってMapへ変換・復元できるかを検証する。
//
// test/flatten_roundtrip_test.dart(Company画面・要件0013)と同じ手順を、
// info_company画面(一覧・TrinaGrid向けページネーションクエリ)に適用したもの。
// 実行結果とMapをJSONにしたテキストは docs/0019_view_graphql_log.md に記録する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/info_company_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/info_company/info_company_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/info_company/info_company_read.graphql.dart';

/// Postgraphileから返る想定の一覧レスポンス(info_company画面 Read相当、1行分)。
Map<String, dynamic> _buildRawInfoCompanyReadJson() {
  return <String, dynamic>{
    'allInfoCompanies': {
      'totalCount': 1,
      'pageInfo': {
        'hasNextPage': false,
        'endCursor': null,
        '__typename': 'PageInfo',
      },
      'nodes': [
        {
          'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
          'webPage': 'https://example.com',
          'ceo': '山田太郎',
          'remarks': '備考テキスト',
          'updateAt': '2026-09-10T00:00:00',
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
      ],
      '__typename': 'InfoCompaniesConnection',
    },
    '__typename': 'Query',
  };
}

/// Postgraphileから返る想定の更新レスポンス(info_company画面 Edit相当)。
/// 建物/電話番号/FAX番号(Companyのeditには無く、info_companyのeditで新たに使う項目)を含む。
Map<String, dynamic> _buildRawInfoCompanyEditJson() {
  return <String, dynamic>{
    'updateInfoCompanyByInfoCompanyId': {
      'infoCompany': {
        'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
        'webPage': 'https://example.com',
        'ceo': '山田太郎',
        'remarks': '備考テキスト(編集後)',
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
          'bill': 'サンプルビル',
          'phone': '03-1111-2222',
          'faxNumber': '03-1111-2223',
          '__typename': 'InfoAddress',
        },
        '__typename': 'InfoCompany',
      },
      'clientMutationId': null,
      '__typename': 'UpdateInfoCompanyPayload',
    },
    '__typename': 'Mutation',
  };
}

void main() {
  group('要件0019: 生成モデル(Query\$InfoCompanyRead) <-> Map 往復変換', () {
    test('モデル -> Map -> flatten -> unflatten -> Map -> モデル が元と一致する', () {
      final rawJson = _buildRawInfoCompanyReadJson();

      final model = Query$InfoCompanyRead.fromJson(rawJson);
      final node = model.allInfoCompanies!.nodes.single!;

      // TrinaGridの1行に相当する、nodeレベルのMapを平坦化・復元する。
      final nodeMap = node.toJson();
      final flatMap = nodeMap.flatten();
      final restoredMap = flatMap.unflatten();
      final restoredNode =
          Query$InfoCompanyRead$allInfoCompanies$nodes.fromJson(restoredMap);

      expect(restoredMap, equals(nodeMap));
      expect(restoredNode, equals(node));

      // ログ記録用
      // ignore: avoid_print
      print('INFO_COMPANY_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
      // ignore: avoid_print
      print(
        'INFO_COMPANY_READ_RESTORED_NODE_JSON=${jsonEncode(restoredNode.toJson())}',
      );
    });

    test('InfoCompanyKeyNameの定数でflattenForColumnsした場合も列指定どおり復元できる', () {
      final rawJson = _buildRawInfoCompanyReadJson();
      final model = Query$InfoCompanyRead.fromJson(rawJson);
      final node = model.allInfoCompanies!.nodes.single!;
      final nodeMap = node.toJson();

      final columnFields = <String>[
        InfoCompanyKeyName.infoCompanyId,
        InfoCompanyKeyName.webPage,
        InfoCompanyKeyName
            .sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja,
        InfoCompanyKeyName.infoAddressByInfoAddressId_zipCode,
        InfoCompanyKeyName.infoStaffsByInfoCompanyId_totalCount,
      ];

      final flatColumns = nodeMap.flattenForColumns(columnFields);

      expect(flatColumns[InfoCompanyKeyName.infoCompanyId], node.infoCompanyId);
      expect(flatColumns[InfoCompanyKeyName.webPage], node.webPage);
      expect(
        flatColumns[InfoCompanyKeyName
            .sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja],
        node
            .sharedAppellationBySharedAppellationsId!
            .sharedDictionaryBySharedDictionaryNameId!
            .ja,
      );
      expect(
        flatColumns[InfoCompanyKeyName.infoAddressByInfoAddressId_zipCode],
        node.infoAddressByInfoAddressId!.zipCode,
      );
      expect(
        flatColumns[InfoCompanyKeyName.infoStaffsByInfoCompanyId_totalCount],
        node.infoStaffsByInfoCompanyId.totalCount,
      );
    });
  });

  group('要件0019: 生成モデル(Mutation\$InfoCompanyEdit) <-> Map 往復変換', () {
    test('モデル -> Map -> flatten -> unflatten -> Map -> モデル が元と一致する(建物/電話番号/FAX番号を含む)', () {
      final rawJson = _buildRawInfoCompanyEditJson();

      final model = Mutation$InfoCompanyEdit.fromJson(rawJson);
      final infoCompany = model.updateInfoCompanyByInfoCompanyId!.infoCompany!;

      final companyMap = infoCompany.toJson();
      final flatMap = companyMap.flatten();
      final restoredMap = flatMap.unflatten();
      final restoredModel =
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany
              .fromJson(restoredMap);

      expect(restoredMap, equals(companyMap));
      expect(restoredModel, equals(infoCompany));

      // 建物/電話番号/FAX番号が平坦化キーとして正しく復元できることを確認する。
      expect(
        flatMap[InfoCompanyKeyName.infoAddressByInfoAddressId_bill],
        infoCompany.infoAddressByInfoAddressId!.bill,
      );
      expect(
        flatMap[InfoCompanyKeyName.infoAddressByInfoAddressId_phone],
        infoCompany.infoAddressByInfoAddressId!.phone,
      );
      expect(
        flatMap[InfoCompanyKeyName.infoAddressByInfoAddressId_faxNumber],
        infoCompany.infoAddressByInfoAddressId!.faxNumber,
      );

      // ログ記録用
      // ignore: avoid_print
      print('INFO_COMPANY_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
      // ignore: avoid_print
      print(
        'INFO_COMPANY_EDIT_RESTORED_MODEL_JSON=${jsonEncode(restoredModel.toJson())}',
      );
    });
  });
}
