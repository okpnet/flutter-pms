// approval_defaults_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/approval_defaults_page/approval_defaults_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ApprovalDefaultsPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ApprovalDefaultsPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('InfoAppFilter', {
    'infoAppId': FlatFilterPath([], 'infoAppId'),
    'documentApprovalPatternId': FlatFilterPath([], 'documentApprovalPatternId'),
    'orderApprovalPatternId': FlatFilterPath([], 'orderApprovalPatternId'),
    'purchaseApprovalPatternId': FlatFilterPath([], 'purchaseApprovalPatternId'),
    'unrecognizedApprovalPatternId': FlatFilterPath([], 'unrecognizedApprovalPatternId'),
    'shippingOrderApprovalPatternId': FlatFilterPath([], 'shippingOrderApprovalPatternId'),
    'complaintApprovalPatternId': FlatFilterPath([], 'complaintApprovalPatternId'),
    'disposalApprovalPatternId': FlatFilterPath([], 'disposalApprovalPatternId'),
    'recurrencePreventionApprovalPatternId': FlatFilterPath([], 'recurrencePreventionApprovalPatternId'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
