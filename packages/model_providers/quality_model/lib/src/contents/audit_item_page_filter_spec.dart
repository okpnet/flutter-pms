// audit_item_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/audit_item_page/audit_item_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(AuditItemPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class AuditItemPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransAuditDetailCheckItemFilter', {
    'transAuditDetailCheckItemsId': FlatFilterPath([], 'transAuditDetailCheckItemsId'),
    'transAuditDetailsId': FlatFilterPath([], 'transAuditDetailsId'),
    'auditStdCheckitemHistoryId': FlatFilterPath([], 'auditStdCheckitemHistoryId'),
    'auditStdCheckitemId': FlatFilterPath([], 'auditStdCheckitemId'),
    'formulaValue': FlatFilterPath([], 'formulaValue'),
    'findingsText||transTextId': FlatFilterPath([FilterStep('transTextByFindings')], 'transTextId'),
    'findingsText||value||textValue': FlatFilterPath([FilterStep('transTextByFindings'), FilterStep.many('transTextValuesByTransTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'textValue'),
    'standard||historyId': FlatFilterPath([FilterStep('historyMstrAuditStdCheckitemByAuditStdCheckitemHistoryIdAndAuditStdCheckitemId')], 'historyId'),
    'standard||mstrAuditStdCheckitemId': FlatFilterPath([FilterStep('historyMstrAuditStdCheckitemByAuditStdCheckitemHistoryIdAndAuditStdCheckitemId')], 'mstrAuditStdCheckitemId'),
    'standard||code': FlatFilterPath([FilterStep('historyMstrAuditStdCheckitemByAuditStdCheckitemHistoryIdAndAuditStdCheckitemId')], 'code'),
    'standard||typeClass': FlatFilterPath([FilterStep('historyMstrAuditStdCheckitemByAuditStdCheckitemHistoryIdAndAuditStdCheckitemId')], 'typeClass'),
    'standard||formulaClass': FlatFilterPath([FilterStep('historyMstrAuditStdCheckitemByAuditStdCheckitemHistoryIdAndAuditStdCheckitemId')], 'formulaClass'),
    'standard||argClass': FlatFilterPath([FilterStep('historyMstrAuditStdCheckitemByAuditStdCheckitemHistoryIdAndAuditStdCheckitemId')], 'argClass'),
    'standard||master||mstrAuditStdCheckitemId': FlatFilterPath([FilterStep('historyMstrAuditStdCheckitemByAuditStdCheckitemHistoryIdAndAuditStdCheckitemId'), FilterStep('mstrAuditStdCheckitemByMstrAuditStdCheckitemId')], 'mstrAuditStdCheckitemId'),
    'standard||master||labels||sharedAppellationsId': FlatFilterPath([FilterStep('historyMstrAuditStdCheckitemByAuditStdCheckitemHistoryIdAndAuditStdCheckitemId'), FilterStep('mstrAuditStdCheckitemByMstrAuditStdCheckitemId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'standard||master||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('historyMstrAuditStdCheckitemByAuditStdCheckitemHistoryIdAndAuditStdCheckitemId'), FilterStep('mstrAuditStdCheckitemByMstrAuditStdCheckitemId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'standard||master||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('historyMstrAuditStdCheckitemByAuditStdCheckitemHistoryIdAndAuditStdCheckitemId'), FilterStep('mstrAuditStdCheckitemByMstrAuditStdCheckitemId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'complaints||transAuditComplaintId': FlatFilterPath([FilterStep.many('transAuditComplaintsByTransAuditDetailCheckItemsId')], 'transAuditComplaintId'),
    'complaints||transComplaintId': FlatFilterPath([FilterStep.many('transAuditComplaintsByTransAuditDetailCheckItemsId')], 'transComplaintId'),
    'complaints||complaint||transComplaintId': FlatFilterPath([FilterStep.many('transAuditComplaintsByTransAuditDetailCheckItemsId'), FilterStep('transComplaintByTransComplaintId')], 'transComplaintId'),
    'complaints||complaint||labels||transLabelId': FlatFilterPath([FilterStep.many('transAuditComplaintsByTransAuditDetailCheckItemsId'), FilterStep('transComplaintByTransComplaintId'), FilterStep('transLabelByTitles')], 'transLabelId'),
    'complaints||complaint||labels||value||labelValue': FlatFilterPath([FilterStep.many('transAuditComplaintsByTransAuditDetailCheckItemsId'), FilterStep('transComplaintByTransComplaintId'), FilterStep('transLabelByTitles'), FilterStep.many('transLabelValuesByTransLabelId', {'sharedLanguageCodeId': 'languageCodeId'})], 'labelValue'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
