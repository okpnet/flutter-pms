// 要件0035: staff_page画面(source/view.yaml #StaffPage/#StaffPageEdit)のGraphQLから
// build_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/staff_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/staff_page/staff_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/staff_page/staff_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/staff_page/staff_page_rfe.graphql.dart';

Map<String, dynamic> _dictionaryValueConnection(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'dictionaryValue': value, '__typename': 'SharedDictionaryValue'},
        ],
  '__typename': 'SharedDictionaryValuesConnection',
};

Map<String, dynamic> _labelsJson({
  required String appellationsId,
  required String nameJa,
}) => {
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
  'name': _labelsJson(
    appellationsId: 'a9999999-9999-9999-9999-999999999999',
    nameJa: '管理者 花子',
  ),
  '__typename': 'HistoryInfoStaff',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allInfoStaffs': {
    'totalCount': 1,
    'pageInfo': {
      'hasNextPage': false,
      'endCursor': null,
      '__typename': 'PageInfo',
    },
    'nodes': [
      {
        'infoStaffId': 's1111111-1111-1111-1111-111111111111',
        'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
        'code': 'STF001',
        'sex': '女性',
        'phone': '03-1111-2222',
        'privatePhone': '090-1234-5678',
        'symbol': 'STAFF001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-26T00:00:00',
        'remove': false,
        'labels': _labelsJson(
          appellationsId: 'a1111111-1111-1111-1111-111111111111',
          nameJa: '担当 次郎',
        ),
        'update_user': _updateUserJson(),
        '__typename': 'InfoStaff',
      },
    ],
    '__typename': 'InfoStaffsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateInfoStaffByInfoStaffId': {
    'infoStaff': {
      'infoStaffId': 's1111111-1111-1111-1111-111111111111',
      'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
      'code': 'STF001',
      'sex': '女性',
      'phone': '03-1111-2222',
      'privatePhone': '090-1234-5678',
      'remarks': '備考テキスト(編集後)',
      'labels': {
        'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
        'sharedDictionaryBySharedDictionaryNameId': {
          'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
          'ja': _dictionaryValueConnection('担当 次郎'),
          'en': _dictionaryValueConnection('Jiro Tanto'),
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
      },
      '__typename': 'InfoStaff',
    },
    'clientMutationId': null,
    '__typename': 'UpdateInfoStaffPayload',
  },
  '__typename': 'Mutation',
};

Map<String, dynamic> _buildRawRfeJson() => {
  'infoStaffByInfoStaffId': {
    'infoStaffId': 's1111111-1111-1111-1111-111111111111',
    'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
    'code': 'STF001',
    'sex': '女性',
    'phone': '03-1111-2222',
    'privatePhone': '090-1234-5678',
    'remarks': '備考テキスト',
    'updateAt': '2026-09-26T00:00:00',
    'updateUserId': 'u1111111-1111-1111-1111-111111111111',
    'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
    'remove': false,
    'labels': {
      'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
      'sharedDictionaryBySharedDictionaryNameId': {
        'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
        'ja': _dictionaryValueConnection('担当 次郎'),
        'en': _dictionaryValueConnection('Jiro Tanto'),
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
    },
    '__typename': 'InfoStaff',
  },
  '__typename': 'Query',
};

void main() {
  test('要件0035: Query\$StaffPageRead <-> Map 往復変換が元と一致する', () {
    final model = Query$StaffPageRead.fromJson(_buildRawReadJson());
    final node = model.allInfoStaffs!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$StaffPageRead$allInfoStaffs$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final labelsNameJa = nodeMap.flattenForColumns(
      [
        StaffPageKeyName
            .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
      ],
      collapseSingleRecordPaths: {
        'labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(
      labelsNameJa[StaffPageKeyName
          .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '担当 次郎',
    );

    // ignore: avoid_print
    print('STAFF_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0035: Mutation\$StaffPageEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$StaffPageEdit.fromJson(_buildRawEditJson());
    final infoStaff = model.updateInfoStaffByInfoStaffId!.infoStaff!;

    final staffMap = infoStaff.toJson();
    final flatMap = staffMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(staffMap));
    expect(restoredModel, equals(infoStaff));
  });

  test('要件0035: Query\$StaffPageRfe <-> Map 往復変換が元と一致する', () {
    final model = Query$StaffPageRfe.fromJson(_buildRawRfeJson());
    final infoStaff = model.infoStaffByInfoStaffId!;

    final staffMap = infoStaff.toJson();
    final flatMap = staffMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel = Query$StaffPageRfe$infoStaffByInfoStaffId.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(staffMap));
    expect(restoredModel, equals(infoStaff));
  });
}
