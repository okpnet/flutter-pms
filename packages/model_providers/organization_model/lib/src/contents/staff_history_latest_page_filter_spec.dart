// staff_history_latest_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/staff_history_latest_page/staff_history_latest_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(StaffHistoryLatestPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class StaffHistoryLatestPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('HistoryInfoStaffFilter', {
    'historyId': FlatFilterPath([], 'historyId'),
    'infoStaffId': FlatFilterPath([], 'infoStaffId'),
    'revision': FlatFilterPath([], 'revision'),
  });
}
