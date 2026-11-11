// staff_effective_access_path_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/staff_effective_access_path_page/staff_effective_access_path_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(StaffEffectiveAccessPathPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class StaffEffectiveAccessPathPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VStaffEffectiveAccessPathFilter', {
    'infoStaffId': FlatFilterPath([], 'infoStaffId'),
    'staffCode': FlatFilterPath([], 'staffCode'),
    'staffSymbol': FlatFilterPath([], 'staffSymbol'),
    'infoAccessPathId': FlatFilterPath([], 'infoAccessPathId'),
    'accessPathSymbol': FlatFilterPath([], 'accessPathSymbol'),
    'usecasePath': FlatFilterPath([], 'usecasePath'),
    'infoAppId': FlatFilterPath([], 'infoAppId'),
    'canWrite': FlatFilterPath([], 'canWrite'),
    'fromDepartment': FlatFilterPath([], 'fromDepartment'),
    'fromStaff': FlatFilterPath([], 'fromStaff'),
  });
}
