// plan_change_unreflected_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/plan_change_unreflected_page/plan_change_unreflected_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(PlanChangeUnreflectedPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class PlanChangeUnreflectedPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VPlanChangeUnreflectedFilter', {
    'transPlanChangeId': FlatFilterPath([], 'transPlanChangeId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'changeAt': FlatFilterPath([], 'changeAt'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'transOperationsPlanId': FlatFilterPath([], 'transOperationsPlanId'),
    'staffId': FlatFilterPath([], 'staffId'),
  });
}
