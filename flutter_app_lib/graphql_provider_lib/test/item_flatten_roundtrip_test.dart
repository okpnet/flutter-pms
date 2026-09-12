// 要件0018・0025: item画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/item/item_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/item/item_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson({required String ja, required String? en}) => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': ja,
    'en': en,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'ヨミガナ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': ja,
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _itemOwnAppellationJson() =>
    _sharedAppellationJson(ja: '六角ボルトM8', en: 'Hex Bolt M8');

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrItems': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrItemId': 'im111111-1111-1111-1111-111111111111',
        'mstrItemKindId': 'ik111111-1111-1111-1111-111111111111',
        'code': 'ITM001',
        'identification': 'ID001',
        'controlCode': 'CTRL001',
        'labelCode': 'LBL001',
        'description': '品目詳細テキスト',
        'lot': true,
        'stockQuantity': '10.0',
        'sharedUnitId': 'un111111-1111-1111-1111-111111111111',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-12T00:00:00',
        'remove': false,
        'mstrItemKindByMstrItemKindId': {
          'mstrItemKindId': 'ik111111-1111-1111-1111-111111111111',
          'code': 'IK001',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {
              'ja': 'ボルト類',
              'en': 'Bolts',
              '__typename': 'SharedDictionary',
            },
            '__typename': 'SharedAppellation',
          },
          '__typename': 'MstrItemKind',
        },
        'mstrManufacturerByMstrManufacturerId': {
          'mstrManufacturerId': 'mf111111-1111-1111-1111-111111111111',
          'code': 'MF001',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {
              'ja': '株式会社サンプル製造',
              'en': 'Sample Manufacturing Co., Ltd.',
              '__typename': 'SharedDictionary',
            },
            '__typename': 'SharedAppellation',
          },
          '__typename': 'MstrManufacturer',
        },
        'mstrItemProvisionsByMstrItemId': {
          'nodes': [
            {
              'mstrItemProvisionId': 'ip111111-1111-1111-1111-111111111111',
              'infoProvisionByInfoProvisionId': {
                'infoProvisionId': 'pv111111-1111-1111-1111-111111111111',
                'sharedAppellationBySharedAppellationsId': {
                  'sharedDictionaryBySharedDictionaryNameId': {
                    'ja': '本社倉庫出荷',
                    'en': null,
                    '__typename': 'SharedDictionary',
                  },
                  '__typename': 'SharedAppellation',
                },
                '__typename': 'InfoProvision',
              },
              '__typename': 'MstrItemProvision',
            },
          ],
          '__typename': 'MstrItemProvisionsConnection',
        },
        'sharedAppellationBySharedAppellationsId': _itemOwnAppellationJson(),
        'sharedUnitBySharedUnitId': {
          'sharedUnitId': 'un111111-1111-1111-1111-111111111111',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNicknameId': {
              'ja': '個',
              'en': null,
              '__typename': 'SharedDictionary',
            },
            '__typename': 'SharedAppellation',
          },
          '__typename': 'SharedUnit',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrItem',
      },
    ],
    '__typename': 'MstrItemsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrItemByMstrItemId': {
    'mstrItem': {
      'mstrItemId': 'im111111-1111-1111-1111-111111111111',
      'mstrItemKindId': 'ik111111-1111-1111-1111-111111111111',
      'code': 'ITM001',
      'identification': 'ID001',
      'controlCode': 'CTRL001',
      'mstrManufacturerId': 'mf111111-1111-1111-1111-111111111111',
      'labelCode': 'LBL001',
      'description': '品目詳細テキスト(編集後)',
      'lot': true,
      'stockQuantity': '12.0',
      'sharedUnitId': 'un111111-1111-1111-1111-111111111111',
      'remarks': '備考テキスト(編集後)',
      'mstrItemProvisionsByMstrItemId': {
        'nodes': [
          {
            'mstrItemProvisionId': 'ip111111-1111-1111-1111-111111111111',
            'infoProvisionId': 'pv111111-1111-1111-1111-111111111111',
            '__typename': 'MstrItemProvision',
          },
        ],
        '__typename': 'MstrItemProvisionsConnection',
      },
      'sharedAppellationBySharedAppellationsId': _itemOwnAppellationJson(),
      '__typename': 'MstrItem',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrItemPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$ItemRead <-> Map 往復変換が元と一致する', () {
    final model = Query$ItemRead.fromJson(_buildRawReadJson());
    final node = model.allMstrItems!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$ItemRead$allMstrItems$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('ITEM_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$ItemEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$ItemEdit.fromJson(_buildRawEditJson());
    final mstrItem = model.updateMstrItemByMstrItemId!.mstrItem!;

    final itemMap = mstrItem.toJson();
    final flatMap = itemMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel = Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(itemMap));
    expect(restoredModel, equals(mstrItem));

    // ignore: avoid_print
    print('ITEM_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
