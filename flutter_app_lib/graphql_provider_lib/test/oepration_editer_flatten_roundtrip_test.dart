// 要件0018・0025: oepration_editer画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/oepration_editer/oepration_editer_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/oepration_editer/oepration_editer_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
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
};

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
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'mstrOperationTasksByMstrOperationId': {
          'nodes': [
            {
              'mstrOperationTaskId': 'ot111111-1111-1111-1111-111111111111',
              'mstrTaskId': 'tk111111-1111-1111-1111-111111111111',
              'sequence': 1,
              'sharedAppellationBySharedAppellationsId': {
                'sharedDictionaryBySharedDictionaryNameId': {'ja': '組立', 'en': null, '__typename': 'SharedDictionary'},
                '__typename': 'SharedAppellation',
              },
              'mstrItemOperationTasksByMstrOperationTaskId': {
                'nodes': [
                  {
                    'mstrItemOperationTaskId': 'io111111-1111-1111-1111-111111111111',
                    'mstrItemId': 'im111111-1111-1111-1111-111111111111',
                    'sequence': 1,
                    'defaultInterval': {
                      'seconds': 0.0,
                      'minutes': 10,
                      'hours': 0,
                      'days': 0,
                      'months': 0,
                      'years': 0,
                      '__typename': 'Interval',
                    },
                    '__typename': 'MstrItemOperationTask',
                  },
                ],
                '__typename': 'MstrItemOperationTasksConnection',
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

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrOperationByMstrOperationId': {
    'mstrOperation': {
      'mstrOperationId': 'op111111-1111-1111-1111-111111111111',
      'controlCode': 'OP001',
      'detail': '詳細テキスト(編集後)',
      'remarks': '備考テキスト(編集後)',
      'mstrOperationTasksByMstrOperationId': {
        'nodes': [
          {
            'mstrOperationTaskId': 'ot111111-1111-1111-1111-111111111111',
            'mstrTaskId': 'tk111111-1111-1111-1111-111111111111',
            'sequence': 1,
            'mstrItemOperationTasksByMstrOperationTaskId': {
              'nodes': [
                {
                  'mstrItemOperationTaskId': 'io111111-1111-1111-1111-111111111111',
                  'mstrItemId': 'im111111-1111-1111-1111-111111111111',
                  'sequence': 1,
                  '__typename': 'MstrItemOperationTask',
                },
              ],
              '__typename': 'MstrItemOperationTasksConnection',
            },
            '__typename': 'MstrOperationTask',
          },
        ],
        '__typename': 'MstrOperationTasksConnection',
      },
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      '__typename': 'MstrOperation',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrOperationPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$OeprationEditerRead <-> Map 往復変換が元と一致する', () {
    final model = Query$OeprationEditerRead.fromJson(_buildRawReadJson());
    final node = model.allMstrOperations!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$OeprationEditerRead$allMstrOperations$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('OEPRATION_EDITER_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$OeprationEditerEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$OeprationEditerEdit.fromJson(_buildRawEditJson());
    final mstrOperation = model.updateMstrOperationByMstrOperationId!.mstrOperation!;

    final operationMap = mstrOperation.toJson();
    final flatMap = operationMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(operationMap));
    expect(restoredModel, equals(mstrOperation));

    // ignore: avoid_print
    print('OEPRATION_EDITER_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
