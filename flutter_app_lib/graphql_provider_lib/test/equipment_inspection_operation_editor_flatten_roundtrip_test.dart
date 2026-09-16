// 要件0018・0025・0028: equipment_inspection_operation_editor画面のGraphQLから build_runner で
// 生成されたモデルの nested_map_flattener.dart 往復変換を検証する。
// 要件0027・0028により"### read"はviews.mdから削除された(編集専用画面、RFEのデフォルト規則に
// 委ねる設計)ため、readの往復変換テストは対象外とし、editのみを検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/equipment_inspection_operation_editor/equipment_inspection_operation_editor_edit.graphql.dart';

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
