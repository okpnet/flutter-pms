// scan_location_history_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/scan_location_history_page/scan_location_history_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ScanLocationHistoryPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ScanLocationHistoryPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('HistoryMstrLocationFilter', {
    'historyId': FlatFilterPath([], 'historyId'),
    'mstrLocationId': FlatFilterPath([], 'mstrLocationId'),
    'revision': FlatFilterPath([], 'revision'),
  });
}
