// 要件0018・0025: task_group画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/task_group/task_group_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/task_group/task_group_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '組立工程グループ',
    'en': 'Assembly Task Group',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'クミタテコウテイグループ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': '組立',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrTaskGroups': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrTaskGroupId': 'tg111111-1111-1111-1111-111111111111',
        'code': 'TG001',
        'details': '詳細テキスト',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-15T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrTaskGroup',
      },
    ],
    '__typename': 'MstrTaskGroupsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrTaskGroupByMstrTaskGroupId': {
    'mstrTaskGroup': {
      'mstrTaskGroupId': 'tg111111-1111-1111-1111-111111111111',
      'code': 'TG001',
      'details': '詳細テキスト(編集後)',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      '__typename': 'MstrTaskGroup',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrTaskGroupPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$TaskGroupRead <-> Map 往復変換が元と一致する', () {
    final model = Query$TaskGroupRead.fromJson(_buildRawReadJson());
    final node = model.allMstrTaskGroups!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$TaskGroupRead$allMstrTaskGroups$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('TASK_GROUP_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$TaskGroupEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$TaskGroupEdit.fromJson(_buildRawEditJson());
    final mstrTaskGroup = model.updateMstrTaskGroupByMstrTaskGroupId!.mstrTaskGroup!;

    final groupMap = mstrTaskGroup.toJson();
    final flatMap = groupMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(groupMap));
    expect(restoredModel, equals(mstrTaskGroup));

    // ignore: avoid_print
    print('TASK_GROUP_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
