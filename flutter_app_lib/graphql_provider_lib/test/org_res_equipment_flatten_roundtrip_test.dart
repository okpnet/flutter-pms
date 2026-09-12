// 要件0018・0021: org_res_equipment画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。結果は docs/0021_view_graphql_log.md に記録する。
//
// ⚠ #9: mstrItemSizesByMstrItemId(サイズ幅/奥行き/高さ相当)はRelay Connection形状の
//   ままflattenされないため、本テストでもnodesを持つリストとして往復することのみ確認する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/org_res_equipment/org_res_equipment_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/org_res_equipment/org_res_equipment_read.graphql.dart';

Map<String, dynamic> _mstrItemSharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '電動ドリル',
    'en': 'Electric Drill',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'デンドウドリル',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': 'ドリル',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrEquipments': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrEquipmentId': 'eq111111-1111-1111-1111-111111111111',
        'code': 'EQ001',
        'controlCode': 'CTL001',
        'labelCode': 'LBL001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-10T00:00:00',
        'remove': false,
        'mstrEquipmentKindByMstrEquipmentCategoryId': {
          'mstrEquipmentKindId': 'ek111111-1111-1111-1111-111111111111',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {
              'ja': '工具',
              'en': 'Tool',
              '__typename': 'SharedDictionary',
            },
            '__typename': 'SharedAppellation',
          },
          '__typename': 'MstrEquipmentKind',
        },
        'mstrItemByMstrItemId': {
          'mstrItemId': 'it111111-1111-1111-1111-111111111111',
          'sharedAppellationBySharedAppellationsId': _mstrItemSharedAppellationJson(),
          'mstrItemActualSizesByMstrItemId': {
            'nodes': [
              {
                'mstrItemActualSizeId': 'sz111111-1111-1111-1111-111111111111',
                // ⚠ #9: sizeValueはBigFloatスカラーで、build.yamlにマッピング未設定のため
                //   Stringにフォールバックして生成される(Missing scalar BigFloat警告)。
                'sizeValue': '120.5',
                'mstrItemSizeKindByMstrItemSizeKindId': {
                  'mstrItemSizeKindId': 'sk111111-1111-1111-1111-111111111111',
                  'sharedAppellationBySharedAppellationsId': {
                    'sharedDictionaryBySharedDictionaryNameId': {
                      'ja': '幅',
                      'en': 'Width',
                      '__typename': 'SharedDictionary',
                    },
                    '__typename': 'SharedAppellation',
                  },
                  '__typename': 'MstrItemSizeKind',
                },
                '__typename': 'MstrItemActualSize',
              },
            ],
            '__typename': 'MstrItemActualSizesConnection',
          },
          '__typename': 'MstrItem',
        },
        'mstrLocationByMstrLocationId': {
          'mstrLocationId': 'lo111111-1111-1111-1111-111111111111',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {
              'ja': '第一倉庫',
              'en': 'Warehouse 1',
              '__typename': 'SharedDictionary',
            },
            '__typename': 'SharedAppellation',
          },
          '__typename': 'MstrLocation',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrEquipment',
      },
    ],
    '__typename': 'MstrEquipmentsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrEquipmentByMstrEquipmentId': {
    'mstrEquipment': {
      'mstrEquipmentId': 'eq111111-1111-1111-1111-111111111111',
      'mstrEquipmentCategoryId': 'ek111111-1111-1111-1111-111111111111',
      'code': 'EQ001',
      'controlCode': 'CTL001',
      'labelCode': 'LBL001',
      'mstrLocationId': 'lo111111-1111-1111-1111-111111111111',
      'remarks': '備考テキスト(編集後)',
      'mstrItemByMstrItemId': {
        'mstrItemId': 'it111111-1111-1111-1111-111111111111',
        'sharedAppellationBySharedAppellationsId': _mstrItemSharedAppellationJson(),
        '__typename': 'MstrItem',
      },
      '__typename': 'MstrEquipment',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrEquipmentPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0021: Query\$OrgResEquipmentRead <-> Map 往復変換が元と一致する', () {
    final model = Query$OrgResEquipmentRead.fromJson(_buildRawReadJson());
    final node = model.allMstrEquipments!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$OrgResEquipmentRead$allMstrEquipments$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('ORG_RES_EQUIPMENT_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0021: Mutation\$OrgResEquipmentEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$OrgResEquipmentEdit.fromJson(_buildRawEditJson());
    final mstrEquipment = model.updateMstrEquipmentByMstrEquipmentId!.mstrEquipment!;

    final equipmentMap = mstrEquipment.toJson();
    final flatMap = equipmentMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(equipmentMap));
    expect(restoredModel, equals(mstrEquipment));

    // ignore: avoid_print
    print('ORG_RES_EQUIPMENT_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
