// complaint_target_visiter_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/complaint_target_visiter_page/complaint_target_visiter_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ComplaintTargetVisiterPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ComplaintTargetVisiterPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VComplaintTargetVisiterFilter', {
    'complaintTargetVisiterKey': FlatFilterPath([], 'complaintTargetVisiterKey'),
    'transComplaintId': FlatFilterPath([], 'transComplaintId'),
    'targetKind': FlatFilterPath([], 'targetKind'),
    'targetLinkId': FlatFilterPath([], 'targetLinkId'),
    'transPurchaseRecId': FlatFilterPath([], 'transPurchaseRecId'),
    'transWorkRecordId': FlatFilterPath([], 'transWorkRecordId'),
    'complaintQuantity': FlatFilterPath([], 'complaintQuantity'),
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'visiterQuantity': FlatFilterPath([], 'visiterQuantity'),
    'release': FlatFilterPath([], 'release'),
    'transComplaintVisiterId': FlatFilterPath([], 'transComplaintVisiterId'),
    'linked': FlatFilterPath([], 'linked'),
    'releaseAt': FlatFilterPath([], 'releaseAt'),
    'visiterStatus': FlatFilterPath([], 'visiterStatus'),
  });
}
