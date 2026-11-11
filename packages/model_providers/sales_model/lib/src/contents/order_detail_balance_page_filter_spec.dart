// order_detail_balance_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/order_detail_balance_page/order_detail_balance_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(OrderDetailBalancePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class OrderDetailBalancePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VOrderDetailBalanceFilter', {
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'transOrderId': FlatFilterPath([], 'transOrderId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'stop': FlatFilterPath([], 'stop'),
    'customerProperty': FlatFilterPath([], 'customerProperty'),
    'quantity': FlatFilterPath([], 'quantity'),
    'cancelQuantity': FlatFilterPath([], 'cancelQuantity'),
    'shippedQuantity': FlatFilterPath([], 'shippedQuantity'),
    'returnedQuantity': FlatFilterPath([], 'returnedQuantity'),
    'replacementQuantity': FlatFilterPath([], 'replacementQuantity'),
    'remainingQuantity': FlatFilterPath([], 'remainingQuantity'),
    'openQuantity': FlatFilterPath([], 'openQuantity'),
    'cancelClosed': FlatFilterPath([], 'cancelClosed'),
    'settlementAmount': FlatFilterPath([], 'settlementAmount'),
  });
}
