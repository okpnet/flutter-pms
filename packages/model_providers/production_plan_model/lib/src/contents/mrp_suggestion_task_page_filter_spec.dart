// mrp_suggestion_task_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/mrp_suggestion_task_page/mrp_suggestion_task_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(MrpSuggestionTaskPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class MrpSuggestionTaskPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransMrpSuggestionTaskFilter', {
    'transMrpSuggestionTaskId': FlatFilterPath([], 'transMrpSuggestionTaskId'),
    'transMrpSuggestionId': FlatFilterPath([], 'transMrpSuggestionId'),
    'transWorkPlanId': FlatFilterPath([], 'transWorkPlanId'),
    'mstrTaskId': FlatFilterPath([], 'mstrTaskId'),
    'sequence': FlatFilterPath([], 'sequence'),
    'mstrEquipmentAvailableHistoryId': FlatFilterPath([], 'mstrEquipmentAvailableHistoryId'),
    'mstrEquipmentAvailableId': FlatFilterPath([], 'mstrEquipmentAvailableId'),
    'mstrOutsourceAvailableHistoryId': FlatFilterPath([], 'mstrOutsourceAvailableHistoryId'),
    'mstrOutsourceAvailableId': FlatFilterPath([], 'mstrOutsourceAvailableId'),
    'outsourceTransMrpSuggestionId': FlatFilterPath([], 'outsourceTransMrpSuggestionId'),
    'cost': FlatFilterPath([], 'cost'),
    'startAt': FlatFilterPath([], 'startAt'),
    'completionAt': FlatFilterPath([], 'completionAt'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
