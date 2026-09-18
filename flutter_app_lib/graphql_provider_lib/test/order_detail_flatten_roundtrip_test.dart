// 要件0018・0025・0030: order_detail画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/order_detail/order_detail_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/order_detail/order_detail_read.graphql.dart';

Map<String, dynamic> _buildRawReadJson() => {
  'allTransOrderDetails': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'transOrderDetailId': 'od111111-1111-1111-1111-111111111111',
        'transOrderId': 'or111111-1111-1111-1111-111111111111',
        'historyMstrItemId': 'hi111111-1111-1111-1111-111111111111',
        'mstrItemId': 'im111111-1111-1111-1111-111111111111',
        'quantity': '10.0',
        'cost': '1500.0',
        'deliveryDate': '2026-10-01T00:00:00',
        'deadline': '2026-10-05T00:00:00',
        'symbol': null,
        'remarks': '備考テキスト',
        'updateAt': '2026-09-18T00:00:00',
        'remove': false,
        'historyMstrItemByHistoryMstrItemIdAndMstrItemId': {
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
        '__typename': 'TransOrderDetail',
      },
    ],
    '__typename': 'TransOrderDetailsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateTransOrderDetailByTransOrderDetailId': {
    'transOrderDetail': {
      'transOrderDetailId': 'od111111-1111-1111-1111-111111111111',
      'transOrderId': 'or111111-1111-1111-1111-111111111111',
      'historyMstrItemId': 'hi111111-1111-1111-1111-111111111111',
      'mstrItemId': 'im111111-1111-1111-1111-111111111111',
      'quantity': '12.0',
      'cost': '1600.0',
      'deliveryDate': '2026-10-02T00:00:00',
      'deadline': '2026-10-06T00:00:00',
      'remarks': '備考テキスト(編集後)',
      'symbol': null,
      '__typename': 'TransOrderDetail',
    },
    'clientMutationId': null,
    '__typename': 'UpdateTransOrderDetailPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0030: Query\$OrderDetailRead <-> Map 往復変換が元と一致する', () {
    final model = Query$OrderDetailRead.fromJson(_buildRawReadJson());
    final node = model.allTransOrderDetails!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$OrderDetailRead$allTransOrderDetails$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('ORDER_DETAIL_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0030: Mutation\$OrderDetailEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$OrderDetailEdit.fromJson(_buildRawEditJson());
    final transOrderDetail =
        model.updateTransOrderDetailByTransOrderDetailId!.transOrderDetail!;

    final detailMap = transOrderDetail.toJson();
    final flatMap = detailMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(detailMap));
    expect(restoredModel, equals(transOrderDetail));

    // ignore: avoid_print
    print('ORDER_DETAIL_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
