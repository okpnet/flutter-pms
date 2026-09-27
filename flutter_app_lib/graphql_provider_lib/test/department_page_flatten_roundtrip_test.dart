// 要件0035: department_page画面(source/view.yaml #DepartmentPage、read専用)のGraphQLから
// build_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。
//
// 要件0026(2026/09/27、追記13)によりinfo_department_kind↔info_department_kind_valueの
// FKが逆転し(1つのinfo_department_kindに複数のinfo_department_kind_value)、
// `kinds[].value`もtoMany(Connection)になった。
//
// `kinds`(1対多)の各レコードからlabelsの表示名だけを取り出しJSON配列にする例も、
// ConnectionRecordsX.extractFromEachRecord(要件0035並行作業で追加)を使って確認する
// (`value`自体もConnectionになったため、collapseSingleRecordPathsで2段階
// (`value`自身、および`value`配下の辞書値)collapseする)。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/department_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/department_page/department_page_read.graphql.dart';

Map<String, dynamic> _dictionaryValueConnection(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'dictionaryValue': value, '__typename': 'SharedDictionaryValue'},
        ],
  '__typename': 'SharedDictionaryValuesConnection',
};

Map<String, dynamic> _appellationValue(String appellationsId, String nameJa) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd${appellationsId}n',
    'value': _dictionaryValueConnection(nameJa),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd${appellationsId}p',
    'value': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd${appellationsId}k',
    'value': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _addressJson() => {
  'infoAddressId': 'ad111111-1111-1111-1111-111111111111',
  'iso31663': 'JPN',
  'zipCode': '100-0001',
  'address1': _appellationValue('a2222222-2222-2222-2222-222222222222', '東京都千代田区1-1'),
  'address2': _appellationValue('a3333333-3333-3333-3333-333333333333', '3F'),
  'billName': _appellationValue('a4444444-4444-4444-4444-444444444444', 'テストビル'),
  'phone': '03-1111-2222',
  'faxNumber': '03-1111-2223',
  'remarks': null,
  'updateAt': '2026-09-26T00:00:00',
  'remove': false,
  '__typename': 'InfoAddress',
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
  'name': _appellationValue('a9999999-9999-9999-9999-999999999999', '管理者 花子'),
  '__typename': 'HistoryInfoStaff',
};

Map<String, dynamic> _officeJson() => {
  'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
  'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
  'code': 'OFC001',
  'symbol': 'OFFICE001',
  'remarks': null,
  'updateAt': '2026-09-26T00:00:00',
  'remove': false,
  'labels': _appellationValue('a5555555-5555-5555-5555-555555555555', '本社'),
  'address': _addressJson(),
  'update_user': _updateUserJson(),
  '__typename': 'InfoOffice',
};

Map<String, dynamic> _kindNode(String kindId, String valueId, String labelJa) => {
  'infoDepartmentKindId': kindId,
  'infoDepartmentId': 'dep11111-1111-1111-1111-111111111111',
  'symbol': null,
  'remarks': null,
  'updateAt': '2026-09-26T00:00:00',
  'remove': false,
  // 要件0026追記13: info_department_kind_valueがinfo_department_kind_idを持つ
  // ようになり、1つのkindに複数のvalueが紐づくtoMany(Connection)になった。
  'value': {
    'totalCount': 1,
    'pageInfo': {
      'hasNextPage': false,
      'endCursor': null,
      '__typename': 'PageInfo',
    },
    'nodes': [
      {
        'infoDepartmentKindValueId': valueId,
        'labels': _appellationValue('a6666666-6666-6666-6666-666666666666', labelJa),
        '__typename': 'InfoDepartmentKindValue',
      },
    ],
    '__typename': 'InfoDepartmentKindValuesConnection',
  },
  'update_user': _updateUserJson(),
  '__typename': 'InfoDepartmentKind',
};

void main() {
  test('要件0035: Query\$DepartmentPageRead <-> Map 往復変換が元と一致する', () {
    final raw = {
      'allInfoDepartments': {
        'totalCount': 1,
        'pageInfo': {
          'hasNextPage': false,
          'endCursor': null,
          '__typename': 'PageInfo',
        },
        'nodes': [
          {
            'infoDepartmentId': 'dep11111-1111-1111-1111-111111111111',
            'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
            'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
            'code': 'DEP001',
            'symbol': 'DEPT001',
            'remarks': '備考テキスト',
            'updateAt': '2026-09-26T00:00:00',
            'remove': false,
            'parent': {
              'nodes': [
                {
                  'infoDepartmentTreeId': 't1111111-1111-1111-1111-111111111111',
                  'parentInfoDepartmentId': null,
                  '__typename': 'InfoDepartmentTree',
                },
              ],
              '__typename': 'InfoDepartmentTreesConnection',
            },
            'labels': _appellationValue(
              'a1111111-1111-1111-1111-111111111111',
              '営業部',
            ),
            'address': _addressJson(),
            'office': _officeJson(),
            'kinds': {
              'totalCount': 2,
              'pageInfo': {
                'hasNextPage': false,
                'endCursor': null,
                '__typename': 'PageInfo',
              },
              'nodes': [
                _kindNode(
                  'k1111111-1111-1111-1111-111111111111',
                  'v1111111-1111-1111-1111-111111111111',
                  '本部',
                ),
                _kindNode(
                  'k2222222-2222-2222-2222-222222222222',
                  'v2222222-2222-2222-2222-222222222222',
                  '支店',
                ),
              ],
              '__typename': 'InfoDepartmentKindsConnection',
            },
            'update_user': _updateUserJson(),
            '__typename': 'InfoDepartment',
          },
        ],
        '__typename': 'InfoDepartmentsConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$DepartmentPageRead.fromJson(raw);
    final node = model.allInfoDepartments!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$DepartmentPageRead$allInfoDepartments$nodes
        .fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // 組織名・住所・事業所名の表示テキストが解決できること。
    final columns = nodeMap.flattenForColumns(
      [
        DepartmentPageKeyName
            .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
        DepartmentPageKeyName
            .address_address1_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
        DepartmentPageKeyName
            .office_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
      ],
      collapseSingleRecordPaths: {
        'labels||sharedDictionaryBySharedDictionaryNameId||value',
        'address||address1||sharedDictionaryBySharedDictionaryNameId||value',
        'office||labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(
      columns[DepartmentPageKeyName
          .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '営業部',
    );
    expect(
      columns[DepartmentPageKeyName
          .address_address1_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '東京都千代田区1-1',
    );
    expect(
      columns[DepartmentPageKeyName
          .office_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '本社',
    );

    // kinds(1対多)の各レコードから、value.labelsの表示名だけをJSON配列文字列にする。
    final kindsConnection = nodeMap[DepartmentPageKeyName.kinds.name]
        as Map<String, dynamic>;
    final kindLabels = kindsConnection.extractFromEachRecord(
      'value||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
      collapseSingleRecordPaths: {
        'value',
        'value||labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(kindLabels, ['本部', '支店']);
    expect(jsonEncode(kindLabels), '["本部","支店"]');

    // ignore: avoid_print
    print('DEPARTMENT_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
