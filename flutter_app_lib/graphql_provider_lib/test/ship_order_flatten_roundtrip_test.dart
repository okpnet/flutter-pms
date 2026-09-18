// 要件0018・0025・0030: ship_order画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/ship_order/ship_order_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/ship_order/ship_order_read.graphql.dart';

Map<String, dynamic> _buildRawReadJson() => {
  'allTransShipOrders': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'transShippingId': 'sh111111-1111-1111-1111-111111111111',
        'transOrderId': 'or111111-1111-1111-1111-111111111111',
        'edtimatedShippingDate': '2026-10-01T00:00:00',
        'code': 'SO001',
        'estimatedArrivalDate': '2026-10-05',
        'symbol': null,
        'remarks': '備考テキスト',
        'updateAt': '2026-09-18T00:00:00',
        'remove': false,
        'transOrderByTransOrderId': {
          'orderNumber': 'ON001',
          'customerOrderNumber': 'CO001',
          'customerHistoryId': 'ch111111-1111-1111-1111-111111111111',
          'mstrStakholderId': 'cu111111-1111-1111-1111-111111111111',
          'historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId': {
            'code': 'CU001',
            'sharedAppellationsId': 'a3333333-3333-3333-3333-333333333333',
            '__typename': 'HistoryMstrStakeholder',
          },
          'contactHistoryId': 'cch111111-1111-1111-1111-111111111111',
          'mstrStakeholderConcatId': 'cc111111-1111-1111-1111-111111111111',
          'historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId': {
            'code': 'CC001',
            'officeAppellationsId': 'a4444444-4444-4444-4444-444444444444',
            'departmentAppellationsId': 'a5555555-5555-5555-5555-555555555555',
            'contactPersonAppellationsId': 'a6666666-6666-6666-6666-666666666666',
            '__typename': 'HistoryMstrStakeholderContact',
          },
          'controlCode1': 'C1',
          'controlCode2': 'C2',
          'controlCode3': 'C3',
          'orderProcessingDate': '2026-09-01T00:00:00',
          'deliveryDate': '2026-10-01T00:00:00',
          'deadline': '2026-10-10T00:00:00',
          'transOrderDetailsByTransOrderId': {
            'totalCount': 2,
            '__typename': 'TransOrderDetailsConnection',
          },
          '__typename': 'TransOrder',
        },
        'historyMstrStakeholderId': 'dh111111-1111-1111-1111-111111111111',
        'mstrStakeholderId': 'de111111-1111-1111-1111-111111111111',
        'historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId': {
          'historyId': 'dh111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a7777777-7777-7777-7777-777777777777',
          '__typename': 'HistoryMstrStakeholder',
        },
        'transShippingOrderDetailsByTransShippingId': {
          'totalCount': 1,
          '__typename': 'TransShippingOrderDetailsConnection',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'TransShipOrder',
      },
    ],
    '__typename': 'TransShipOrdersConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateTransShipOrderByTransShippingId': {
    'transShipOrder': {
      'transShippingId': 'sh111111-1111-1111-1111-111111111111',
      'transOrderId': 'or111111-1111-1111-1111-111111111111',
      'edtimatedShippingDate': '2026-10-02T00:00:00',
      'code': 'SO001',
      'estimatedArrivalDate': '2026-10-06',
      'historyMstrStakeholderId': 'dh111111-1111-1111-1111-111111111111',
      'mstrStakeholderId': 'de111111-1111-1111-1111-111111111111',
      'remarks': '備考テキスト(編集後)',
      'symbol': null,
      'transShippingOrderDetailsByTransShippingId': {
        'nodes': [
          {
            'transShippingOrderDetailId': 'sd111111-1111-1111-1111-111111111111',
            'transOrderDetailId': 'od111111-1111-1111-1111-111111111111',
            'shippingQuantity': '5.0',
            '__typename': 'TransShippingOrderDetail',
          },
        ],
        '__typename': 'TransShippingOrderDetailsConnection',
      },
      '__typename': 'TransShipOrder',
    },
    'clientMutationId': null,
    '__typename': 'UpdateTransShipOrderPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0030: Query\$ShipOrderRead <-> Map 往復変換が元と一致する', () {
    final model = Query$ShipOrderRead.fromJson(_buildRawReadJson());
    final node = model.allTransShipOrders!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$ShipOrderRead$allTransShipOrders$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('SHIP_ORDER_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0030: Mutation\$ShipOrderEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$ShipOrderEdit.fromJson(_buildRawEditJson());
    final transShipOrder = model.updateTransShipOrderByTransShippingId!.transShipOrder!;

    final shipOrderMap = transShipOrder.toJson();
    final flatMap = shipOrderMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(shipOrderMap));
    expect(restoredModel, equals(transShipOrder));

    // ignore: avoid_print
    print('SHIP_ORDER_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
