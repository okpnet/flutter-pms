// 要件0018・0021: info_staff画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。結果は docs/0021_view_graphql_log.md に記録する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/info_staff/info_staff_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/info_staff/info_staff_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '山田太郎',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'ヤマダタロウ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': '山田',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allInfoStaffs': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'infoStaffId': 's1111111-1111-1111-1111-111111111111',
        'code': 'STF001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-10T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
        'privatePhone': '090-1111-2222',
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's2222222-2222-2222-2222-222222222222',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'InfoStaff',
      },
    ],
    '__typename': 'InfoStaffsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateInfoStaffByInfoStaffId': {
    'infoStaff': {
      'infoStaffId': 's1111111-1111-1111-1111-111111111111',
      'code': 'STF001',
      'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
      'privatePhone': '090-1111-2222',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      '__typename': 'InfoStaff',
    },
    'clientMutationId': null,
    '__typename': 'UpdateInfoStaffPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0021: Query\$InfoStaffRead <-> Map 往復変換が元と一致する', () {
    final model = Query$InfoStaffRead.fromJson(_buildRawReadJson());
    final node = model.allInfoStaffs!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$InfoStaffRead$allInfoStaffs$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('INFO_STAFF_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0021: Mutation\$InfoStaffEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$InfoStaffEdit.fromJson(_buildRawEditJson());
    final infoStaff = model.updateInfoStaffByInfoStaffId!.infoStaff!;

    final staffMap = infoStaff.toJson();
    final flatMap = staffMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(staffMap));
    expect(restoredModel, equals(infoStaff));

    // ignore: avoid_print
    print('INFO_STAFF_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
