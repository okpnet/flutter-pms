// complaint_target_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/complaint_target_page/complaint_target_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ComplaintTargetPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ComplaintTargetPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VComplaintTargetFilter', {
    'targetLinkId': FlatFilterPath([], 'targetLinkId'),
    'transComplaintId': FlatFilterPath([], 'transComplaintId'),
    'targetKind': FlatFilterPath([], 'targetKind'),
    'transPurchaseRecId': FlatFilterPath([], 'transPurchaseRecId'),
    'transWorkRecordId': FlatFilterPath([], 'transWorkRecordId'),
    'transSupplyDetailId': FlatFilterPath([], 'transSupplyDetailId'),
    'complaintQuantity': FlatFilterPath([], 'complaintQuantity'),
    'visiterCount': FlatFilterPath([], 'visiterCount'),
    'visiterQuantity': FlatFilterPath([], 'visiterQuantity'),
    'linkedCount': FlatFilterPath([], 'linkedCount'),
    'openCount': FlatFilterPath([], 'openCount'),
    'missingCount': FlatFilterPath([], 'missingCount'),
    'missingIssuableCount': FlatFilterPath([], 'missingIssuableCount'),
    'missingEmptyCount': FlatFilterPath([], 'missingEmptyCount'),
  });
}
