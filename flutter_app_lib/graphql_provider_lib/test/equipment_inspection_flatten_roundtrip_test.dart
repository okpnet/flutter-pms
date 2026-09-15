// 要件0018・0025: equipment_inspection画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/equipment_inspection/equipment_inspection_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/equipment_inspection/equipment_inspection_read.graphql.dart';

Map<String, dynamic> _intervalJson() => {
  'seconds': 0.0,
  'minutes': 0,
  'hours': 0,
  'days': 30,
  'months': 0,
  'years': 0,
  '__typename': 'Interval',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrInspections': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrInspectionId': 'in111111-1111-1111-1111-111111111111',
        'code': 'IN001',
        'inspectionKind': 'ik111111-1111-1111-1111-111111111111',
        'baseDate': '2026-01-01T00:00:00',
        'timeInterval': _intervalJson(),
        'externalInspection': 'cu111111-1111-1111-1111-111111111111',
        'inspectionFormulaId': 'if111111-1111-1111-1111-111111111111',
        'mstrItemId': 'im111111-1111-1111-1111-111111111111',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-15T00:00:00',
        'remove': false,
        'mstrStakeholderByExternalInspection': {
          'mstrStakeholderId': 'cu111111-1111-1111-1111-111111111111',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {'ja': 'サンプル点検業者', 'en': null, '__typename': 'SharedDictionary'},
            'sharedDictionaryBySharedDictionaryPronunciationId': {'ja': null, 'en': null, '__typename': 'SharedDictionary'},
            'sharedDictionaryBySharedDictionaryNicknameId': {'ja': null, 'en': null, '__typename': 'SharedDictionary'},
            '__typename': 'SharedAppellation',
          },
          '__typename': 'MstrStakeholder',
        },
        'mstrInspectionKindByInspectionKind': {
          'mstrInspectionKindId': 'ik111111-1111-1111-1111-111111111111',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {'ja': 'エンジン点検区分', 'en': null, '__typename': 'SharedDictionary'},
            'sharedDictionaryBySharedDictionaryPronunciationId': {'ja': null, 'en': null, '__typename': 'SharedDictionary'},
            'sharedDictionaryBySharedDictionaryNicknameId': {'ja': null, 'en': null, '__typename': 'SharedDictionary'},
            '__typename': 'SharedAppellation',
          },
          '__typename': 'MstrInspectionKind',
        },
        'mstrItemByMstrItemId': {
          'mstrItemId': 'im111111-1111-1111-1111-111111111111',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {'ja': '定期点検サービス', 'en': null, '__typename': 'SharedDictionary'},
            'sharedDictionaryBySharedDictionaryPronunciationId': {'ja': null, 'en': null, '__typename': 'SharedDictionary'},
            'sharedDictionaryBySharedDictionaryNicknameId': {'ja': null, 'en': null, '__typename': 'SharedDictionary'},
            '__typename': 'SharedAppellation',
          },
          '__typename': 'MstrItem',
        },
        'mstrInspectionFormulaByInspectionFormulaId': {
          'mstrInspectionFormulaId': 'if111111-1111-1111-1111-111111111111',
          'formulaClass': 1,
          // ⚠ argClassはPostgresのJSON型だが、graphql_codegenがJSONスカラーをStringへ
          //   デフォルトするため(schema.graphqlにJSON型のカスタムマッピングが無い)、
          //   生成モデルはString?として扱う。JSON文字列(シリアライズ済み)を渡す。
          'argClass': '{"threshold":10}',
          'typeClass': 2,
          'formatClass': '%.1f',
          '__typename': 'MstrInspectionFormula',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrInspection',
      },
    ],
    '__typename': 'MstrInspectionsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrInspectionByMstrInspectionId': {
    'mstrInspection': {
      'mstrInspectionId': 'in111111-1111-1111-1111-111111111111',
      'code': 'IN001',
      'inspectionKind': 'ik111111-1111-1111-1111-111111111111',
      'baseDate': '2026-01-01T00:00:00',
      'timeInterval': _intervalJson(),
      'externalInspection': 'cu111111-1111-1111-1111-111111111111',
      'inspectionFormulaId': 'if111111-1111-1111-1111-111111111111',
      'mstrItemId': 'im111111-1111-1111-1111-111111111111',
      'remarks': '備考テキスト(編集後)',
      '__typename': 'MstrInspection',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrInspectionPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$EquipmentInspectionRead <-> Map 往復変換が元と一致する', () {
    final model = Query$EquipmentInspectionRead.fromJson(_buildRawReadJson());
    final node = model.allMstrInspections!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$EquipmentInspectionRead$allMstrInspections$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('EQUIPMENT_INSPECTION_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$EquipmentInspectionEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$EquipmentInspectionEdit.fromJson(_buildRawEditJson());
    final mstrInspection = model.updateMstrInspectionByMstrInspectionId!.mstrInspection!;

    final inspectionMap = mstrInspection.toJson();
    final flatMap = inspectionMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(inspectionMap));
    expect(restoredModel, equals(mstrInspection));

    // ignore: avoid_print
    print('EQUIPMENT_INSPECTION_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
