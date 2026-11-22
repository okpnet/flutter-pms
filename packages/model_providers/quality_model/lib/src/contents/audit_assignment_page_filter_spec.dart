// audit_assignment_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/audit_assignment_page/audit_assignment_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(AuditAssignmentPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class AuditAssignmentPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VAuditAssignmentFilter', {
    'transAuditorId': FlatFilterPath([], 'transAuditorId'),
    'staffId': FlatFilterPath([], 'staffId'),
    'transAuditDetailsId': FlatFilterPath([], 'transAuditDetailsId'),
    'transAuditId': FlatFilterPath([], 'transAuditId'),
    'transAuditTeamId': FlatFilterPath([], 'transAuditTeamId'),
    'auditStdId': FlatFilterPath([], 'auditStdId'),
    'scheduledAt': FlatFilterPath([], 'scheduledAt'),
    'expectedEndAt': FlatFilterPath([], 'expectedEndAt'),
    'performedDate': FlatFilterPath([], 'performedDate'),
    'endedAt': FlatFilterPath([], 'endedAt'),
    'isPlanned': FlatFilterPath([], 'isPlanned'),
    'isInProgress': FlatFilterPath([], 'isInProgress'),
    'isDone': FlatFilterPath([], 'isDone'),
    'isOverdue': FlatFilterPath([], 'isOverdue'),
    'itemCount': FlatFilterPath([], 'itemCount'),
    'answeredCount': FlatFilterPath([], 'answeredCount'),
    'complaintCount': FlatFilterPath([], 'complaintCount'),
    'statusLabelJa': FlatFilterPath([], 'statusLabelJa'),
    'statusLabelEn': FlatFilterPath([], 'statusLabelEn'),
    'symbol': FlatFilterPath([], 'symbol'),
  });
}
