// staff_count_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/staff_count_page/staff_count_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(StaffCountPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class StaffCountPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VStaffCountFilter', {
    'infoCompanyId': FlatFilterPath([], 'infoCompanyId'),
    'infoDepartmentId': FlatFilterPath([], 'infoDepartmentId'),
    'infoPositionId': FlatFilterPath([], 'infoPositionId'),
    'staffCount': FlatFilterPath([], 'staffCount'),
    'assignCount': FlatFilterPath([], 'assignCount'),
  });
}
