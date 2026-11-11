// plan_change_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/plan_change_page/plan_change_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(PlanChangePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class PlanChangePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransPlanChangeFilter', {
    'transPlanChangeId': FlatFilterPath([], 'transPlanChangeId'),
    'parentTransPlanChangeId': FlatFilterPath([], 'parentTransPlanChangeId'),
    'changeAt': FlatFilterPath([], 'changeAt'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'transOperationsPlanId': FlatFilterPath([], 'transOperationsPlanId'),
    'transInventoryRequestId': FlatFilterPath([], 'transInventoryRequestId'),
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'transShippingOrderDetailId': FlatFilterPath([], 'transShippingOrderDetailId'),
    'oldQuantity': FlatFilterPath([], 'oldQuantity'),
    'newQuantity': FlatFilterPath([], 'newQuantity'),
    'cancelQuantity': FlatFilterPath([], 'cancelQuantity'),
    'oldDate': FlatFilterPath([], 'oldDate'),
    'newDate': FlatFilterPath([], 'newDate'),
    'oldStop': FlatFilterPath([], 'oldStop'),
    'newStop': FlatFilterPath([], 'newStop'),
    'discontinue': FlatFilterPath([], 'discontinue'),
    'release': FlatFilterPath([], 'release'),
    'hold': FlatFilterPath([], 'hold'),
    'scrap': FlatFilterPath([], 'scrap'),
    'deliver': FlatFilterPath([], 'deliver'),
    'transContainerId': FlatFilterPath([], 'transContainerId'),
    'transOrderDetailSettlementId': FlatFilterPath([], 'transOrderDetailSettlementId'),
    'changeReasonId': FlatFilterPath([], 'changeReasonId'),
    'reason': FlatFilterPath([], 'reason'),
    'stakeholderId': FlatFilterPath([], 'stakeholderId'),
    'staffId': FlatFilterPath([], 'staffId'),
    'transMrpSuggestionId': FlatFilterPath([], 'transMrpSuggestionId'),
    'reflectedTransMrpRunId': FlatFilterPath([], 'reflectedTransMrpRunId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
