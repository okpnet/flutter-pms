// purchase_detail_balance_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/purchase_detail_balance_page/purchase_detail_balance_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(PurchaseDetailBalancePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class PurchaseDetailBalancePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VPurchaseDetailBalanceFilter', {
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'transPurchaseId': FlatFilterPath([], 'transPurchaseId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'stop': FlatFilterPath([], 'stop'),
    'materialSupply': FlatFilterPath([], 'materialSupply'),
    'paidSupply': FlatFilterPath([], 'paidSupply'),
    'isOutsource': FlatFilterPath([], 'isOutsource'),
    'quantity': FlatFilterPath([], 'quantity'),
    'cancelQuantity': FlatFilterPath([], 'cancelQuantity'),
    'receivedQuantity': FlatFilterPath([], 'receivedQuantity'),
    'returnedQuantity': FlatFilterPath([], 'returnedQuantity'),
    'replacementQuantity': FlatFilterPath([], 'replacementQuantity'),
    'remainingQuantity': FlatFilterPath([], 'remainingQuantity'),
    'openQuantity': FlatFilterPath([], 'openQuantity'),
    'cancelClosed': FlatFilterPath([], 'cancelClosed'),
  });
}
