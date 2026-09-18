// 要件0018・0025・0030: purchase_detail画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/purchase_detail/purchase_detail_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/purchase_detail/purchase_detail_read.graphql.dart';

Map<String, dynamic> _buildRawReadJson() => {
  'allTransPurchaseDetails': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'transPurchaseDetailId': 'pd111111-1111-1111-1111-111111111111',
        'transPurchaseId': 'pu111111-1111-1111-1111-111111111111',
        'restockingPurchase': false,
        'quantity': '20.0',
        'period': '2026-10-10T00:00:00',
        'symbol': null,
        'remarks': '備考テキスト',
        'updateAt': '2026-09-18T00:00:00',
        'remove': false,
        'historyId': 'hi111111-1111-1111-1111-111111111111',
        'mstrItemId': 'im111111-1111-1111-1111-111111111111',
        'historyMstrItemByHistoryIdAndMstrItemId': {
          'historyId': 'hi111111-1111-1111-1111-111111111111',
          'code': 'ITM001',
          'identification': 'ID001',
          'labelCode': 'LBL001',
          'mstrManufacturerId': 'mf111111-1111-1111-1111-111111111111',
          '__typename': 'HistoryMstrItem',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'TransPurchaseDetail',
      },
    ],
    '__typename': 'TransPurchaseDetailsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateTransPurchaseDetailByTransPurchaseDetailId': {
    'transPurchaseDetail': {
      'transPurchaseDetailId': 'pd111111-1111-1111-1111-111111111111',
      'transPurchaseId': 'pu111111-1111-1111-1111-111111111111',
      'restockingPurchase': true,
      'quantity': '25.0',
      'period': '2026-10-12T00:00:00',
      'historyId': 'hi111111-1111-1111-1111-111111111111',
      'mstrItemId': 'im111111-1111-1111-1111-111111111111',
      'remarks': '備考テキスト(編集後)',
      'symbol': null,
      '__typename': 'TransPurchaseDetail',
    },
    'clientMutationId': null,
    '__typename': 'UpdateTransPurchaseDetailPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0030: Query\$PurchaseDetailRead <-> Map 往復変換が元と一致する', () {
    final model = Query$PurchaseDetailRead.fromJson(_buildRawReadJson());
    final node = model.allTransPurchaseDetails!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$PurchaseDetailRead$allTransPurchaseDetails$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('PURCHASE_DETAIL_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0030: Mutation\$PurchaseDetailEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$PurchaseDetailEdit.fromJson(_buildRawEditJson());
    final transPurchaseDetail =
        model.updateTransPurchaseDetailByTransPurchaseDetailId!.transPurchaseDetail!;

    final detailMap = transPurchaseDetail.toJson();
    final flatMap = detailMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(detailMap));
    expect(restoredModel, equals(transPurchaseDetail));

    // ignore: avoid_print
    print('PURCHASE_DETAIL_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
