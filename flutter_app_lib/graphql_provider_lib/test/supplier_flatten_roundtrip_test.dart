// 要件0018・0025: supplier画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/supplier/supplier_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/supplier/supplier_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': '株式会社サンプル仕入',
    'en': 'Sample Supply Co., Ltd.',
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'カブシキガイシャサンプルシイレ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': 'サンプル仕入',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _infoAddressJson() => {
  'infoAddressId': 'ad111111-1111-1111-1111-111111111111',
  'zipCode': '100-0001',
  'address1': '東京都千代田区千代田1-1',
  'address2': 'サンプルビル5F',
  'bill': 'サンプルビル',
  'phone': '03-1234-5678',
  'faxNumber': '03-1234-5679',
  '__typename': 'InfoAddress',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrStakeholders': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrStakeholderId': 'su111111-1111-1111-1111-111111111111',
        'code': 'SU001',
        'controlCode': 'CTRL001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-12T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'mstrStakeholderProvisionsByMstrStakeholderId': {
          'nodes': [
            {
              'mstrStakeholderProvisionId': 'sp111111-1111-1111-1111-111111111111',
              'infoProvisionByInfoProvisionId': {
                'infoProvisionId': 'pv111111-1111-1111-1111-111111111111',
                'sharedAppellationBySharedAppellationsId': {
                  'sharedDictionaryBySharedDictionaryNameId': {
                    'ja': '定期配送',
                    'en': null,
                    '__typename': 'SharedDictionary',
                  },
                  '__typename': 'SharedAppellation',
                },
                '__typename': 'InfoProvision',
              },
              '__typename': 'MstrStakeholderProvision',
            },
          ],
          '__typename': 'MstrStakeholderProvisionsConnection',
        },
        'mstrShippingKindId': 'sk111111-1111-1111-1111-111111111111',
        'mstrShippingKindByMstrShippingKindId': {
          'mstrShippingKindId': 'sk111111-1111-1111-1111-111111111111',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {
              'ja': '陸送',
              'en': null,
              '__typename': 'SharedDictionary',
            },
            '__typename': 'SharedAppellation',
          },
          '__typename': 'MstrShippingKind',
        },
        'infoAddressByInfoAddressId': _infoAddressJson(),
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrStakeholder',
      },
    ],
    '__typename': 'MstrStakeholdersConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrStakeholderByMstrStakeholderId': {
    'mstrStakeholder': {
      'mstrStakeholderId': 'su111111-1111-1111-1111-111111111111',
      'code': 'SU001',
      'controlCode': 'CTRL001',
      'mstrShippingKindId': 'sk111111-1111-1111-1111-111111111111',
      'remarks': '備考テキスト(編集後)',
      'mstrStakeholderProvisionsByMstrStakeholderId': {
        'nodes': [
          {
            'mstrStakeholderProvisionId': 'sp111111-1111-1111-1111-111111111111',
            'infoProvisionId': 'pv111111-1111-1111-1111-111111111111',
            '__typename': 'MstrStakeholderProvision',
          },
        ],
        '__typename': 'MstrStakeholderProvisionsConnection',
      },
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      'infoAddressByInfoAddressId': _infoAddressJson(),
      '__typename': 'MstrStakeholder',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrStakeholderPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$SupplierRead <-> Map 往復変換が元と一致する', () {
    final model = Query$SupplierRead.fromJson(_buildRawReadJson());
    final node = model.allMstrStakeholders!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$SupplierRead$allMstrStakeholders$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('SUPPLIER_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$SupplierEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$SupplierEdit.fromJson(_buildRawEditJson());
    final mstrStakeholder = model.updateMstrStakeholderByMstrStakeholderId!.mstrStakeholder!;

    final stakeholderMap = mstrStakeholder.toJson();
    final flatMap = stakeholderMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(stakeholderMap));
    expect(restoredModel, equals(mstrStakeholder));

    // ignore: avoid_print
    print('SUPPLIER_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
