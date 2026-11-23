// approval_scope_ledger_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/approval_scope_ledger_page/approval_scope_ledger_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ApprovalScopeLedgerPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ApprovalScopeLedgerPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrApprovalScopePatternFilter', {
    'mstrApprovalScopePatternId': FlatFilterPath([], 'mstrApprovalScopePatternId'),
    'mstrApprovalPatternId': FlatFilterPath([], 'mstrApprovalPatternId'),
    'infoAccessPathApprovalId': FlatFilterPath([], 'infoAccessPathApprovalId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
