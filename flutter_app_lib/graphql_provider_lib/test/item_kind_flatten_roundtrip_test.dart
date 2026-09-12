// 要件0018・0025: item_kind画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/item_kind/item_kind_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/item_kind/item_kind_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '工具類',
    'en': 'Tools',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'コウグルイ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': '工具',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrItemKinds': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrItemKindId': 'ik111111-1111-1111-1111-111111111111',
        'code': 'IK001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-12T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrItemKind',
      },
    ],
    '__typename': 'MstrItemKindsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrItemKindByMstrItemKindId': {
    'mstrItemKind': {
      'mstrItemKindId': 'ik111111-1111-1111-1111-111111111111',
      'code': 'IK001',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      '__typename': 'MstrItemKind',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrItemKindPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$ItemKindRead <-> Map 往復変換が元と一致する', () {
    final model = Query$ItemKindRead.fromJson(_buildRawReadJson());
    final node = model.allMstrItemKinds!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$ItemKindRead$allMstrItemKinds$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('ITEM_KIND_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$ItemKindEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$ItemKindEdit.fromJson(_buildRawEditJson());
    final mstrItemKind = model.updateMstrItemKindByMstrItemKindId!.mstrItemKind!;

    final kindMap = mstrItemKind.toJson();
    final flatMap = kindMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(kindMap));
    expect(restoredModel, equals(mstrItemKind));

    // ignore: avoid_print
    print('ITEM_KIND_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
