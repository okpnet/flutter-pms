// 要件0044: license_page画面(source/view.yaml #LicensePage/#LicensePageEdit)の
// GraphQLからbuild_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/license_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/license_page/license_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/license_page/license_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/license_page/license_page_rfe.graphql.dart';

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
  test('要件0044: Query\$LicensePageRead <-> Map 往復変換が元と一致する', () {
    final raw = {
      'allMstrLicenses': {
        'totalCount': 1,
        'pageInfo': {
          'hasNextPage': false,
          'endCursor': null,
          '__typename': 'PageInfo',
        },
        'nodes': [
          {
            'mstrLicenseId': 'l1111111-1111-1111-1111-111111111111',
            'code': 'LC001',
            'detail': '資格の詳細テキスト',
            'publicLicense': true,
            'customerLicense': false,
            'organizationLicense': true,
            'updateInterval': {
              'years': 1,
              'months': 0,
              'days': 0,
              'hours': 0,
              'minutes': 0,
              'seconds': 0.0,
              '__typename': 'Interval',
            },
            'symbol': 'LC001',
            'remarks': '備考テキスト',
            'updateAt': '2026-09-29T00:00:00',
            'remove': false,
            'labels': _labelsJsonValue(
              'a1111111-1111-1111-1111-111111111111',
              '危険物取扱者',
            ),
            'update_user': _updateUserJson(),
            '__typename': 'MstrLicense',
          },
        ],
        '__typename': 'MstrLicensesConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$LicensePageRead.fromJson(raw);
    final node = model.allMstrLicenses!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$LicensePageRead$allMstrLicenses$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final labelsNameJa = nodeMap.flattenForColumns(
      [
        LicensePageKeyName
            .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
      ],
      collapseSingleRecordPaths: {
        'labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(
      labelsNameJa[LicensePageKeyName
          .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '危険物取扱者',
    );

    // ignore: avoid_print
    print('LICENSE_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0044: Mutation\$LicensePageEdit <-> Map 往復変換が元と一致する', () {
    final raw = {
      'updateMstrLicenseByMstrLicenseId': {
        'mstrLicense': {
          'mstrLicenseId': 'l1111111-1111-1111-1111-111111111111',
          'code': 'LC001',
          'detail': '資格の詳細テキスト(編集後)',
          'publicLicense': true,
          'customerLicense': false,
          'organizationLicense': true,
          'updateInterval': {
            'years': 1,
            'months': 0,
            'days': 0,
            'hours': 0,
            'minutes': 0,
            'seconds': 0.0,
            '__typename': 'Interval',
          },
          'remarks': '備考テキスト(編集後)',
          'labels': _labelsJsonJaEn(
            'a1111111-1111-1111-1111-111111111111',
            '危険物取扱者',
          ),
          '__typename': 'MstrLicense',
        },
        'clientMutationId': null,
        '__typename': 'UpdateMstrLicensePayload',
      },
      '__typename': 'Mutation',
    };

    final model = Mutation$LicensePageEdit.fromJson(raw);
    final entity = model.updateMstrLicenseByMstrLicenseId!.mstrLicense!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });

  test('要件0044: Query\$LicensePageRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'mstrLicenseByMstrLicenseId': {
        'mstrLicenseId': 'l1111111-1111-1111-1111-111111111111',
        'code': 'LC001',
        'detail': '資格の詳細テキスト',
        'publicLicense': true,
        'customerLicense': false,
        'organizationLicense': true,
        'updateInterval': {
          'years': 1,
          'months': 0,
          'days': 0,
          'hours': 0,
          'minutes': 0,
          'seconds': 0.0,
          '__typename': 'Interval',
        },
        'remarks': '備考テキスト',
        'updateAt': '2026-09-29T00:00:00',
        'updateUserId': 'u1111111-1111-1111-1111-111111111111',
        'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
        'remove': false,
        'labels': _labelsJsonJaEn(
          'a1111111-1111-1111-1111-111111111111',
          '危険物取扱者',
        ),
        '__typename': 'MstrLicense',
      },
      '__typename': 'Query',
    };

    final model = Query$LicensePageRfe.fromJson(raw);
    final entity = model.mstrLicenseByMstrLicenseId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel = Query$LicensePageRfe$mstrLicenseByMstrLicenseId
        .fromJson(restoredMap);

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
