// 要件0045: staff_held_license_page画面(source/view.yaml #StaffHeldLicensePage/
// #StaffHeldLicensePageEdit)のGraphQLからbuild_runnerで生成されたモデルの
// nested_map_flattener.dart往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/staff_held_license_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/staff_held_license_page/staff_held_license_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/staff_held_license_page/staff_held_license_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/staff_held_license_page/staff_held_license_page_rfe.graphql.dart';

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

Map<String, dynamic> _licenseJson(String id, String nameJa) => {
  'mstrStaffLicenseId': 'sl$id',
  'infoStaffId': 's1111111-1111-1111-1111-111111111111',
  'mstrLicenseId': 'k$id',
  'startAt': '2026-01-01T00:00:00',
  'stopAt': '2030-01-01T00:00:00',
  'abeyance': false,
  'abeyanceAt': null,
  'revocation': false,
  'revocationAt': null,
  'license': {
    'mstrLicenseId': 'k$id',
    'code': 'LC$id',
    'detail': '資格の詳細テキスト',
    'publicLicense': true,
    'customerLicense': false,
    'organizationLicense': false,
    'updateInterval': {
      'years': 1,
      'months': 0,
      'days': 0,
      'hours': 0,
      'minutes': 0,
      'seconds': 0,
      '__typename': 'Interval',
    },
    'symbol': 'LC$id',
    'remarks': null,
    'updateAt': '2026-09-29T00:00:00',
    'remove': false,
    'labels': _labelsJsonValue('a3333333-3333-3333-3333-33333333333$id', nameJa),
    'update_user': _updateUserJson(),
    '__typename': 'MstrLicense',
  },
  '__typename': 'MstrStaffLicense',
};

void main() {
  test('要件0045: Query\$StaffHeldLicensePageRead <-> Map 往復変換が元と一致する', () {
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
            'holdeLicense': {
              'totalCount': 2,
              'pageInfo': {
                'hasNextPage': false,
                'endCursor': null,
                '__typename': 'PageInfo',
              },
              'nodes': [
                _licenseJson('1', '第一種資格'),
                _licenseJson('2', '第二種資格'),
              ],
              '__typename': 'MstrStaffLicensesConnection',
            },
            'update_user': _updateUserJson(),
            '__typename': 'InfoStaff',
          },
        ],
        '__typename': 'InfoStaffsConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$StaffHeldLicensePageRead.fromJson(raw);
    final node = model.allInfoStaffs!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$StaffHeldLicensePageRead$allInfoStaffs$nodes.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final holdeLicenseConnection =
        nodeMap[StaffHeldLicensePageKeyName.holdeLicense.name]
            as Map<String, dynamic>;
    final licenseLabels = holdeLicenseConnection.extractFromEachRecord(
      'license||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
      collapseSingleRecordPaths: {
        'license||labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(licenseLabels, ['第一種資格', '第二種資格']);

    // ignore: avoid_print
    print(
      'STAFF_HELD_LICENSE_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}',
    );
  });

  test(
    '要件0045: Mutation\$StaffHeldLicensePageEdit <-> Map 往復変換が元と一致する',
    () {
      final raw = {
        'updateMstrStaffLicenseByMstrStaffLicenseId': {
          'mstrStaffLicense': {
            'mstrStaffLicenseId': 'sl1111111-1111-1111-1111-11111111111',
            'infoStaffId': 's1111111-1111-1111-1111-111111111111',
            'mstrLicenseId': 'k1111111-1111-1111-1111-111111111111',
            'startAt': '2026-01-01T00:00:00',
            'stopAt': '2030-01-01T00:00:00',
            'abeyance': false,
            'abeyanceAt': null,
            'revocation': false,
            'revocationAt': null,
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
            'license': {
              'mstrLicenseId': 'k1111111-1111-1111-1111-111111111111',
              'code': 'LC1',
              'detail': '資格の詳細テキスト',
              'publicLicense': true,
              'customerLicense': false,
              'organizationLicense': false,
              'updateInterval': {
                'years': 1,
                'months': 0,
                'days': 0,
                'hours': 0,
                'minutes': 0,
                'seconds': 0,
                '__typename': 'Interval',
              },
              'symbol': 'LC1',
              'remarks': null,
              'updateAt': '2026-09-29T00:00:00',
              'remove': false,
              'labels': _labelsJsonJaEn(
                'a3333333-3333-3333-3333-333333333331',
                '第一種資格',
              ),
              'update_user': _updateUserJsonJaEn(),
              '__typename': 'MstrLicense',
            },
            '__typename': 'MstrStaffLicense',
          },
          'clientMutationId': null,
          '__typename': 'UpdateMstrStaffLicensePayload',
        },
        '__typename': 'Mutation',
      };

      final model = Mutation$StaffHeldLicensePageEdit.fromJson(raw);
      final entity = model
          .updateMstrStaffLicenseByMstrStaffLicenseId!
          .mstrStaffLicense!;

      final entityMap = entity.toJson();
      final flatMap = entityMap.flatten();
      final restoredMap = flatMap.unflatten();
      final restoredModel =
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense.fromJson(
            restoredMap,
          );

      expect(restoredMap, equals(entityMap));
      expect(restoredModel, equals(entity));
    },
  );

  test('要件0045: Query\$StaffHeldLicensePageRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'mstrStaffLicenseByMstrStaffLicenseId': {
        'mstrStaffLicenseId': 'sl1111111-1111-1111-1111-11111111111',
        'infoStaffId': 's1111111-1111-1111-1111-111111111111',
        'mstrLicenseId': 'k1111111-1111-1111-1111-111111111111',
        'startAt': '2026-01-01T00:00:00',
        'stopAt': '2030-01-01T00:00:00',
        'abeyance': false,
        'abeyanceAt': null,
        'revocation': false,
        'revocationAt': null,
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
        'license': {
          'mstrLicenseId': 'k1111111-1111-1111-1111-111111111111',
          'code': 'LC1',
          'detail': '資格の詳細テキスト',
          'publicLicense': true,
          'customerLicense': false,
          'organizationLicense': false,
          'updateInterval': {
            'years': 1,
            'months': 0,
            'days': 0,
            'hours': 0,
            'minutes': 0,
            'seconds': 0,
            '__typename': 'Interval',
          },
          'symbol': 'LC1',
          'remarks': null,
          'updateAt': '2026-09-29T00:00:00',
          'remove': false,
          'labels': _labelsJsonJaEn(
            'a3333333-3333-3333-3333-333333333331',
            '第一種資格',
          ),
          'update_user': _updateUserJsonJaEn(),
          '__typename': 'MstrLicense',
        },
        '__typename': 'MstrStaffLicense',
      },
      '__typename': 'Query',
    };

    final model = Query$StaffHeldLicensePageRfe.fromJson(raw);
    final entity = model.mstrStaffLicenseByMstrStaffLicenseId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
