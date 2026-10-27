// spec_measurement_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/spec_measurement_page/spec_measurement_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(SpecMeasurementPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class SpecMeasurementPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrSpecMeasurementFilter', {
    'mstrSpecMeasurementId': FlatFilterPath([], 'mstrSpecMeasurementId'),
    'measurementValue': FlatFilterPath([], 'measurementValue'),
    'unit||sharedUnitId': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId')], 'sharedUnitId'),
    'unit||labels||sharedAppellationsId': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'unit||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'unit||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'unit||labels||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryPronunciationId')], 'sharedDictionaryId'),
    'unit||labels||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'unit||labels||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNicknameId')], 'sharedDictionaryId'),
    'unit||labels||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNicknameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
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
