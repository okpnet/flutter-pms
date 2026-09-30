// 要件0044: staff_capability_page画面(source/view.yaml #StaffCapabilityPage)の
// GraphQLからbuild_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。
// 要件0045追記: StaffCapabilityPageEdit(StaffCapabilityEdit参照)のEdit/RFEを追加した
// ためテストも追加。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/staff_capability_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/staff_capability_page/staff_capability_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/staff_capability_page/staff_capability_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/staff_capability_page/staff_capability_page_rfe.graphql.dart';

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

Map<String, dynamic> _updateUserJsonJaEn() => {
  'historyId': 'h1111111-1111-1111-1111-111111111111',
  'infoStaffId': 's1111111-1111-1111-1111-111111111111',
  'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
  'code': 'U001',
  'sex': null,
  'phone': null,
  'symbol': null,
  'privatePhone': null,
  'name': _labelsJsonJaEn(
    'a9999999-9999-9999-9999-999999999999',
    '管理者 花子',
  ),
  '__typename': 'HistoryInfoStaff',
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

Map<String, dynamic> _capabilityJson(
  String id,
  String nameJa, {
  required String value,
}) => {
  'mstrStaffCapabilityId': 'sc$id',
  'infoStaffId': 's1111111-1111-1111-1111-111111111111',
  'value': value,
  'stop': false,
  'capability': {
    'mstrCapabilityId': 'k$id',
    'code': 'CB$id',
    'detail': '力量の詳細テキスト',
    'referenceValue': '80',
    'max': '100',
    'min': '0',
    'step': '1',
    'symbol': 'CB$id',
    'remarks': null,
    'updateAt': '2026-09-29T00:00:00',
    'remove': false,
    'labels': _labelsJsonValue('a3333333-3333-3333-3333-33333333333$id', nameJa),
    'update_user': _updateUserJson(),
    '__typename': 'MstrCapability',
  },
  '__typename': 'MstrStaffCapability',
};

void main() {
  test('要件0044: Query\$StaffCapabilityPageRead <-> Map 往復変換が元と一致する', () {
    final raw = {
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
            'code': 'ST001',
            'sex': 'M',
            'phone': null,
            'privatePhone': null,
            'symbol': 'ST001',
            'remarks': '備考テキスト',
            'updateAt': '2026-09-29T00:00:00',
            'remove': false,
            'labels': _labelsJsonValue(
              'a2222222-2222-2222-2222-222222222222',
              '担当者 太郎',
            ),
            'capabilitys': {
              'totalCount': 2,
              'pageInfo': {
                'hasNextPage': false,
                'endCursor': null,
                '__typename': 'PageInfo',
              },
              'nodes': [
                _capabilityJson('1', '溶接技能', value: '80'),
                _capabilityJson('2', 'クレーン運転', value: '60'),
              ],
              '__typename': 'MstrStaffCapabilitiesConnection',
            },
            'update_user': _updateUserJson(),
            '__typename': 'InfoStaff',
          },
        ],
        '__typename': 'InfoStaffsConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$StaffCapabilityPageRead.fromJson(raw);
    final node = model.allInfoStaffs!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final capabilitysConnection =
        nodeMap[StaffCapabilityPageKeyName.capabilitys.name]
            as Map<String, dynamic>;
    final capabilityLabels = capabilitysConnection.extractFromEachRecord(
      'capability||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
      collapseSingleRecordPaths: {
        'capability||labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(capabilityLabels, ['溶接技能', 'クレーン運転']);

    // ignore: avoid_print
    print(
      'STAFF_CAPABILITY_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}',
    );
  });

  test(
    '要件0045: Mutation\$StaffCapabilityPageEdit <-> Map 往復変換が元と一致する',
    () {
      final raw = {
        'updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId': {
          'mstrStaffCapability': {
            'mstrStaffCapabilityId': 'sc1111111-1111-1111-1111-11111111111',
            'infoStaffId': 's1111111-1111-1111-1111-111111111111',
            'mstrCapabilityId': 'k1111111-1111-1111-1111-111111111111',
            'value': '80',
            'stop': false,
            'staff': {
              'infoStaffId': 's1111111-1111-1111-1111-111111111111',
              'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
              'code': 'ST001',
              'sex': 'M',
              'phone': null,
              'privatePhone': null,
              'symbol': 'ST001',
              'remarks': '備考テキスト',
              'updateAt': '2026-09-29T00:00:00',
              'remove': false,
              'labels': _labelsJsonJaEn(
                'a2222222-2222-2222-2222-222222222222',
                '担当者 太郎',
              ),
              'update_user': _updateUserJsonJaEn(),
              '__typename': 'InfoStaff',
            },
            'capability': {
              'mstrCapabilityId': 'k1111111-1111-1111-1111-111111111111',
              'code': 'CB1',
              'detail': '力量の詳細テキスト',
              'referenceValue': '80',
              'max': '100',
              'min': '0',
              'step': '1',
              'symbol': 'CB1',
              'remarks': null,
              'updateAt': '2026-09-29T00:00:00',
              'remove': false,
              'labels': _labelsJsonJaEn(
                'a3333333-3333-3333-3333-333333333331',
                '溶接技能',
              ),
              'update_user': _updateUserJsonJaEn(),
              '__typename': 'MstrCapability',
            },
            '__typename': 'MstrStaffCapability',
          },
          'clientMutationId': null,
          '__typename': 'UpdateMstrStaffCapabilityPayload',
        },
        '__typename': 'Mutation',
      };

      final model = Mutation$StaffCapabilityPageEdit.fromJson(raw);
      final entity = model
          .updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId!
          .mstrStaffCapability!;

      final entityMap = entity.toJson();
      final flatMap = entityMap.flatten();
      final restoredMap = flatMap.unflatten();
      final restoredModel =
          Mutation$StaffCapabilityPageEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability.fromJson(
            restoredMap,
          );

      expect(restoredMap, equals(entityMap));
      expect(restoredModel, equals(entity));
    },
  );

  test('要件0045: Query\$StaffCapabilityPageRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId': {
        'mstrStaffCapabilityId': 'sc1111111-1111-1111-1111-11111111111',
        'infoStaffId': 's1111111-1111-1111-1111-111111111111',
        'mstrCapabilityId': 'k1111111-1111-1111-1111-111111111111',
        'value': '80',
        'stop': false,
        'remarks': '備考テキスト',
        'updateAt': '2026-09-29T00:00:00',
        'updateUserId': 'u1111111-1111-1111-1111-111111111111',
        'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
        'remove': false,
        'staff': {
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
          'code': 'ST001',
          'sex': 'M',
          'phone': null,
          'privatePhone': null,
          'symbol': 'ST001',
          'remarks': '備考テキスト',
          'updateAt': '2026-09-29T00:00:00',
          'remove': false,
          'labels': _labelsJsonJaEn(
            'a2222222-2222-2222-2222-222222222222',
            '担当者 太郎',
          ),
          'update_user': _updateUserJsonJaEn(),
          '__typename': 'InfoStaff',
        },
        'capability': {
          'mstrCapabilityId': 'k1111111-1111-1111-1111-111111111111',
          'code': 'CB1',
          'detail': '力量の詳細テキスト',
          'referenceValue': '80',
          'max': '100',
          'min': '0',
          'step': '1',
          'symbol': 'CB1',
          'remarks': null,
          'updateAt': '2026-09-29T00:00:00',
          'remove': false,
          'labels': _labelsJsonJaEn(
            'a3333333-3333-3333-3333-333333333331',
            '溶接技能',
          ),
          'update_user': _updateUserJsonJaEn(),
          '__typename': 'MstrCapability',
        },
        '__typename': 'MstrStaffCapability',
      },
      '__typename': 'Query',
    };

    final model = Query$StaffCapabilityPageRfe.fromJson(raw);
    final entity =
        model.mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Query$StaffCapabilityPageRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
