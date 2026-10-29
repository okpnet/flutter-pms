// mrp_master_issue_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/mrp_master_issue_page/mrp_master_issue_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(MrpMasterIssuePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class MrpMasterIssuePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VMrpMasterIssueFilter', {
    'issueKey': FlatFilterPath([], 'issueKey'),
    'itemId': FlatFilterPath([], 'itemId'),
    'itemCode': FlatFilterPath([], 'itemCode'),
    'issueCode': FlatFilterPath([], 'issueCode'),
    'severity': FlatFilterPath([], 'severity'),
    'message': FlatFilterPath([], 'message'),
    'refTable': FlatFilterPath([], 'refTable'),
    'refId': FlatFilterPath([], 'refId'),
  });
}
