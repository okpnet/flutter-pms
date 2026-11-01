// scan_inspect_sch_detail_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/scan_inspect_sch_detail_page/scan_inspect_sch_detail_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ScanInspectSchDetailPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ScanInspectSchDetailPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransInspectSchDetailFilter', {
    'transInspectSchDetailId': FlatFilterPath([], 'transInspectSchDetailId'),
    'transInspectSchId': FlatFilterPath([], 'transInspectSchId'),
    'scheduledStartDate': FlatFilterPath([], 'scheduledStartDate'),
    'scheduledEndDate': FlatFilterPath([], 'scheduledEndDate'),
    'inspectionHistoryId': FlatFilterPath([], 'inspectionHistoryId'),
    'inspectionId': FlatFilterPath([], 'inspectionId'),
    'inspectionFormulaHistoryId': FlatFilterPath([], 'inspectionFormulaHistoryId'),
    'inspectionFormulaId': FlatFilterPath([], 'inspectionFormulaId'),
    'inspectionKindHistoryId': FlatFilterPath([], 'inspectionKindHistoryId'),
    'inspectionKindId': FlatFilterPath([], 'inspectionKindId'),
    'inspectionOperationTaskHistoryId': FlatFilterPath([], 'inspectionOperationTaskHistoryId'),
    'inspectionOperationTaskId': FlatFilterPath([], 'inspectionOperationTaskId'),
    'symbol': FlatFilterPath([], 'symbol'),
  });
}
