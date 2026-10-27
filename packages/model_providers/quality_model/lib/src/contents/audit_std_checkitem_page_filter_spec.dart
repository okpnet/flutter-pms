// audit_std_checkitem_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/audit_std_checkitem_page/audit_std_checkitem_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(AuditStdCheckitemPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class AuditStdCheckitemPageFilterSpec {
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
    'update_user||historyId': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId')], 'historyId'),
    'update_user||infoStaffId': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId')], 'infoStaffId'),
    'update_user||infoCompanyId': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId')], 'infoCompanyId'),
    'update_user||code': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId')], 'code'),
    'update_user||name||sharedAppellationsId': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'update_user||name||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'update_user||name||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryPronunciationId')], 'sharedDictionaryId'),
    'update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'update_user||name||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNicknameId')], 'sharedDictionaryId'),
    'update_user||name||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNicknameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'update_user||sex': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId')], 'sex'),
    'update_user||phone': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId')], 'phone'),
    'update_user||symbol': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId')], 'symbol'),
    'update_user||privatePhone': FlatFilterPath([FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId')], 'privatePhone'),
  });
}
