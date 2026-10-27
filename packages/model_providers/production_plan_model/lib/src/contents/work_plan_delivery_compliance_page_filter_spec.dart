// work_plan_delivery_compliance_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/work_plan_delivery_compliance_page/work_plan_delivery_compliance_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(WorkPlanDeliveryCompliancePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class WorkPlanDeliveryCompliancePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VWorkPlanDeliveryComplianceFilter', {
    'transWorkPlanId': FlatFilterPath([], 'transWorkPlanId'),
    'transOperationsPlanId': FlatFilterPath([], 'transOperationsPlanId'),
    'mstrTaskId': FlatFilterPath([], 'mstrTaskId'),
    'startAt': FlatFilterPath([], 'startAt'),
    'completionAt': FlatFilterPath([], 'completionAt'),
    'deadline': FlatFilterPath([], 'deadline'),
    'transWorkRecordIds': FlatFilterPath([], 'transWorkRecordIds'),
    'workRecordCount': FlatFilterPath([], 'workRecordCount'),
    'plannedQuantity': FlatFilterPath([], 'plannedQuantity'),
    'workQuantity': FlatFilterPath([], 'workQuantity'),
    'isCompleted': FlatFilterPath([], 'isCompleted'),
    'firstStartAt': FlatFilterPath([], 'firstStartAt'),
    'completedAt': FlatFilterPath([], 'completedAt'),
    'complianceStatus': FlatFilterPath([], 'complianceStatus'),
  });
}
