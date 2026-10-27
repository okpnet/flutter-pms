// sales_record_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/sales_record_page/sales_record_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(SalesRecordPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class SalesRecordPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VSalesRecordFilter', {
    'customerId': FlatFilterPath([], 'customerId'),
    'mstrItemKindId': FlatFilterPath([], 'mstrItemKindId'),
    'mstrItemId': FlatFilterPath([], 'mstrItemId'),
    'mstrItemProvisionIds': FlatFilterPath([], 'mstrItemProvisionIds'),
    'deliveryDate': FlatFilterPath([], 'deliveryDate'),
    'isShipped': FlatFilterPath([], 'isShipped'),
    'orderDetailCount': FlatFilterPath([], 'orderDetailCount'),
    'orderQuantity': FlatFilterPath([], 'orderQuantity'),
    'shippedQuantity': FlatFilterPath([], 'shippedQuantity'),
    'orderAmount': FlatFilterPath([], 'orderAmount'),
    'shippedAmount': FlatFilterPath([], 'shippedAmount'),
  });
}
