// shipping_delivery_compliance_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/shipping_delivery_compliance_page/shipping_delivery_compliance_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ShippingDeliveryCompliancePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ShippingDeliveryCompliancePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VShippingDeliveryComplianceFilter', {
    'customerId': FlatFilterPath([], 'customerId'),
    'mstrItemKindId': FlatFilterPath([], 'mstrItemKindId'),
    'mstrItemId': FlatFilterPath([], 'mstrItemId'),
    'mstrItemProvisionIds': FlatFilterPath([], 'mstrItemProvisionIds'),
    'deliveryDate': FlatFilterPath([], 'deliveryDate'),
    'estimatedShippingDate': FlatFilterPath([], 'estimatedShippingDate'),
    'shippingDate': FlatFilterPath([], 'shippingDate'),
    'shippingDetailCount': FlatFilterPath([], 'shippingDetailCount'),
    'onTimeCount': FlatFilterPath([], 'onTimeCount'),
    'lateCount': FlatFilterPath([], 'lateCount'),
    'overdueCount': FlatFilterPath([], 'overdueCount'),
    'pendingCount': FlatFilterPath([], 'pendingCount'),
    'scheduleKeptCount': FlatFilterPath([], 'scheduleKeptCount'),
    'scheduleMissedCount': FlatFilterPath([], 'scheduleMissedCount'),
    'scheduledQuantity': FlatFilterPath([], 'scheduledQuantity'),
    'shippedQuantity': FlatFilterPath([], 'shippedQuantity'),
  });
}
