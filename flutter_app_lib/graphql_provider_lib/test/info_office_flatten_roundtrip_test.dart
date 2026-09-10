// 要件0018・0021: info_office画面のGraphQL(info_office_read.graphql /
// info_office_edit.graphql)から build_runner で生成されたモデルが、
// nested_map_flattener.dart によってMapへ変換・復元できるかを検証する。
// 実行結果は docs/0021_view_graphql_log.md に記録する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/info_office/info_office_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/info_office/info_office_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '本社事業所',
    'en': 'Head Office',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'ホンシャジギョウショ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': '本社',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _infoAddressJson() => {
  'infoAddressId': 'ad111111-1111-1111-1111-111111111111',
  'zipCode': '100-0001',
  'address1': '東京都千代田区千代田1-1',
  'address2': 'サンプルビル3F',
  'bill': 'サンプルビル',
  'phone': '03-1111-2222',
  'faxNumber': '03-1111-2223',
  '__typename': 'InfoAddress',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allInfoOffices': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
        'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-10T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'infoAddressByInfoAddressId': _infoAddressJson(),
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'InfoOffice',
      },
    ],
    '__typename': 'InfoOfficesConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateInfoOfficeByInfoOfficeId': {
    'infoOffice': {
      'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
      'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
      'code': 'OFC001',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      'infoAddressByInfoAddressId': _infoAddressJson(),
      '__typename': 'InfoOffice',
    },
    'clientMutationId': null,
    '__typename': 'UpdateInfoOfficePayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0021: Query\$InfoOfficeRead <-> Map 往復変換が元と一致する', () {
    final model = Query$InfoOfficeRead.fromJson(_buildRawReadJson());
    final node = model.allInfoOffices!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$InfoOfficeRead$allInfoOffices$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('INFO_OFFICE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0021: Mutation\$InfoOfficeEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$InfoOfficeEdit.fromJson(_buildRawEditJson());
    final infoOffice = model.updateInfoOfficeByInfoOfficeId!.infoOffice!;

    final officeMap = infoOffice.toJson();
    final flatMap = officeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$InfoOfficeEdit$updateInfoOfficeByInfoOfficeId$infoOffice.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(officeMap));
    expect(restoredModel, equals(infoOffice));

    // ignore: avoid_print
    print('INFO_OFFICE_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
