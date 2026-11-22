// audit_detail_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/audit_detail_page/audit_detail_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(AuditDetailPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class AuditDetailPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransAuditDetailFilter', {
    'transAuditDetailsId': FlatFilterPath([], 'transAuditDetailsId'),
    'transAuditId': FlatFilterPath([], 'transAuditId'),
    'auditStdHistoryId': FlatFilterPath([], 'auditStdHistoryId'),
    'auditStdId': FlatFilterPath([], 'auditStdId'),
    'transAuditTeamId': FlatFilterPath([], 'transAuditTeamId'),
    'labels||transLabelId': FlatFilterPath([FilterStep('transLabelByNames')], 'transLabelId'),
    'labels||value||labelValue': FlatFilterPath([FilterStep('transLabelByNames'), FilterStep.many('transLabelValuesByTransLabelId', {'sharedLanguageCodeId': 'languageCodeId'})], 'labelValue'),
    'conclusionText||transTextId': FlatFilterPath([FilterStep('transTextByConclusion')], 'transTextId'),
    'conclusionText||value||textValue': FlatFilterPath([FilterStep('transTextByConclusion'), FilterStep.many('transTextValuesByTransTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'textValue'),
    'audit||transAuditId': FlatFilterPath([FilterStep('transAuditByTransAuditId')], 'transAuditId'),
    'audit||labels||transLabelId': FlatFilterPath([FilterStep('transAuditByTransAuditId'), FilterStep('transLabelByTitles')], 'transLabelId'),
    'audit||labels||value||labelValue': FlatFilterPath([FilterStep('transAuditByTransAuditId'), FilterStep('transLabelByTitles'), FilterStep.many('transLabelValuesByTransLabelId', {'sharedLanguageCodeId': 'languageCodeId'})], 'labelValue'),
    'team||transAuditTeamId': FlatFilterPath([FilterStep('transAuditTeamByTransAuditTeamIdAndTransAuditId')], 'transAuditTeamId'),
    'team||labels||transLabelId': FlatFilterPath([FilterStep('transAuditTeamByTransAuditTeamIdAndTransAuditId'), FilterStep('transLabelByNames')], 'transLabelId'),
    'team||labels||value||labelValue': FlatFilterPath([FilterStep('transAuditTeamByTransAuditTeamIdAndTransAuditId'), FilterStep('transLabelByNames'), FilterStep.many('transLabelValuesByTransLabelId', {'sharedLanguageCodeId': 'languageCodeId'})], 'labelValue'),
    'scheduledAt': FlatFilterPath([], 'scheduledAt'),
    'expectedEndAt': FlatFilterPath([], 'expectedEndAt'),
    'performedDate': FlatFilterPath([], 'performedDate'),
    'endedAt': FlatFilterPath([], 'endedAt'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
