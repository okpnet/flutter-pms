// 要件0018・0025: item_actual_size画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/item_actual_size/item_actual_size_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/item_actual_size/item_actual_size_read.graphql.dart';

Map<String, dynamic> _mstrItemSizeKindJson() => {
  'mstrItemSizeKindId': 'sk111111-1111-1111-1111-111111111111',
  'code': 'W',
  'sharedAppellationBySharedAppellationsId': {
    'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
    'sharedDictionaryBySharedDictionaryNameId': {
      'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
      'ja': '幅',
      'en': 'Width',
      '__typename': 'SharedDictionary',
    },
    'sharedDictionaryBySharedDictionaryPronunciationId': {
      'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
      'ja': 'ハバ',
      'en': null,
      '__typename': 'SharedDictionary',
    },
    'sharedDictionaryBySharedDictionaryNicknameId': {
      'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
      'ja': '幅',
      'en': null,
      '__typename': 'SharedDictionary',
    },
    '__typename': 'SharedAppellation',
  },
  '__typename': 'MstrItemSizeKind',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrItemActualSizes': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrItemActualSizeId': 'as111111-1111-1111-1111-111111111111',
        'mstrItemId': 'im111111-1111-1111-1111-111111111111',
        'sizeValue': '120.5',
        'detail': '詳細テキスト',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-12T00:00:00',
        'remove': false,
        'mstrItemSizeKindByMstrItemSizeKindId': _mstrItemSizeKindJson(),
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrItemActualSize',
      },
    ],
    '__typename': 'MstrItemActualSizesConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrItemActualSizeByMstrItemActualSizeId': {
    'mstrItemActualSize': {
      'mstrItemActualSizeId': 'as111111-1111-1111-1111-111111111111',
      'mstrItemId': 'im111111-1111-1111-1111-111111111111',
      'mstrItemSizeKindId': 'sk111111-1111-1111-1111-111111111111',
      'sizeValue': '125.0',
      'detail': '詳細テキスト(編集後)',
      'remarks': '備考テキスト(編集後)',
      '__typename': 'MstrItemActualSize',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrItemActualSizePayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$ItemActualSizeRead <-> Map 往復変換が元と一致する', () {
    final model = Query$ItemActualSizeRead.fromJson(_buildRawReadJson());
    final node = model.allMstrItemActualSizes!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$ItemActualSizeRead$allMstrItemActualSizes$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('ITEM_ACTUAL_SIZE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$ItemActualSizeEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$ItemActualSizeEdit.fromJson(_buildRawEditJson());
    final mstrItemActualSize =
        model.updateMstrItemActualSizeByMstrItemActualSizeId!.mstrItemActualSize!;

    final sizeMap = mstrItemActualSize.toJson();
    final flatMap = sizeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(sizeMap));
    expect(restoredModel, equals(mstrItemActualSize));

    // ignore: avoid_print
    print('ITEM_ACTUAL_SIZE_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
