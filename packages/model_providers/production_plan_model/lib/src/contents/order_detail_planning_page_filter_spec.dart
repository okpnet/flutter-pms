// order_detail_planning_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/order_detail_planning_page/order_detail_planning_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(OrderDetailPlanningPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class OrderDetailPlanningPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VOrderDetailPlanningFilter', {
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'transOrderId': FlatFilterPath([], 'transOrderId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'transResourcePlanId': FlatFilterPath([], 'transResourcePlanId'),
    'planned': FlatFilterPath([], 'planned'),
    'hasDemand': FlatFilterPath([], 'hasDemand'),
    'stopped': FlatFilterPath([], 'stopped'),
    'toPlan': FlatFilterPath([], 'toPlan'),
  });
}
