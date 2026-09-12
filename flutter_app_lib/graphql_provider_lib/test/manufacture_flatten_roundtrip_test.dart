// 要件0018・0025: manufacture画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/manufacture/manufacture_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/manufacture/manufacture_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '株式会社サンプル製造',
    'en': 'Sample Manufacturing Co., Ltd.',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'カブシキガイシャサンプルセイゾウ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': 'サンプル製造',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrManufacturers': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrManufacturerId': 'mf111111-1111-1111-1111-111111111111',
        'code': 'MF001',
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
        '__typename': 'MstrManufacturer',
      },
    ],
    '__typename': 'MstrManufacturersConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrManufacturerByMstrManufacturerId': {
    'mstrManufacturer': {
      'mstrManufacturerId': 'mf111111-1111-1111-1111-111111111111',
      'code': 'MF001',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      '__typename': 'MstrManufacturer',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrManufacturerPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$ManufactureRead <-> Map 往復変換が元と一致する', () {
    final model = Query$ManufactureRead.fromJson(_buildRawReadJson());
    final node = model.allMstrManufacturers!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$ManufactureRead$allMstrManufacturers$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('MANUFACTURE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$ManufactureEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$ManufactureEdit.fromJson(_buildRawEditJson());
    final mstrManufacturer = model.updateMstrManufacturerByMstrManufacturerId!.mstrManufacturer!;

    final manufacturerMap = mstrManufacturer.toJson();
    final flatMap = manufacturerMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(manufacturerMap));
    expect(restoredModel, equals(mstrManufacturer));

    // ignore: avoid_print
    print('MANUFACTURE_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
