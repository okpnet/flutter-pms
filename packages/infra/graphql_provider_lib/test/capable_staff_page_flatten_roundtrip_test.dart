// 要件0044: capable_staff_page画面(source/view.yaml #CapableStaffPage)の
// GraphQLからbuild_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。
// 要件0050: Edit/RFEはCapableStaffPageEdit(StaffCapabilityEditFieldsを取り込む)として新設した(test/capable_staff_page_edit_flatten_roundtrip_test.dart)。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/capable_staff_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/capable_staff_page/capable_staff_page_read.graphql.dart';

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

Map<String, dynamic> _staffCapabilityJson(
  String id,
  String staffNameJa, {
  required String value,
}) => {
  'mstrStaffCapabilityId': 'sc$id',
  'infoStaffId': 'st$id-1111-1111-1111-111111111111',
  'mstrCapabilityId': 'k1111111-1111-1111-1111-111111111111',
  'value': value,
  'stop': false,
  'staff': {
    'infoStaffId': 'st$id-1111-1111-1111-111111111111',
    'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
    'code': 'ST$id',
    'sex': 'M',
    'phone': null,
    'privatePhone': null,
    'symbol': 'ST$id',
    'remarks': null,
    'updateAt': '2026-09-29T00:00:00',
    'remove': false,
    'labels': _labelsJsonValue(
      'a444444$id-4444-4444-4444-444444444444',
      staffNameJa,
    ),
    'update_user': _updateUserJson(),
    '__typename': 'InfoStaff',
  },
  '__typename': 'MstrStaffCapability',
};

void main() {
  test('要件0044: Query\$CapableStaffPageRead <-> Map 往復変換が元と一致する', () {
    final raw = {
      'allMstrCapabilities': {
        'totalCount': 1,
        'pageInfo': {
          'hasNextPage': false,
          'endCursor': null,
          '__typename': 'PageInfo',
        },
        'nodes': [
          {
            'mstrCapabilityId': 'k1111111-1111-1111-1111-111111111111',
            'code': 'CB001',
            'detail': '力量の詳細テキスト',
            'referenceValue': '80',
            'max': '100',
            'min': '0',
            'step': '1',
            'symbol': 'CB001',
            'remarks': '備考テキスト',
            'updateAt': '2026-09-29T00:00:00',
            'remove': false,
            'labels': _labelsJsonValue(
              'a1111111-1111-1111-1111-111111111111',
              '溶接技能',
            ),
            'staff_capability': {
              'totalCount': 2,
              'pageInfo': {
                'hasNextPage': false,
                'endCursor': null,
                '__typename': 'PageInfo',
              },
              'nodes': [
                _staffCapabilityJson('1', '担当者 太郎', value: '80'),
                _staffCapabilityJson('2', '担当者 次郎', value: '70'),
              ],
              '__typename': 'MstrStaffCapabilitiesConnection',
            },
            'update_user': _updateUserJson(),
            '__typename': 'MstrCapability',
          },
        ],
        '__typename': 'MstrCapabilitiesConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$CapableStaffPageRead.fromJson(raw);
    final node = model.allMstrCapabilities!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$CapableStaffPageRead$allMstrCapabilities$nodes.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final staffCapabilityConnection =
        nodeMap[CapableStaffPageKeyName.staff_capability.name]
            as Map<String, dynamic>;
    final staffLabels = staffCapabilityConnection.extractFromEachRecord(
      'staff||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
      collapseSingleRecordPaths: {
        'staff||labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(staffLabels, ['担当者 太郎', '担当者 次郎']);

    // ignore: avoid_print
    print(
      'CAPABLE_STAFF_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}',
    );
  });
}
