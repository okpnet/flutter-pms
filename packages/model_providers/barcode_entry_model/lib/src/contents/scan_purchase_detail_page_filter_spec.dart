// scan_purchase_detail_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/scan_purchase_detail_page/scan_purchase_detail_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ScanPurchaseDetailPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ScanPurchaseDetailPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransPurchaseDetailFilter', {
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'quantity': FlatFilterPath([], 'quantity'),
    'cancelQuantity': FlatFilterPath([], 'cancelQuantity'),
    'stop': FlatFilterPath([], 'stop'),
    'itemId': FlatFilterPath([], 'itemId'),
    'itemHistoryId': FlatFilterPath([], 'itemHistoryId'),
  });
}
