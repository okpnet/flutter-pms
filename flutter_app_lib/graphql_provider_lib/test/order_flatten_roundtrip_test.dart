// 要件0018・0025・0030: order画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/order/order_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/order/order_read.graphql.dart';

Map<String, dynamic> _buildRawReadJson() => {
  'allTransOrders': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'transOrderId': 'or111111-1111-1111-1111-111111111111',
        'orderNumber': 'ON001',
        'customerOrderNumber': 'CO001',
        'controlCode1': 'C1',
        'controlCode2': 'C2',
        'controlCode3': 'C3',
        'orderProcessingDate': '2026-09-01T00:00:00',
        'deliveryDate': '2026-10-01T00:00:00',
        'deadline': '2026-10-10T00:00:00',
        'symbol': null,
        'remarks': '備考テキスト',
        'updateAt': '2026-09-18T00:00:00',
        'remove': false,
        'customerHistoryId': 'ch111111-1111-1111-1111-111111111111',
        'mstrStakholderId': 'cu111111-1111-1111-1111-111111111111',
        'historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId': {
          'historyId': 'ch111111-1111-1111-1111-111111111111',
          'code': 'CU001',
          'sharedAppellationsId': 'a3333333-3333-3333-3333-333333333333',
          '__typename': 'HistoryMstrStakeholder',
        },
        'contactHistoryId': 'cch111111-1111-1111-1111-111111111111',
        'mstrStakeholderConcatId': 'cc111111-1111-1111-1111-111111111111',
        'historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId': {
          'historyId': 'cch111111-1111-1111-1111-111111111111',
          'code': 'CC001',
          'officeAppellationsId': 'a4444444-4444-4444-4444-444444444444',
          'departmentAppellationsId': 'a5555555-5555-5555-5555-555555555555',
          'contactPersonAppellationsId': 'a6666666-6666-6666-6666-666666666666',
          '__typename': 'HistoryMstrStakeholderContact',
        },
        'transOrderDetailsByTransOrderId': {
          'totalCount': 2,
          '__typename': 'TransOrderDetailsConnection',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'TransOrder',
      },
    ],
    '__typename': 'TransOrdersConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateTransOrderByTransOrderId': {
    'transOrder': {
      'transOrderId': 'or111111-1111-1111-1111-111111111111',
      'orderNumber': 'ON001',
      'customerOrderNumber': 'CO001(編集後)',
      'customerHistoryId': 'ch111111-1111-1111-1111-111111111111',
      'mstrStakholderId': 'cu111111-1111-1111-1111-111111111111',
      'contactHistoryId': 'cch111111-1111-1111-1111-111111111111',
      'mstrStakeholderConcatId': 'cc111111-1111-1111-1111-111111111111',
      'controlCode1': 'C1',
      'controlCode2': 'C2',
      'controlCode3': 'C3',
      'orderProcessingDate': '2026-09-01T00:00:00',
      'deliveryDate': '2026-10-02T00:00:00',
      'deadline': '2026-10-11T00:00:00',
      'remarks': '備考テキスト(編集後)',
      'symbol': null,
      'transOrderDetailsByTransOrderId': {
        'nodes': [
          {
            'transOrderDetailId': 'od111111-1111-1111-1111-111111111111',
            'historyMstrItemId': 'hi111111-1111-1111-1111-111111111111',
            'mstrItemId': 'im111111-1111-1111-1111-111111111111',
            'quantity': '10.0',
            'cost': '1500.0',
            '__typename': 'TransOrderDetail',
          },
        ],
        '__typename': 'TransOrderDetailsConnection',
      },
      '__typename': 'TransOrder',
    },
    'clientMutationId': null,
    '__typename': 'UpdateTransOrderPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0030: Query\$OrderRead <-> Map 往復変換が元と一致する', () {
    final model = Query$OrderRead.fromJson(_buildRawReadJson());
    final node = model.allTransOrders!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$OrderRead$allTransOrders$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('ORDER_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0030: Mutation\$OrderEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$OrderEdit.fromJson(_buildRawEditJson());
    final transOrder = model.updateTransOrderByTransOrderId!.transOrder!;

    final orderMap = transOrder.toJson();
    final flatMap = orderMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel = Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(orderMap));
    expect(restoredModel, equals(transOrder));

    // ignore: avoid_print
    print('ORDER_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
