// manual_approval_style_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/manual_approval_style_page/manual_approval_style_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ManualApprovalStylePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ManualApprovalStylePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransApprovalPatternFilter', {
    'transApprovalPatternId': FlatFilterPath([], 'transApprovalPatternId'),
    'mstrApprovalPatternId': FlatFilterPath([], 'mstrApprovalPatternId'),
    'pattern||mstrApprovalPatternId': FlatFilterPath([FilterStep('mstrApprovalPatternByMstrApprovalPatternId')], 'mstrApprovalPatternId'),
    'pattern||stampStyle': FlatFilterPath([FilterStep('mstrApprovalPatternByMstrApprovalPatternId')], 'stampStyle'),
  });
}
