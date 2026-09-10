// 要件0018・0021: info_postion画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。結果は docs/0021_view_graphql_log.md に記録する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/info_postion/info_postion_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/info_postion/info_postion_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '課長',
    'en': 'Section Manager',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'カチョウ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': '課長',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allInfoPositions': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'infoPositionId': 'p1111111-1111-1111-1111-111111111111',
        'priority': 10,
        'remarks': '備考テキスト',
        'updateAt': '2026-09-10T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'InfoPosition',
      },
    ],
    '__typename': 'InfoPositionsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateInfoPositionByInfoPositionId': {
    'infoPosition': {
      'infoPositionId': 'p1111111-1111-1111-1111-111111111111',
      'priority': 20,
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      '__typename': 'InfoPosition',
    },
    'clientMutationId': null,
    '__typename': 'UpdateInfoPositionPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0021: Query\$InfoPostionRead <-> Map 往復変換が元と一致する', () {
    final model = Query$InfoPostionRead.fromJson(_buildRawReadJson());
    final node = model.allInfoPositions!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$InfoPostionRead$allInfoPositions$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('INFO_POSTION_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0021: Mutation\$InfoPostionEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$InfoPostionEdit.fromJson(_buildRawEditJson());
    final infoPosition = model.updateInfoPositionByInfoPositionId!.infoPosition!;

    final positionMap = infoPosition.toJson();
    final flatMap = positionMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(positionMap));
    expect(restoredModel, equals(infoPosition));

    // ignore: avoid_print
    print('INFO_POSTION_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
