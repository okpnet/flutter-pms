// inspection_status_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/inspection_status_page/inspection_status_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(InspectionStatusPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class InspectionStatusPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VInspectionStatusFilter', {
    'mstrEquipmentId': FlatFilterPath([], 'mstrEquipmentId'),
    'supplierId': FlatFilterPath([], 'supplierId'),
    'isImplemented': FlatFilterPath([], 'isImplemented'),
    'result': FlatFilterPath([], 'result'),
    'scheduleDetailCount': FlatFilterPath([], 'scheduleDetailCount'),
    'overdueCount': FlatFilterPath([], 'overdueCount'),
    'nextScheduledStartDate': FlatFilterPath([], 'nextScheduledStartDate'),
    'lastImplementDate': FlatFilterPath([], 'lastImplementDate'),
  });
}
