// purchase_amount_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/purchase_amount_page/purchase_amount_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(PurchaseAmountPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class PurchaseAmountPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VPurchaseAmountFilter', {
    'supplierId': FlatFilterPath([], 'supplierId'),
    'mstrItemKindId': FlatFilterPath([], 'mstrItemKindId'),
    'mstrItemId': FlatFilterPath([], 'mstrItemId'),
    'mstrItemProvisionIds': FlatFilterPath([], 'mstrItemProvisionIds'),
    'period': FlatFilterPath([], 'period'),
    'isReceived': FlatFilterPath([], 'isReceived'),
    'purchaseDetailCount': FlatFilterPath([], 'purchaseDetailCount'),
    'purchaseQuantity': FlatFilterPath([], 'purchaseQuantity'),
    'receivedQuantity': FlatFilterPath([], 'receivedQuantity'),
  });
}
