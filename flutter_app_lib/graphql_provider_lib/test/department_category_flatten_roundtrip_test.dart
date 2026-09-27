// 要件0035: department_category画面(source/view.yaml #DepartmentCategoryPage/
// #DepartmentCategoryEdit)のGraphQLからbuild_runnerで生成されたモデルの
// nested_map_flattener.dart往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/department_category_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/department_category/department_category_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/department_category/department_category_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/department_category/department_category_rfe.graphql.dart';

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

Map<String, dynamic> _labelsJsonJaEn(String appellationsId, String nameJa) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': _dictionaryValueConnection(nameJa),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': _dictionaryValueConnection(null),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': _dictionaryValueConnection(null),
    'en': _dictionaryValueConnection(null),
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
  test('要件0035: Query\$DepartmentCategoryRead <-> Map 往復変換が元と一致する', () {
    final raw = {
      'allInfoDepartmentKindValues': {
        'totalCount': 1,
        'pageInfo': {
          'hasNextPage': false,
          'endCursor': null,
          '__typename': 'PageInfo',
        },
        'nodes': [
          {
            'infoDepartmentKindValueId':
                'k1111111-1111-1111-1111-111111111111',
            'symbol': 'DK001',
            'remarks': '備考テキスト',
            'updateAt': '2026-09-26T00:00:00',
            'remove': false,
            'labels': _labelsJsonValue(
              'a1111111-1111-1111-1111-111111111111',
              '本社',
            ),
            'update_user': _updateUserJson(),
            '__typename': 'InfoDepartmentKindValue',
          },
        ],
        '__typename': 'InfoDepartmentKindValuesConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$DepartmentCategoryRead.fromJson(raw);
    final node = model.allInfoDepartmentKindValues!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$DepartmentCategoryRead$allInfoDepartmentKindValues$nodes.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final labelsNameJa = nodeMap.flattenForColumns(
      [
        DepartmentCategoryKeyName
            .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
      ],
      collapseSingleRecordPaths: {
        'labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(
      labelsNameJa[DepartmentCategoryKeyName
          .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '本社',
    );

    // ignore: avoid_print
    print('DEPARTMENT_CATEGORY_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0035: Mutation\$DepartmentCategoryEdit <-> Map 往復変換が元と一致する', () {
    final raw = {
      'updateInfoDepartmentKindValueByInfoDepartmentKindValueId': {
        'infoDepartmentKindValue': {
          'infoDepartmentKindValueId':
              'k1111111-1111-1111-1111-111111111111',
          'remarks': '備考テキスト(編集後)',
          'labels': _labelsJsonJaEn(
            'a1111111-1111-1111-1111-111111111111',
            '本社',
          ),
          '__typename': 'InfoDepartmentKindValue',
        },
        'clientMutationId': null,
        '__typename': 'UpdateInfoDepartmentKindValuePayload',
      },
      '__typename': 'Mutation',
    };

    final model = Mutation$DepartmentCategoryEdit.fromJson(raw);
    final entity = model
        .updateInfoDepartmentKindValueByInfoDepartmentKindValueId!
        .infoDepartmentKindValue!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$DepartmentCategoryEdit$updateInfoDepartmentKindValueByInfoDepartmentKindValueId$infoDepartmentKindValue.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });

  test('要件0035: Query\$DepartmentCategoryRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'infoDepartmentKindValueByInfoDepartmentKindValueId': {
        'infoDepartmentKindValueId': 'k1111111-1111-1111-1111-111111111111',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-26T00:00:00',
        'updateUserId': 'u1111111-1111-1111-1111-111111111111',
        'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
        'remove': false,
        'labels': _labelsJsonJaEn(
          'a1111111-1111-1111-1111-111111111111',
          '本社',
        ),
        '__typename': 'InfoDepartmentKindValue',
      },
      '__typename': 'Query',
    };

    final model = Query$DepartmentCategoryRfe.fromJson(raw);
    final entity = model.infoDepartmentKindValueByInfoDepartmentKindValueId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
