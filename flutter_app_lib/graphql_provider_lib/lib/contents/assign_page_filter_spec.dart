// assign_page_filter_spec.dart
//
// このファイルはtool/gen_filter_spec.dartが生成した検索条件の対応表です。直接編集しないでください。
// lib/graphql/assign_page/assign_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(AssignPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import '../extensions/flat_filter_converter.dart';

abstract class AssignPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('InfoAssignFilter', {
    'infoAssignId': FlatFilterPath([], 'infoAssignId'),
    'infoPositionId': FlatFilterPath([], 'infoPositionId'),
    'infoOfficeId': FlatFilterPath([], 'infoOfficeId'),
    'infoDepartmentId': FlatFilterPath([], 'infoDepartmentId'),
    'enable': FlatFilterPath([], 'enable'),
    'priority': FlatFilterPath([], 'priority'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
    'staff||infoStaffId': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
    ], 'infoStaffId'),
    'staff||infoCompanyId': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
    ], 'infoCompanyId'),
    'staff||code': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
    ], 'code'),
    'staff||sex': FlatFilterPath([FilterStep('infoStaffByInfoStaffId')], 'sex'),
    'staff||phone': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
    ], 'phone'),
    'staff||privatePhone': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
    ], 'privatePhone'),
    'staff||symbol': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
    ], 'symbol'),
    'staff||remarks': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
    ], 'remarks'),
    'staff||updateAt': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
    ], 'updateAt'),
    'staff||remove': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
    ], 'remove'),
    'staff||labels||sharedAppellationsId': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('sharedAppellationByNames'),
    ], 'sharedAppellationsId'),
    'staff||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'staff||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'staff||labels||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'staff||labels||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'staff||labels||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'staff||labels||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'staff||update_user||historyId': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'historyId'),
    'staff||update_user||infoStaffId': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'infoStaffId'),
    'staff||update_user||infoCompanyId': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'infoCompanyId'),
    'staff||update_user||code': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'code'),
    'staff||update_user||sex': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'sex'),
    'staff||update_user||phone': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'phone'),
    'staff||update_user||symbol': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'symbol'),
    'staff||update_user||privatePhone': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'privatePhone'),
    'staff||update_user||name||sharedAppellationsId': FlatFilterPath([
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
      FilterStep('sharedAppellationByNames'),
    ], 'sharedAppellationsId'),
    'staff||update_user||name||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'staff||update_user||name||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'staff||update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'staff||update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'staff||update_user||name||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'staff||update_user||name||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'update_user||historyId': FlatFilterPath([
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'historyId'),
    'update_user||infoStaffId': FlatFilterPath([
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'infoStaffId'),
    'update_user||infoCompanyId': FlatFilterPath([
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'infoCompanyId'),
    'update_user||code': FlatFilterPath([
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'code'),
    'update_user||sex': FlatFilterPath([
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'sex'),
    'update_user||phone': FlatFilterPath([
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'phone'),
    'update_user||symbol': FlatFilterPath([
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'symbol'),
    'update_user||privatePhone': FlatFilterPath([
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'privatePhone'),
    'update_user||name||sharedAppellationsId': FlatFilterPath([
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
      FilterStep('sharedAppellationByNames'),
    ], 'sharedAppellationsId'),
    'update_user||name||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'update_user||name||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'update_user||name||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'update_user||name||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
  });
}
