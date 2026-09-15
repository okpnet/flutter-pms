// 要件0018・0025: equipment_inspection_peration_task画面のGraphQLから build_runner で
// 生成されたモデルの nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/equipment_inspection_peration_task/equipment_inspection_peration_task_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/equipment_inspection_peration_task/equipment_inspection_peration_task_read.graphql.dart';

Map<String, dynamic> _intervalJson() => {
  'seconds': 0.0,
  'minutes': 0,
  'hours': 0,
  'days': 30,
  'months': 0,
  'years': 0,
  '__typename': 'Interval',
};

Map<String, dynamic> _appellationJson(String ja) => {
  'sharedDictionaryBySharedDictionaryNameId': {'ja': ja, 'en': null, '__typename': 'SharedDictionary'},
  'sharedDictionaryBySharedDictionaryPronunciationId': {'ja': null, 'en': null, '__typename': 'SharedDictionary'},
  'sharedDictionaryBySharedDictionaryNicknameId': {'ja': null, 'en': null, '__typename': 'SharedDictionary'},
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrInspectionOperationTasks': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrInspectionOperationTaskId': 'it111111-1111-1111-1111-111111111111',
        'mstrInspectionOperationId': 'io111111-1111-1111-1111-111111111111',
        'sequence': 1,
        'mstrInspectionId': 'in111111-1111-1111-1111-111111111111',
        'commencementDate': '2026-01-01T00:00:00',
        'timeInterval': _intervalJson(),
        'remarks': '備考テキスト',
        'updateAt': '2026-09-15T00:00:00',
        'remove': false,
        'mstrInspectionOperationByMstrInspectionOperationId': {
          'mstrInspectionOperationId': 'io111111-1111-1111-1111-111111111111',
          'code': 'IO001',
          'sharedAppellationBySharedAppellationsId': _appellationJson('月次点検運用'),
          '__typename': 'MstrInspectionOperation',
        },
        'mstrInspectionByMstrInspectionId': {
          'mstrInspectionId': 'in111111-1111-1111-1111-111111111111',
          'code': 'IN001',
          'sharedAppellationBySharedAppellationsId': _appellationJson('エンジン点検'),
          'externalInspection': 'cu111111-1111-1111-1111-111111111111',
          'mstrStakeholderByExternalInspection': {
            'mstrStakeholderId': 'cu111111-1111-1111-1111-111111111111',
            'code': 'CU001',
            'sharedAppellationBySharedAppellationsId': _appellationJson('サンプル点検業者'),
            '__typename': 'MstrStakeholder',
          },
          'mstrItemId': 'im111111-1111-1111-1111-111111111111',
          'mstrItemByMstrItemId': {
            'mstrItemId': 'im111111-1111-1111-1111-111111111111',
            'code': 'ITM002',
            'sharedAppellationBySharedAppellationsId': _appellationJson('定期点検サービス'),
            '__typename': 'MstrItem',
          },
          '__typename': 'MstrInspection',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrInspectionOperationTask',
      },
    ],
    '__typename': 'MstrInspectionOperationTasksConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId': {
    'mstrInspectionOperationTask': {
      'mstrInspectionOperationTaskId': 'it111111-1111-1111-1111-111111111111',
      'mstrInspectionOperationId': 'io111111-1111-1111-1111-111111111111',
      'mstrInspectionId': 'in111111-1111-1111-1111-111111111111',
      'sequence': 1,
      'commencementDate': '2026-01-01T00:00:00',
      'timeInterval': _intervalJson(),
      'remarks': '備考テキスト(編集後)',
      'mstrInspectionByMstrInspectionId': {
        'mstrInspectionId': 'in111111-1111-1111-1111-111111111111',
        'externalInspection': 'cu111111-1111-1111-1111-111111111111',
        'mstrItemId': 'im111111-1111-1111-1111-111111111111',
        '__typename': 'MstrInspection',
      },
      '__typename': 'MstrInspectionOperationTask',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrInspectionOperationTaskPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$EquipmentInspectionPerationTaskRead <-> Map 往復変換が元と一致する', () {
    final model = Query$EquipmentInspectionPerationTaskRead.fromJson(_buildRawReadJson());
    final node = model.allMstrInspectionOperationTasks!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('EQUIPMENT_INSPECTION_PERATION_TASK_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$EquipmentInspectionPerationTaskEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$EquipmentInspectionPerationTaskEdit.fromJson(_buildRawEditJson());
    final mstrInspectionOperationTask =
        model
            .updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId!
            .mstrInspectionOperationTask!;

    final taskMap = mstrInspectionOperationTask.toJson();
    final flatMap = taskMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(taskMap));
    expect(restoredModel, equals(mstrInspectionOperationTask));

    // ignore: avoid_print
    print('EQUIPMENT_INSPECTION_PERATION_TASK_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
