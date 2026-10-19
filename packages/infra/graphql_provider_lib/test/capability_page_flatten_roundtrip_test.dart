// 要件0044: capability_page画面(source/view.yaml #CapabilityPage/#CapabilityPageEdit)の
// GraphQLからbuild_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/capability_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/capability_page/capability_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/capability_page/capability_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/capability_page/capability_page_rfe.graphql.dart';

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
  test('要件0044: Query\$CapabilityPageRead <-> Map 往復変換が元と一致する', () {
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
            'update_user': _updateUserJson(),
            '__typename': 'MstrCapability',
          },
        ],
        '__typename': 'MstrCapabilitiesConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$CapabilityPageRead.fromJson(raw);
    final node = model.allMstrCapabilities!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$CapabilityPageRead$allMstrCapabilities$nodes.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final labelsNameJa = nodeMap.flattenForColumns(
      [
        CapabilityPageKeyName
            .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
      ],
      collapseSingleRecordPaths: {
        'labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(
      labelsNameJa[CapabilityPageKeyName
          .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '溶接技能',
    );

    // ignore: avoid_print
    print('CAPABILITY_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0044: Mutation\$CapabilityPageEdit <-> Map 往復変換が元と一致する', () {
    final raw = {
      'updateMstrCapabilityByMstrCapabilityId': {
        'mstrCapability': {
          'mstrCapabilityId': 'k1111111-1111-1111-1111-111111111111',
          'code': 'CB001',
          'detail': '力量の詳細テキスト(編集後)',
          'referenceValue': '85',
          'max': '100',
          'min': '0',
          'step': '1',
          'remarks': '備考テキスト(編集後)',
          'labels': _labelsJsonJaEn(
            'a1111111-1111-1111-1111-111111111111',
            '溶接技能',
          ),
          '__typename': 'MstrCapability',
        },
        'clientMutationId': null,
        '__typename': 'UpdateMstrCapabilityPayload',
      },
      '__typename': 'Mutation',
    };

    final model = Mutation$CapabilityPageEdit.fromJson(raw);
    final entity =
        model.updateMstrCapabilityByMstrCapabilityId!.mstrCapability!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });

  test('要件0044: Query\$CapabilityPageRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'mstrCapabilityByMstrCapabilityId': {
        'mstrCapabilityId': 'k1111111-1111-1111-1111-111111111111',
        'code': 'CB001',
        'detail': '力量の詳細テキスト',
        'referenceValue': '80',
        'max': '100',
        'min': '0',
        'step': '1',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-29T00:00:00',
        'updateUserId': 'u1111111-1111-1111-1111-111111111111',
        'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
        'remove': false,
        'labels': _labelsJsonJaEn(
          'a1111111-1111-1111-1111-111111111111',
          '溶接技能',
        ),
        '__typename': 'MstrCapability',
      },
      '__typename': 'Query',
    };

    final model = Query$CapabilityPageRfe.fromJson(raw);
    final entity = model.mstrCapabilityByMstrCapabilityId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
