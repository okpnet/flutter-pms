// shipping_order_status_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/shipping_order_status_page/shipping_order_status_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ShippingOrderStatusPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ShippingOrderStatusPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VShippingOrderStatusFilter', {
    'customerId': FlatFilterPath([], 'customerId'),
    'mstrItemKindId': FlatFilterPath([], 'mstrItemKindId'),
    'mstrItemId': FlatFilterPath([], 'mstrItemId'),
    'mstrItemProvisionIds': FlatFilterPath([], 'mstrItemProvisionIds'),
    'deliveryDate': FlatFilterPath([], 'deliveryDate'),
    'estimatedShippingDate': FlatFilterPath([], 'estimatedShippingDate'),
    'shippingDate': FlatFilterPath([], 'shippingDate'),
    'shippingDetailCount': FlatFilterPath([], 'shippingDetailCount'),
    'shippedDetailCount': FlatFilterPath([], 'shippedDetailCount'),
    'scheduledQuantity': FlatFilterPath([], 'scheduledQuantity'),
    'shippedQuantity': FlatFilterPath([], 'shippedQuantity'),
    'remainingQuantity': FlatFilterPath([], 'remainingQuantity'),
    'scheduledAmount': FlatFilterPath([], 'scheduledAmount'),
    'shippedAmount': FlatFilterPath([], 'shippedAmount'),
  });
}
