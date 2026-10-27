// purchase_delivery_compliance_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/purchase_delivery_compliance_page/purchase_delivery_compliance_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(PurchaseDeliveryCompliancePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class PurchaseDeliveryCompliancePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VPurchaseDeliveryComplianceFilter', {
    'supplierId': FlatFilterPath([], 'supplierId'),
    'mstrItemKindId': FlatFilterPath([], 'mstrItemKindId'),
    'mstrItemId': FlatFilterPath([], 'mstrItemId'),
    'mstrItemProvisionIds': FlatFilterPath([], 'mstrItemProvisionIds'),
    'period': FlatFilterPath([], 'period'),
    'isReceived': FlatFilterPath([], 'isReceived'),
    'purchaseDetailCount': FlatFilterPath([], 'purchaseDetailCount'),
    'onTimeCount': FlatFilterPath([], 'onTimeCount'),
    'lateCount': FlatFilterPath([], 'lateCount'),
    'overdueCount': FlatFilterPath([], 'overdueCount'),
    'pendingCount': FlatFilterPath([], 'pendingCount'),
    'purchaseQuantity': FlatFilterPath([], 'purchaseQuantity'),
    'receivedQuantity': FlatFilterPath([], 'receivedQuantity'),
  });
}
