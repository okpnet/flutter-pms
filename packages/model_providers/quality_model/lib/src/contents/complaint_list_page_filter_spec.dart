// complaint_list_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/complaint_list_page/complaint_list_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ComplaintListPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ComplaintListPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VComplaintFilter', {
    'transComplaintId': FlatFilterPath([], 'transComplaintId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'occurentAt': FlatFilterPath([], 'occurentAt'),
    'titles': FlatFilterPath([], 'titles'),
    'details': FlatFilterPath([], 'details'),
    'reporterStaffId': FlatFilterPath([], 'reporterStaffId'),
    'kindCount': FlatFilterPath([], 'kindCount'),
    'hasEquipment': FlatFilterPath([], 'hasEquipment'),
    'hasProcess': FlatFilterPath([], 'hasProcess'),
    'hasWork': FlatFilterPath([], 'hasWork'),
    'hasPurchaseRec': FlatFilterPath([], 'hasPurchaseRec'),
    'hasVisiter': FlatFilterPath([], 'hasVisiter'),
    'hasOrder': FlatFilterPath([], 'hasOrder'),
    'hasStakeholder': FlatFilterPath([], 'hasStakeholder'),
    'isExternal': FlatFilterPath([], 'isExternal'),
    'isClaim': FlatFilterPath([], 'isClaim'),
    'kindNames': FlatFilterPath([], 'kindNames'),
    'remarks': FlatFilterPath([], 'remarks'),
  });
}
