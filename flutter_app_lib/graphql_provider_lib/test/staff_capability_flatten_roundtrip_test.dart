// 要件0047: staff_capability(source/view.yaml #StaffCapabilityEdit)のEdit/RFEモデルの
// nested_map_flattener.dart往復変換を検証する。
// view.yamlでStaffCapabilityPageEdit/CapableStaffPageEditが不要としてコメントアウトされたため、
// 両画面のEdit/RFE(内容は同一)を1組(staff_capability_edit/staff_capability_rfe)に統合した。
// 本テストは旧staff_capability_page_flatten_roundtrip_test.dartのEdit/RFEテスト(要件0045)を
// 引き継ぎ、Editの結果モデルに追加したremarksを含める。

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/staff_capability/staff_capability_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/staff_capability/staff_capability_rfe.graphql.dart';

Map<String, dynamic> _dictionaryValueConnection(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'dictionaryValue': value, '__typename': 'SharedDictionaryValue'},
        ],
  '__typename': 'SharedDictionaryValuesConnection',
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

void main() {
  test(
    '要件0047(要件0045から移設): Mutation\$StaffCapabilityEdit <-> Map 往復変換が元と一致する',
    () {
      final raw = {
        'updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId': {
          'mstrStaffCapability': {
            'mstrStaffCapabilityId': 'sc1111111-1111-1111-1111-11111111111',
            'infoStaffId': 's1111111-1111-1111-1111-111111111111',
            'mstrCapabilityId': 'k1111111-1111-1111-1111-111111111111',
            'value': '80',
            'stop': false,
            'remarks': '備考テキスト',
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

      final model = Mutation$StaffCapabilityEdit.fromJson(raw);
      final entity = model
          .updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId!
          .mstrStaffCapability!;

      final entityMap = entity.toJson();
      final flatMap = entityMap.flatten();
      final restoredMap = flatMap.unflatten();
      final restoredModel =
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability.fromJson(
            restoredMap,
          );

      expect(restoredMap, equals(entityMap));
      expect(restoredModel, equals(entity));
    },
  );

  test('要件0047(要件0045から移設): Query\$StaffCapabilityRfe <-> Map 往復変換が元と一致する', () {
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

    final model = Query$StaffCapabilityRfe.fromJson(raw);
    final entity =
        model.mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
