// mrp_suggestion_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/mrp_suggestion_page/mrp_suggestion_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(MrpSuggestionPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class MrpSuggestionPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransMrpSuggestionFilter', {
    'transMrpSuggestionId': FlatFilterPath([], 'transMrpSuggestionId'),
    'transMrpRunId': FlatFilterPath([], 'transMrpRunId'),
    'parentTransMrpSuggestionId': FlatFilterPath([], 'parentTransMrpSuggestionId'),
    'seq': FlatFilterPath([], 'seq'),
    'kind': FlatFilterPath([], 'kind'),
    'decision': FlatFilterPath([], 'decision'),
    'needUser': FlatFilterPath([], 'needUser'),
    'late': FlatFilterPath([], 'late'),
    'itemHistoryId': FlatFilterPath([], 'itemHistoryId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'bomLevel': FlatFilterPath([], 'bomLevel'),
    'planKind': FlatFilterPath([], 'planKind'),
    'quantity': FlatFilterPath([], 'quantity'),
    'allocatedQuantity': FlatFilterPath([], 'allocatedQuantity'),
    'oldQuantity': FlatFilterPath([], 'oldQuantity'),
    'needAt': FlatFilterPath([], 'needAt'),
    'releaseAt': FlatFilterPath([], 'releaseAt'),
    'dueAt': FlatFilterPath([], 'dueAt'),
    'oldDueAt': FlatFilterPath([], 'oldDueAt'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'transUnrecognizedDetailId': FlatFilterPath([], 'transUnrecognizedDetailId'),
    'transResourcePlanId': FlatFilterPath([], 'transResourcePlanId'),
    'parentTransOperationsPlanId': FlatFilterPath([], 'parentTransOperationsPlanId'),
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'transOperationsPlanId': FlatFilterPath([], 'transOperationsPlanId'),
    'stakeholderHistoryId': FlatFilterPath([], 'stakeholderHistoryId'),
    'stakeholderId': FlatFilterPath([], 'stakeholderId'),
    'cost': FlatFilterPath([], 'cost'),
    'askingPrice': FlatFilterPath([], 'askingPrice'),
    'transMrpSuggestionTaskId': FlatFilterPath([], 'transMrpSuggestionTaskId'),
    'mstrOutsourceAvailableHistoryId': FlatFilterPath([], 'mstrOutsourceAvailableHistoryId'),
    'mstrOutsourceAvailableId': FlatFilterPath([], 'mstrOutsourceAvailableId'),
    'mstrEquipmentId': FlatFilterPath([], 'mstrEquipmentId'),
    'loadDate': FlatFilterPath([], 'loadDate'),
    'message': FlatFilterPath([], 'message'),
    'appliedAt': FlatFilterPath([], 'appliedAt'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
