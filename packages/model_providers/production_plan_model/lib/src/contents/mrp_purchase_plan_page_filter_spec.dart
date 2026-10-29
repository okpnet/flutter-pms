// mrp_purchase_plan_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/mrp_purchase_plan_page/mrp_purchase_plan_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(MrpPurchasePlanPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class MrpPurchasePlanPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VMrpPurchasePlanFilter', {
    'planKey': FlatFilterPath([], 'planKey'),
    'transMrpRunId': FlatFilterPath([], 'transMrpRunId'),
    'kind': FlatFilterPath([], 'kind'),
    'stakeholderId': FlatFilterPath([], 'stakeholderId'),
    'releaseDate': FlatFilterPath([], 'releaseDate'),
    'dueDate': FlatFilterPath([], 'dueDate'),
    'lineCount': FlatFilterPath([], 'lineCount'),
    'amount': FlatFilterPath([], 'amount'),
    'lateCount': FlatFilterPath([], 'lateCount'),
    'pendingCount': FlatFilterPath([], 'pendingCount'),
  });
}
