// supply_detail_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/supply_detail_page/supply_detail_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(SupplyDetailPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class SupplyDetailPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransSupplyDetailFilter', {
    'transSupplyDetailId': FlatFilterPath([], 'transSupplyDetailId'),
    'transSupplyId': FlatFilterPath([], 'transSupplyId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'quantity': FlatFilterPath([], 'quantity'),
    'unitPrice': FlatFilterPath([], 'unitPrice'),
    'scheduledAt': FlatFilterPath([], 'scheduledAt'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'transResourcePlanId': FlatFilterPath([], 'transResourcePlanId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
