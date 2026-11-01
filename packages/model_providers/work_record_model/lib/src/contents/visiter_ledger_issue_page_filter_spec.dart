// visiter_ledger_issue_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/visiter_ledger_issue_page/visiter_ledger_issue_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(VisiterLedgerIssuePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class VisiterLedgerIssuePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VVisiterLedgerIssueFilter', {
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'issueKind': FlatFilterPath([], 'issueKind'),
    'rowQuantity': FlatFilterPath([], 'rowQuantity'),
    'balance': FlatFilterPath([], 'balance'),
    'parentTransVisiterId': FlatFilterPath([], 'parentTransVisiterId'),
    'transContainerId': FlatFilterPath([], 'transContainerId'),
  });
}
