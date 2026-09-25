// 要件0033: info_company画面(source/view.yaml #CompanyPage)のGraphQLから build_runner で
// 生成されたモデルの nested_map_flattener.dart 往復変換を検証する。既存GraphQL・生成物を
// 一度削除しての再生成テストとして、テストのためinfo_companyのみ実装している。
// 結果はdocs/0033_view_yaml_regeneration_test_log.md に記録する。
//
// ⚠ view.yamlのCompanyPage定義と実スキーマの差異(ceo/address1/address2/billが
// shared_appellations経由ではなく単純なString列であること)を踏まえ、
// info_company_read.graphql/info_company_edit.graphqlのコメントに記載のとおり補正済み。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/info_company_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/info_company/info_company_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/info_company/info_company_read.graphql.dart';

/// [ja]/[en]をSharedDictionaryValueのConnection形状(nodes)にラップする。
/// 値が無い言語は空配列(0件)にする。
Map<String, dynamic> _dictionaryValueConnection(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'dictionaryValue': value, '__typename': 'SharedDictionaryValue'},
        ],
  '__typename': 'SharedDictionaryValuesConnection',
};

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': _dictionaryValueConnection('株式会社テスト'),
    'en': _dictionaryValueConnection('Test Co., Ltd.'),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': _dictionaryValueConnection('カブシキガイシャテスト'),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': _dictionaryValueConnection('テスト'),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _infoAddressJson() => {
  'infoAddressId': 'ad111111-1111-1111-1111-111111111111',
  'iso31663': 'JPN',
  'zipCode': '100-0001',
  'address1': '東京都千代田区千代田1-1',
  'address2': 'テストビル10F',
  'bill': 'テストビル',
  'phone': '03-1234-5678',
  'faxNumber': '03-1234-5679',
  'remarks': null,
  'updateAt': '2026-09-25T00:00:00',
  'remove': false,
  '__typename': 'InfoAddress',
};

Map<String, dynamic> _buildRawReadJson() => {
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
        'ceo': '代表 太郎',
        'symbol': 'CO001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-25T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'infoAddressByInfoAddressId': _infoAddressJson(),
        'infoOfficesByInfoCompanyId': {
          'totalCount': 0,
          'pageInfo': {
            'hasNextPage': false,
            'endCursor': null,
            '__typename': 'PageInfo',
          },
          'nodes': <dynamic>[],
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

Map<String, dynamic> _buildRawEditJson() => {
  'updateInfoCompanyByInfoCompanyId': {
    'infoCompany': {
      'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
      'webPage': 'https://example.com',
      'ceo': '代表 太郎(編集後)',
      'symbol': 'CO001',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      'infoAddressByInfoAddressId': _infoAddressJson(),
      '__typename': 'InfoCompany',
    },
    'clientMutationId': null,
    '__typename': 'UpdateInfoCompanyPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0033: Query\$InfoCompanyRead <-> Map 往復変換が元と一致する', () {
    final model = Query$InfoCompanyRead.fromJson(_buildRawReadJson());
    final node = model.allInfoCompanies!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$InfoCompanyRead$allInfoCompanies$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('INFO_COMPANY_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test(
    '要件0033: InfoCompanyKeyName + collapseSingleRecordPathsでja/en・住所を解決できる',
    () {
      final model = Query$InfoCompanyRead.fromJson(_buildRawReadJson());
      final node = model.allInfoCompanies!.nodes.single!;
      final nodeMap = node.toJson();

      const nameJa = InfoCompanyKeyName
          .sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja_dictionaryValue;
      const nameEn = InfoCompanyKeyName
          .sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en_dictionaryValue;
      const pronunciationEn = InfoCompanyKeyName
          .sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en_dictionaryValue;

      const collapsePaths = {
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
      };

      final flatColumns = nodeMap.flattenForColumns([
        nameJa.name,
        nameEn.name,
        pronunciationEn.name,
        InfoCompanyKeyName.infoAddressByInfoAddressId_address1.name,
        InfoCompanyKeyName.ceo.name,
      ], collapseSingleRecordPaths: collapsePaths);

      expect(flatColumns[nameJa.name], '株式会社テスト');
      expect(flatColumns[nameEn.name], 'Test Co., Ltd.');
      expect(flatColumns[pronunciationEn.name], isNull);
      // 実スキーマでは呼称セットではなく単純な列のため、そのまま取得できる。
      expect(
        flatColumns[InfoCompanyKeyName.infoAddressByInfoAddressId_address1.name],
        '東京都千代田区千代田1-1',
      );
      expect(flatColumns[InfoCompanyKeyName.ceo.name], '代表 太郎');
    },
  );

  test('要件0033: Mutation\$InfoCompanyEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$InfoCompanyEdit.fromJson(_buildRawEditJson());
    final infoCompany =
        model.updateInfoCompanyByInfoCompanyId!.infoCompany!;

    final companyMap = infoCompany.toJson();
    final flatMap = companyMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(companyMap));
    expect(restoredModel, equals(infoCompany));

    // ignore: avoid_print
    print('INFO_COMPANY_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
