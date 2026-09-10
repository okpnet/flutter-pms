// 要件0018・0021: org_res_equipment_kind画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。結果は docs/0021_view_graphql_log.md に記録する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/org_res_equipment_kind/org_res_equipment_kind_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/org_res_equipment_kind/org_res_equipment_kind_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '工具',
    'en': 'Tool',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'コウグ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': '工具',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrEquipmentKinds': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrEquipmentKindId': 'ek111111-1111-1111-1111-111111111111',
        'startAt': '2026-01-01T00:00:00',
        'stopAt': null,
        'remarks': '備考テキスト',
        'updateAt': '2026-09-10T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrEquipmentKind',
      },
    ],
    '__typename': 'MstrEquipmentKindsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrEquipmentKindByMstrEquipmentKindId': {
    'mstrEquipmentKind': {
      'mstrEquipmentKindId': 'ek111111-1111-1111-1111-111111111111',
      'startAt': '2026-01-01T00:00:00',
      'stopAt': '2027-01-01T00:00:00',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      '__typename': 'MstrEquipmentKind',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrEquipmentKindPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0021: Query\$OrgResEquipmentKindRead <-> Map 往復変換が元と一致する', () {
    final model = Query$OrgResEquipmentKindRead.fromJson(_buildRawReadJson());
    final node = model.allMstrEquipmentKinds!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$OrgResEquipmentKindRead$allMstrEquipmentKinds$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('ORG_RES_EQUIPMENT_KIND_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0021: Mutation\$OrgResEquipmentKindEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$OrgResEquipmentKindEdit.fromJson(_buildRawEditJson());
    final mstrEquipmentKind =
        model.updateMstrEquipmentKindByMstrEquipmentKindId!.mstrEquipmentKind!;

    final kindMap = mstrEquipmentKind.toJson();
    final flatMap = kindMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(kindMap));
    expect(restoredModel, equals(mstrEquipmentKind));

    // ignore: avoid_print
    print('ORG_RES_EQUIPMENT_KIND_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
