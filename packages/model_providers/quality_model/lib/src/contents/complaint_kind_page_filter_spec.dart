// complaint_kind_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/complaint_kind_page/complaint_kind_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ComplaintKindPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ComplaintKindPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VComplaintKindFilter', {
    'complaintKindId': FlatFilterPath([], 'complaintKindId'),
    'transComplaintId': FlatFilterPath([], 'transComplaintId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'occurentAt': FlatFilterPath([], 'occurentAt'),
    'titles': FlatFilterPath([], 'titles'),
    'details': FlatFilterPath([], 'details'),
    'approvals': FlatFilterPath([], 'approvals'),
    'reporterStaffId': FlatFilterPath([], 'reporterStaffId'),
    'remarks': FlatFilterPath([], 'remarks'),
    'kindSymbol': FlatFilterPath([], 'kindSymbol'),
    'kindName': FlatFilterPath([], 'kindName'),
    'isExternal': FlatFilterPath([], 'isExternal'),
    'isClaim': FlatFilterPath([], 'isClaim'),
    'stakeholderId': FlatFilterPath([], 'stakeholderId'),
    'transOrderId': FlatFilterPath([], 'transOrderId'),
    'mstrEquipmentId': FlatFilterPath([], 'mstrEquipmentId'),
    'mstrTaskId': FlatFilterPath([], 'mstrTaskId'),
    'transPurchaseRecId': FlatFilterPath([], 'transPurchaseRecId'),
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
  });
}
