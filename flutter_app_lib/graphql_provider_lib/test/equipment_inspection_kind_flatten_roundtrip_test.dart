// 要件0018・0025: equipment_inspection_kind画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/equipment_inspection_kind/equipment_inspection_kind_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/equipment_inspection_kind/equipment_inspection_kind_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': 'エンジン点検区分',
    'en': 'Engine Inspection Kind',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'エンジンテンケンクブン',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': 'エンジン点検',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrInspectionKinds': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrInspectionKindId': 'ik111111-1111-1111-1111-111111111111',
        'code': 'IK001',
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
        '__typename': 'MstrInspectionKind',
      },
    ],
    '__typename': 'MstrInspectionKindsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrInspectionKindByMstrInspectionKindId': {
    'mstrInspectionKind': {
      'mstrInspectionKindId': 'ik111111-1111-1111-1111-111111111111',
      'code': 'IK001',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      '__typename': 'MstrInspectionKind',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrInspectionKindPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$EquipmentInspectionKindRead <-> Map 往復変換が元と一致する', () {
    final model = Query$EquipmentInspectionKindRead.fromJson(_buildRawReadJson());
    final node = model.allMstrInspectionKinds!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$EquipmentInspectionKindRead$allMstrInspectionKinds$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('EQUIPMENT_INSPECTION_KIND_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$EquipmentInspectionKindEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$EquipmentInspectionKindEdit.fromJson(_buildRawEditJson());
    final mstrInspectionKind =
        model.updateMstrInspectionKindByMstrInspectionKindId!.mstrInspectionKind!;

    final kindMap = mstrInspectionKind.toJson();
    final flatMap = kindMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(kindMap));
    expect(restoredModel, equals(mstrInspectionKind));

    // ignore: avoid_print
    print('EQUIPMENT_INSPECTION_KIND_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
