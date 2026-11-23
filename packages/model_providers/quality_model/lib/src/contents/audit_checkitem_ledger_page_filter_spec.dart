// audit_checkitem_ledger_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/audit_checkitem_ledger_page/audit_checkitem_ledger_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(AuditCheckitemLedgerPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class AuditCheckitemLedgerPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrAuditStdCheckitemFilter', {
    'mstrAuditStdCheckitemId': FlatFilterPath([], 'mstrAuditStdCheckitemId'),
    'mstrAuditStdId': FlatFilterPath([], 'mstrAuditStdId'),
    'code': FlatFilterPath([], 'code'),
    'controlCode': FlatFilterPath([], 'controlCode'),
    'labels||sharedAppellationsId': FlatFilterPath([FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'labels||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryPronunciationId')], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'labels||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNicknameId')], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNicknameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'detailTexts||sharedTextId': FlatFilterPath([FilterStep('sharedTextByDetails')], 'sharedTextId'),
    'detailTexts||value||charCount': FlatFilterPath([FilterStep('sharedTextByDetails'), FilterStep.many('sharedTextValuesBySharedTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'charCount'),
    'detailTexts||value||leadText': FlatFilterPath([FilterStep('sharedTextByDetails'), FilterStep.many('sharedTextValuesBySharedTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'leadText'),
    'typeClass': FlatFilterPath([], 'typeClass'),
    'formulaClass': FlatFilterPath([], 'formulaClass'),
    'argClass': FlatFilterPath([], 'argClass'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
