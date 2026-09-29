// 要件0044: assign_page画面(source/view.yaml #AssignPage/#AssignPageEdit)の
// GraphQLからbuild_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/assign_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/assign_page/assign_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/assign_page/assign_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/assign_page/assign_page_rfe.graphql.dart';

Map<String, dynamic> _dictionaryValueConnection(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'dictionaryValue': value, '__typename': 'SharedDictionaryValue'},
        ],
  '__typename': 'SharedDictionaryValuesConnection',
};

Map<String, dynamic> _labelsJsonValue(String appellationsId, String nameJa) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'value': _dictionaryValueConnection(nameJa),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'value': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'value': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _updateUserJson() => {
  'historyId': 'h1111111-1111-1111-1111-111111111111',
  'infoStaffId': 's1111111-1111-1111-1111-111111111111',
  'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
  'code': 'U001',
  'sex': null,
  'phone': null,
  'symbol': null,
  'privatePhone': null,
  'name': _labelsJsonValue(
    'a9999999-9999-9999-9999-999999999999',
    '管理者 花子',
  ),
  '__typename': 'HistoryInfoStaff',
};

void main() {
  test('要件0044: Query\$AssignPageRead <-> Map 往復変換が元と一致する', () {
    final raw = {
      'allInfoAssigns': {
        'totalCount': 1,
        'pageInfo': {
          'hasNextPage': false,
          'endCursor': null,
          '__typename': 'PageInfo',
        },
        'nodes': [
          {
            'infoAssignId': 'g1111111-1111-1111-1111-111111111111',
            'infoPositionId': 'p1111111-1111-1111-1111-111111111111',
            'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
            'infoDepartmentId': 'd9999999-9999-9999-9999-999999999999',
            'enable': true,
            'priority': 1,
            'symbol': 'AS001',
            'remarks': '備考テキスト',
            'updateAt': '2026-09-29T00:00:00',
            'remove': false,
            'staff': {
              'infoStaffId': 's1111111-1111-1111-1111-111111111111',
              'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
              'code': 'ST001',
              'sex': 'M',
              'phone': null,
              'privatePhone': null,
              'symbol': 'ST001',
              'remarks': null,
              'updateAt': '2026-09-29T00:00:00',
              'remove': false,
              'labels': _labelsJsonValue(
                'a2222222-2222-2222-2222-222222222222',
                '担当者 太郎',
              ),
              'update_user': _updateUserJson(),
              '__typename': 'InfoStaff',
            },
            'update_user': _updateUserJson(),
            '__typename': 'InfoAssign',
          },
        ],
        '__typename': 'InfoAssignsConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$AssignPageRead.fromJson(raw);
    final node = model.allInfoAssigns!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$AssignPageRead$allInfoAssigns$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final staffNameJa = nodeMap.flattenForColumns(
      [
        AssignPageKeyName
            .staff_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
      ],
      collapseSingleRecordPaths: {
        'staff||labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(
      staffNameJa[AssignPageKeyName
          .staff_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '担当者 太郎',
    );

    // ignore: avoid_print
    print('ASSIGN_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0044: Mutation\$AssignPageEdit <-> Map 往復変換が元と一致する', () {
    final raw = {
      'updateInfoAssignByInfoAssignId': {
        'infoAssign': {
          'infoAssignId': 'g1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'infoPositionId': 'p2222222-2222-2222-2222-222222222222',
          'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
          'infoDepartmentId': 'd9999999-9999-9999-9999-999999999999',
          'enable': false,
          'priority': 2,
          'remarks': '備考テキスト(編集後)',
          '__typename': 'InfoAssign',
        },
        'clientMutationId': null,
        '__typename': 'UpdateInfoAssignPayload',
      },
      '__typename': 'Mutation',
    };

    final model = Mutation$AssignPageEdit.fromJson(raw);
    final entity = model.updateInfoAssignByInfoAssignId!.infoAssign!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });

  test('要件0044: Query\$AssignPageRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'infoAssignByInfoAssignId': {
        'infoAssignId': 'g1111111-1111-1111-1111-111111111111',
        'infoStaffId': 's1111111-1111-1111-1111-111111111111',
        'infoPositionId': 'p1111111-1111-1111-1111-111111111111',
        'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
        'infoDepartmentId': 'd9999999-9999-9999-9999-999999999999',
        'enable': true,
        'priority': 1,
        'remarks': '備考テキスト',
        'updateAt': '2026-09-29T00:00:00',
        'updateUserId': 'u1111111-1111-1111-1111-111111111111',
        'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
        'remove': false,
        '__typename': 'InfoAssign',
      },
      '__typename': 'Query',
    };

    final model = Query$AssignPageRfe.fromJson(raw);
    final entity = model.infoAssignByInfoAssignId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel = Query$AssignPageRfe$infoAssignByInfoAssignId
        .fromJson(restoredMap);

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
