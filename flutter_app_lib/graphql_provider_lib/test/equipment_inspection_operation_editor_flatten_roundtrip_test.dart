// 要件0018・0025: equipment_inspection_operation_editor画面のGraphQLから build_runner で
// 生成されたモデルの nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/equipment_inspection_operation_editor/equipment_inspection_operation_editor_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/equipment_inspection_operation_editor/equipment_inspection_operation_editor_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '月次点検運用',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'ゲツジテンケンウンヨウ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': '月次点検',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrInspectionOperations': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrInspectionOperationId': 'io111111-1111-1111-1111-111111111111',
        'code': 'IO001',
        'mstrEquipmentId': 'eq111111-1111-1111-1111-111111111111',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-15T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'mstrEquipmentByMstrEquipmentId': {
          'mstrEquipmentId': 'eq111111-1111-1111-1111-111111111111',
          'mstrItemByMstrItemId': {
            'sharedAppellationBySharedAppellationsId': {
              'sharedDictionaryBySharedDictionaryNameId': {'ja': 'フォークリフト', 'en': null, '__typename': 'SharedDictionary'},
              '__typename': 'SharedAppellation',
            },
            '__typename': 'MstrItem',
          },
          '__typename': 'MstrEquipment',
        },
        'mstrInspectionOperationTasksByMstrInspectionOperationId': {
          'nodes': [
            {
              'mstrInspectionOperationTaskId': 'it111111-1111-1111-1111-111111111111',
              'mstrInspectionId': 'in111111-1111-1111-1111-111111111111',
              'sequence': 1,
              'commencementDate': '2026-01-01T00:00:00',
              'timeInterval': {
                'seconds': 0.0,
                'minutes': 0,
                'hours': 0,
                'days': 30,
                'months': 0,
                'years': 0,
                '__typename': 'Interval',
              },
              '__typename': 'MstrInspectionOperationTask',
            },
          ],
          '__typename': 'MstrInspectionOperationTasksConnection',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrInspectionOperation',
      },
    ],
    '__typename': 'MstrInspectionOperationsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrInspectionOperationByMstrInspectionOperationId': {
    'mstrInspectionOperation': {
      'mstrInspectionOperationId': 'io111111-1111-1111-1111-111111111111',
      'code': 'IO001',
      'mstrEquipmentId': 'eq111111-1111-1111-1111-111111111111',
      'remarks': '備考テキスト(編集後)',
      'mstrInspectionOperationTasksByMstrInspectionOperationId': {
        'nodes': [
          {
            'mstrInspectionOperationTaskId': 'it111111-1111-1111-1111-111111111111',
            'mstrInspectionId': 'in111111-1111-1111-1111-111111111111',
            'sequence': 1,
            '__typename': 'MstrInspectionOperationTask',
          },
        ],
        '__typename': 'MstrInspectionOperationTasksConnection',
      },
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      '__typename': 'MstrInspectionOperation',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrInspectionOperationPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$EquipmentInspectionOperationEditorRead <-> Map 往復変換が元と一致する', () {
    final model = Query$EquipmentInspectionOperationEditorRead.fromJson(_buildRawReadJson());
    final node = model.allMstrInspectionOperations!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$EquipmentInspectionOperationEditorRead$allMstrInspectionOperations$nodes.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('EQUIPMENT_INSPECTION_OPERATION_EDITOR_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$EquipmentInspectionOperationEditorEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$EquipmentInspectionOperationEditorEdit.fromJson(_buildRawEditJson());
    final mstrInspectionOperation =
        model
            .updateMstrInspectionOperationByMstrInspectionOperationId!
            .mstrInspectionOperation!;

    final operationMap = mstrInspectionOperation.toJson();
    final flatMap = operationMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(operationMap));
    expect(restoredModel, equals(mstrInspectionOperation));

    // ignore: avoid_print
    print('EQUIPMENT_INSPECTION_OPERATION_EDITOR_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
