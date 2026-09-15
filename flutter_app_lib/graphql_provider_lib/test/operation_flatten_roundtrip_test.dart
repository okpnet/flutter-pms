// 要件0018・0025: operation画面(読み取り専用)のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/operation/operation_read.graphql.dart';

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrOperations': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrOperationId': 'op111111-1111-1111-1111-111111111111',
        'controlCode': 'OP001',
        'detail': '詳細テキスト',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-15T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': {
          'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
          'sharedDictionaryBySharedDictionaryNameId': {
            'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
            'ja': '標準組立運用',
            'en': null,
            '__typename': 'SharedDictionary',
          },
          'sharedDictionaryBySharedDictionaryPronunciationId': {
            'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
            'ja': 'ヒョウジュンクミタテウンヨウ',
            'en': null,
            '__typename': 'SharedDictionary',
          },
          'sharedDictionaryBySharedDictionaryNicknameId': {
            'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
            'ja': '標準組立',
            'en': null,
            '__typename': 'SharedDictionary',
          },
          '__typename': 'SharedAppellation',
        },
        'mstrOperationTasksByMstrOperationId': {
          'totalCount': 2,
          'nodes': [
            {
              'mstrOperationTaskId': 'ot111111-1111-1111-1111-111111111111',
              'mstrTaskByMstrTaskId': {
                'mstrTaskId': 'tk111111-1111-1111-1111-111111111111',
                'defaultTime': {
                  'seconds': 0.0,
                  'minutes': 30,
                  'hours': 1,
                  'days': 0,
                  'months': 0,
                  'years': 0,
                  '__typename': 'Interval',
                },
                '__typename': 'MstrTask',
              },
              '__typename': 'MstrOperationTask',
            },
          ],
          '__typename': 'MstrOperationTasksConnection',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrOperation',
      },
    ],
    '__typename': 'MstrOperationsConnection',
  },
  '__typename': 'Query',
};

void main() {
  test('要件0025: Query\$OperationRead <-> Map 往復変換が元と一致する', () {
    final model = Query$OperationRead.fromJson(_buildRawReadJson());
    final node = model.allMstrOperations!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$OperationRead$allMstrOperations$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('OPERATION_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
