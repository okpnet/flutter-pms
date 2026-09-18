// 要件0018・0025・0030: purchase画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/purchase/purchase_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/purchase/purchase_read.graphql.dart';

Map<String, dynamic> _buildRawReadJson() => {
  'allTransPurchases': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'transPurchaseId': 'pu111111-1111-1111-1111-111111111111',
        'supplierHistoryId': 'sh111111-1111-1111-1111-111111111111',
        'mstrStakeholderId': 'su111111-1111-1111-1111-111111111111',
        'registerAt': '2026-09-01T00:00:00',
        'purchaseOrderDate': '2026-09-05T00:00:00',
        'deadline': '2026-09-20T00:00:00',
        'symbol': null,
        'remarks': '備考テキスト',
        'updateAt': '2026-09-18T00:00:00',
        'remove': false,
        'historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId': {
          'historyId': 'sh111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a3333333-3333-3333-3333-333333333333',
          '__typename': 'HistoryMstrStakeholder',
        },
        'contactHistoryId': 'cch111111-1111-1111-1111-111111111111',
        'mstrStakeholderContactId': 'cc111111-1111-1111-1111-111111111111',
        'historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId': {
          'historyId': 'cch111111-1111-1111-1111-111111111111',
          'contactPersonAppellationsId': 'a6666666-6666-6666-6666-666666666666',
          '__typename': 'HistoryMstrStakeholderContact',
        },
        'transPurchaseDetailsByTransPurchaseId': {
          'totalCount': 3,
          '__typename': 'TransPurchaseDetailsConnection',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'TransPurchase',
      },
    ],
    '__typename': 'TransPurchasesConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateTransPurchaseByTransPurchaseId': {
    'transPurchase': {
      'transPurchaseId': 'pu111111-1111-1111-1111-111111111111',
      'supplierHistoryId': 'sh111111-1111-1111-1111-111111111111',
      'mstrStakeholderId': 'su111111-1111-1111-1111-111111111111',
      'contactHistoryId': 'cch111111-1111-1111-1111-111111111111',
      'mstrStakeholderContactId': 'cc111111-1111-1111-1111-111111111111',
      'registerAt': '2026-09-01T00:00:00',
      'purchaseOrderDate': '2026-09-06T00:00:00',
      'deadline': '2026-09-21T00:00:00',
      'remarks': '備考テキスト(編集後)',
      'symbol': null,
      'transPurchaseDetailsByTransPurchaseId': {
        'nodes': [
          {
            'transPurchaseDetailId': 'pd111111-1111-1111-1111-111111111111',
            'historyId': 'hi111111-1111-1111-1111-111111111111',
            'mstrItemId': 'im111111-1111-1111-1111-111111111111',
            'quantity': '20.0',
            '__typename': 'TransPurchaseDetail',
          },
        ],
        '__typename': 'TransPurchaseDetailsConnection',
      },
      '__typename': 'TransPurchase',
    },
    'clientMutationId': null,
    '__typename': 'UpdateTransPurchasePayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0030: Query\$PurchaseRead <-> Map 往復変換が元と一致する', () {
    final model = Query$PurchaseRead.fromJson(_buildRawReadJson());
    final node = model.allTransPurchases!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$PurchaseRead$allTransPurchases$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('PURCHASE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0030: Mutation\$PurchaseEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$PurchaseEdit.fromJson(_buildRawEditJson());
    final transPurchase = model.updateTransPurchaseByTransPurchaseId!.transPurchase!;

    final purchaseMap = transPurchase.toJson();
    final flatMap = purchaseMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(purchaseMap));
    expect(restoredModel, equals(transPurchase));

    // ignore: avoid_print
    print('PURCHASE_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
