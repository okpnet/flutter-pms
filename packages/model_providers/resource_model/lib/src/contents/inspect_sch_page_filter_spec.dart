// inspect_sch_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/inspect_sch_page/inspect_sch_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(InspectSchPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class InspectSchPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransInspectSchFilter', {
    'transInspectSchId': FlatFilterPath([], 'transInspectSchId'),
    'code': FlatFilterPath([], 'code'),
    'labels||transLabelId': FlatFilterPath([FilterStep('transLabelByTitles')], 'transLabelId'),
    'labels||value||labelValue': FlatFilterPath([FilterStep('transLabelByTitles'), FilterStep.many('transLabelValuesByTransLabelId', {'sharedLanguageCodeId': 'languageCodeId'})], 'labelValue'),
    'equipmentHistoryId': FlatFilterPath([], 'equipmentHistoryId'),
    'equipmentId': FlatFilterPath([], 'equipmentId'),
    'requirementTexts||transTextId': FlatFilterPath([FilterStep('transTextByRequirements')], 'transTextId'),
    'requirementTexts||value||charCount': FlatFilterPath([FilterStep('transTextByRequirements'), FilterStep.many('transTextValuesByTransTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'charCount'),
    'requirementTexts||value||leadText': FlatFilterPath([FilterStep('transTextByRequirements'), FilterStep.many('transTextValuesByTransTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'leadText'),
    'attentionTexts||transTextId': FlatFilterPath([FilterStep('transTextByAttentions')], 'transTextId'),
    'attentionTexts||value||charCount': FlatFilterPath([FilterStep('transTextByAttentions'), FilterStep.many('transTextValuesByTransTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'charCount'),
    'attentionTexts||value||leadText': FlatFilterPath([FilterStep('transTextByAttentions'), FilterStep.many('transTextValuesByTransTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'leadText'),
    'recommendationTexts||transTextId': FlatFilterPath([FilterStep('transTextByRecommendations')], 'transTextId'),
    'recommendationTexts||value||charCount': FlatFilterPath([FilterStep('transTextByRecommendations'), FilterStep.many('transTextValuesByTransTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'charCount'),
    'recommendationTexts||value||leadText': FlatFilterPath([FilterStep('transTextByRecommendations'), FilterStep.many('transTextValuesByTransTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'leadText'),
    'inspectionOperationHistoryId': FlatFilterPath([], 'inspectionOperationHistoryId'),
    'inspectionOperationId': FlatFilterPath([], 'inspectionOperationId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'inspect_sch_detail_count||transInspectSchId': FlatFilterPath([FilterStep('vInspectSchInspectSchDetailCountByTransInspectSchId')], 'transInspectSchId'),
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
