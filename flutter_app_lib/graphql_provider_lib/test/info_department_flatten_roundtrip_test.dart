// 要件0018・0021: info_department画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。結果は docs/0021_view_graphql_log.md に記録する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/info_department/info_department_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/info_department/info_department_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '総務部',
    'en': 'General Affairs Dept.',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'ソウムブ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': '総務',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _infoAddressJson() => {
  'infoAddressId': 'ad111111-1111-1111-1111-111111111111',
  'zipCode': '100-0001',
  'address1': '東京都千代田区千代田1-1',
  'address2': 'サンプルビル3F',
  'bill': 'サンプルビル',
  'phone': '03-1111-2222',
  'faxNumber': '03-1111-2223',
  '__typename': 'InfoAddress',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allInfoDepartments': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'infoDepartmentId': 'dp111111-1111-1111-1111-111111111111',
        'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
        'code': 'DEP001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-10T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'infoAddressByInfoAddressId': _infoAddressJson(),
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'InfoDepartment',
      },
    ],
    '__typename': 'InfoDepartmentsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateInfoDepartmentByInfoDepartmentId': {
    'infoDepartment': {
      'infoDepartmentId': 'dp111111-1111-1111-1111-111111111111',
      'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
      'code': 'DEP001',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      'infoAddressByInfoAddressId': _infoAddressJson(),
      '__typename': 'InfoDepartment',
    },
    'clientMutationId': null,
    '__typename': 'UpdateInfoDepartmentPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0021: Query\$InfoDepartmentRead <-> Map 往復変換が元と一致する', () {
    final model = Query$InfoDepartmentRead.fromJson(_buildRawReadJson());
    final node = model.allInfoDepartments!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$InfoDepartmentRead$allInfoDepartments$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('INFO_DEPARTMENT_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0021: Mutation\$InfoDepartmentEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$InfoDepartmentEdit.fromJson(_buildRawEditJson());
    final infoDepartment =
        model.updateInfoDepartmentByInfoDepartmentId!.infoDepartment!;

    final departmentMap = infoDepartment.toJson();
    final flatMap = departmentMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(departmentMap));
    expect(restoredModel, equals(infoDepartment));

    // ignore: avoid_print
    print('INFO_DEPARTMENT_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
