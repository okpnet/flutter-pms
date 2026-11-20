// register_plan_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/register_plan_page/register_plan_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(RegisterPlanPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class RegisterPlanPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransOperationsPlanFilter', {
    'transOperationsPlanId': FlatFilterPath([], 'transOperationsPlanId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'quantity': FlatFilterPath([], 'quantity'),
    'deadline': FlatFilterPath([], 'deadline'),
    'stop': FlatFilterPath([], 'stop'),
    'discontinue': FlatFilterPath([], 'discontinue'),
    'resource_plan||transResourcePlanId': FlatFilterPath([FilterStep('transResourcePlanByTransResourcePlanId')], 'transResourcePlanId'),
    'resource_plan||itemId': FlatFilterPath([FilterStep('transResourcePlanByTransResourcePlanId')], 'itemId'),
    'resource_plan||transOrderDetailId': FlatFilterPath([FilterStep('transResourcePlanByTransResourcePlanId')], 'transOrderDetailId'),
    'resource_plan||order_detail||transOrderDetailId': FlatFilterPath([FilterStep('transResourcePlanByTransResourcePlanId'), FilterStep('transOrderDetailByTransOrderDetailId')], 'transOrderDetailId'),
    'resource_plan||order_detail||transOrderId': FlatFilterPath([FilterStep('transResourcePlanByTransResourcePlanId'), FilterStep('transOrderDetailByTransOrderDetailId')], 'transOrderId'),
    'resource_plan||order_detail||order||transOrderId': FlatFilterPath([FilterStep('transResourcePlanByTransResourcePlanId'), FilterStep('transOrderDetailByTransOrderDetailId'), FilterStep('transOrderByTransOrderId')], 'transOrderId'),
    'resource_plan||order_detail||order||orderNumber': FlatFilterPath([FilterStep('transResourcePlanByTransResourcePlanId'), FilterStep('transOrderDetailByTransOrderDetailId'), FilterStep('transOrderByTransOrderId')], 'orderNumber'),
    'resource_plan||order_detail||order||stakeholderId': FlatFilterPath([FilterStep('transResourcePlanByTransResourcePlanId'), FilterStep('transOrderDetailByTransOrderDetailId'), FilterStep('transOrderByTransOrderId')], 'stakeholderId'),
  });
}
