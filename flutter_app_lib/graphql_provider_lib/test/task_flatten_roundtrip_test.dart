// 要件0018・0025: task画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/task/task_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/task/task_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson({required String ja, required String? en}) => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': ja,
    'en': en,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'ヨミガナ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': ja,
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrTasks': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrTaskId': 'tk111111-1111-1111-1111-111111111111',
        'code': 'TK001',
        'mstrTaskGroupId': 'tg111111-1111-1111-1111-111111111111',
        'detail': '詳細テキスト',
        'class': 1,
        'defaultTime': {'seconds': 0.0, 'minutes': 30, 'hours': 1, 'days': 0, 'months': 0, 'years': 0, '__typename': 'Interval'},
        'remarks': '備考テキスト',
        'updateAt': '2026-09-15T00:00:00',
        'remove': false,
        'mstrTaskTreesByMstrTaskId': {
          'nodes': [
            {
              'mstrTaskTreeId': 'tt111111-1111-1111-1111-111111111111',
              'parentMstrTaskId': null,
              '__typename': 'MstrTaskTree',
            },
          ],
          '__typename': 'MstrTaskTreesConnection',
        },
        'mstrTaskTreesByParentMstrTaskId': {'totalCount': 2, '__typename': 'MstrTaskTreesConnection'},
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(ja: '組立', en: 'Assembly'),
        'mstrTaskGroupByMstrTaskGroupId': {
          'mstrTaskGroupId': 'tg111111-1111-1111-1111-111111111111',
          'code': 'TG001',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {'ja': '組立工程グループ', 'en': null, '__typename': 'SharedDictionary'},
            'sharedDictionaryBySharedDictionaryPronunciationId': {'ja': null, 'en': null, '__typename': 'SharedDictionary'},
            'sharedDictionaryBySharedDictionaryNicknameId': {'ja': null, 'en': null, '__typename': 'SharedDictionary'},
            '__typename': 'SharedAppellation',
          },
          '__typename': 'MstrTaskGroup',
        },
        'mstrTaskLocationsByMstrTaskId': {
          'nodes': [
            {
              'mstrTaskLocationId': 'tl111111-1111-1111-1111-111111111111',
              'mstrLocationByMstrLocationId': null,
              'mstrEquipmentByMstrEquipmentId': null,
              'mstrStakeholderByMstrStakeholderId': null,
              '__typename': 'MstrTaskLocation',
            },
          ],
          '__typename': 'MstrTaskLocationsConnection',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrTask',
      },
    ],
    '__typename': 'MstrTasksConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrTaskByMstrTaskId': {
    'mstrTask': {
      'mstrTaskId': 'tk111111-1111-1111-1111-111111111111',
      'code': 'TK001',
      'mstrTaskGroupId': 'tg111111-1111-1111-1111-111111111111',
      'detail': '詳細テキスト(編集後)',
      'class': 2,
      'defaultTime': {'seconds': 0.0, 'minutes': 45, 'hours': 1, 'days': 0, 'months': 0, 'years': 0, '__typename': 'Interval'},
      'remarks': '備考テキスト(編集後)',
      'mstrTaskTreesByMstrTaskId': {
        'nodes': [
          {
            'mstrTaskTreeId': 'tt111111-1111-1111-1111-111111111111',
            'parentMstrTaskId': 'tk222222-2222-2222-2222-222222222222',
            '__typename': 'MstrTaskTree',
          },
        ],
        '__typename': 'MstrTaskTreesConnection',
      },
      'mstrTaskLocationsByMstrTaskId': {
        'nodes': [
          {
            'mstrTaskLocationId': 'tl111111-1111-1111-1111-111111111111',
            'mstrLocationId': null,
            'mstrEquipmentId': null,
            'mstrStakeholderId': null,
            '__typename': 'MstrTaskLocation',
          },
        ],
        '__typename': 'MstrTaskLocationsConnection',
      },
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(ja: '組立', en: 'Assembly'),
      '__typename': 'MstrTask',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrTaskPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$TaskRead <-> Map 往復変換が元と一致する', () {
    final model = Query$TaskRead.fromJson(_buildRawReadJson());
    final node = model.allMstrTasks!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$TaskRead$allMstrTasks$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('TASK_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$TaskEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$TaskEdit.fromJson(_buildRawEditJson());
    final mstrTask = model.updateMstrTaskByMstrTaskId!.mstrTask!;

    final taskMap = mstrTask.toJson();
    final flatMap = taskMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel = Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(taskMap));
    expect(restoredModel, equals(mstrTask));

    // ignore: avoid_print
    print('TASK_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
