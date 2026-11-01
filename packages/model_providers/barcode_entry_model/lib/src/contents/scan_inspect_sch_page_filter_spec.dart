// scan_inspect_sch_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/scan_inspect_sch_page/scan_inspect_sch_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ScanInspectSchPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ScanInspectSchPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransInspectSchFilter', {
    'transInspectSchId': FlatFilterPath([], 'transInspectSchId'),
    'code': FlatFilterPath([], 'code'),
    'equipmentHistoryId': FlatFilterPath([], 'equipmentHistoryId'),
    'equipmentId': FlatFilterPath([], 'equipmentId'),
    'symbol': FlatFilterPath([], 'symbol'),
  });
}
