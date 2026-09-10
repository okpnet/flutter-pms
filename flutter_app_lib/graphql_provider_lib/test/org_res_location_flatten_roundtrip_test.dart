// 要件0018・0021: org_res_location画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。結果は docs/0021_view_graphql_log.md に記録する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/org_res_location/org_res_location_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/org_res_location/org_res_location_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '第一倉庫',
    'en': 'Warehouse 1',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'ダイイチソウコ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': '一倉庫',
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
  'allMstrLocations': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrLocationId': 'lo111111-1111-1111-1111-111111111111',
        'code': 'LOC001',
        'controlCode': 'CTL001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-10T00:00:00',
        'remove': false,
        'infoDepartmentByInfoDepartmentId': {
          'infoDepartmentId': 'dp111111-1111-1111-1111-111111111111',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {
              'ja': '総務部',
              'en': 'General Affairs Dept.',
              '__typename': 'SharedDictionary',
            },
            '__typename': 'SharedAppellation',
          },
          '__typename': 'InfoDepartment',
        },
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'infoAddressByInfoAddressId': _infoAddressJson(),
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrLocation',
      },
    ],
    '__typename': 'MstrLocationsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrLocationByMstrLocationId': {
    'mstrLocation': {
      'mstrLocationId': 'lo111111-1111-1111-1111-111111111111',
      'code': 'LOC001',
      'controlCode': 'CTL001',
      'infoDepartmentId': 'dp111111-1111-1111-1111-111111111111',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      'infoAddressByInfoAddressId': _infoAddressJson(),
      '__typename': 'MstrLocation',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrLocationPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0021: Query\$OrgResLocationRead <-> Map 往復変換が元と一致する', () {
    final model = Query$OrgResLocationRead.fromJson(_buildRawReadJson());
    final node = model.allMstrLocations!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$OrgResLocationRead$allMstrLocations$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('ORG_RES_LOCATION_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0021: Mutation\$OrgResLocationEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$OrgResLocationEdit.fromJson(_buildRawEditJson());
    final mstrLocation = model.updateMstrLocationByMstrLocationId!.mstrLocation!;

    final locationMap = mstrLocation.toJson();
    final flatMap = locationMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(locationMap));
    expect(restoredModel, equals(mstrLocation));

    // ignore: avoid_print
    print('ORG_RES_LOCATION_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
