// mrp_run_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/mrp_run_page/mrp_run_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(MrpRunPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class MrpRunPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransMrpRunFilter', {
    'transMrpRunId': FlatFilterPath([], 'transMrpRunId'),
    'runMode': FlatFilterPath([], 'runMode'),
    'status': FlatFilterPath([], 'status'),
    'runAt': FlatFilterPath([], 'runAt'),
    'committedAt': FlatFilterPath([], 'committedAt'),
    'staffHistoryId': FlatFilterPath([], 'staffHistoryId'),
    'staffId': FlatFilterPath([], 'staffId'),
    'params': FlatFilterPath([], 'params'),
    'suggestionCount': FlatFilterPath([], 'suggestionCount'),
    'pendingCount': FlatFilterPath([], 'pendingCount'),
    'lateCount': FlatFilterPath([], 'lateCount'),
    'overloadCount': FlatFilterPath([], 'overloadCount'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
