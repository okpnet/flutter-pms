// item_task_cost_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/item_task_cost_page/item_task_cost_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ItemTaskCostPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ItemTaskCostPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrItemTaskCostFilter', {
    'mstrItemTaskCostId': FlatFilterPath([], 'mstrItemTaskCostId'),
    'mstrItemId': FlatFilterPath([], 'mstrItemId'),
    'mstrTaskLocationId': FlatFilterPath([], 'mstrTaskLocationId'),
    'cost': FlatFilterPath([], 'cost'),
    'revision': FlatFilterPath([], 'revision'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
