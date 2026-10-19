// 要件0044: item_kind_page画面(source/view.yaml #ItemKindPage/#ItemKindPageEdit)の
// GraphQLからbuild_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/item_kind_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/item_kind_page/item_kind_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/item_kind_page/item_kind_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/item_kind_page/item_kind_page_rfe.graphql.dart';

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
  test('要件0044: Query\$ItemKindPageRead <-> Map 往復変換が元と一致する', () {
    final raw = {
      'allMstrItemKinds': {
        'totalCount': 1,
        'pageInfo': {
          'hasNextPage': false,
          'endCursor': null,
          '__typename': 'PageInfo',
        },
        'nodes': [
          {
            'mstrItemKindId': 'k1111111-1111-1111-1111-111111111111',
            'code': 'IK001',
            'symbol': 'IK001',
            'remarks': '備考テキスト',
            'updateAt': '2026-09-30T00:00:00',
            'remove': false,
            'labels': _labelsJsonValue(
              'a1111111-1111-1111-1111-111111111111',
              '完成品',
            ),
            'update_user': _updateUserJson(),
            '__typename': 'MstrItemKind',
          },
        ],
        '__typename': 'MstrItemKindsConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$ItemKindPageRead.fromJson(raw);
    final node = model.allMstrItemKinds!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$ItemKindPageRead$allMstrItemKinds$nodes
        .fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final labelsNameJa = nodeMap.flattenForColumns(
      [
        ItemKindPageKeyName
            .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
      ],
      collapseSingleRecordPaths: {
        'labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(
      labelsNameJa[ItemKindPageKeyName
          .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '完成品',
    );

    // ignore: avoid_print
    print('ITEM_KIND_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0044: Mutation\$ItemKindPageEdit <-> Map 往復変換が元と一致する', () {
    final raw = {
      'updateMstrItemKindByMstrItemKindId': {
        'mstrItemKind': {
          'mstrItemKindId': 'k1111111-1111-1111-1111-111111111111',
          'code': 'IK001',
          'remarks': '備考テキスト(編集後)',
          'labels': _labelsJsonJaEn(
            'a1111111-1111-1111-1111-111111111111',
            '完成品',
          ),
          '__typename': 'MstrItemKind',
        },
        'clientMutationId': null,
        '__typename': 'UpdateMstrItemKindPayload',
      },
      '__typename': 'Mutation',
    };

    final model = Mutation$ItemKindPageEdit.fromJson(raw);
    final entity = model.updateMstrItemKindByMstrItemKindId!.mstrItemKind!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });

  test('要件0044: Query\$ItemKindPageRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'mstrItemKindByMstrItemKindId': {
        'mstrItemKindId': 'k1111111-1111-1111-1111-111111111111',
        'code': 'IK001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-30T00:00:00',
        'updateUserId': 'u1111111-1111-1111-1111-111111111111',
        'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
        'remove': false,
        'labels': _labelsJsonJaEn(
          'a1111111-1111-1111-1111-111111111111',
          '完成品',
        ),
        '__typename': 'MstrItemKind',
      },
      '__typename': 'Query',
    };

    final model = Query$ItemKindPageRfe.fromJson(raw);
    final entity = model.mstrItemKindByMstrItemKindId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel = Query$ItemKindPageRfe$mstrItemKindByMstrItemKindId
        .fromJson(restoredMap);

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
