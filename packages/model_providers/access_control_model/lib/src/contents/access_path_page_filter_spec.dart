// access_path_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/access_path_page/access_path_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(AccessPathPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class AccessPathPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('InfoAccessPathFilter', {
    'infoAccessPathId': FlatFilterPath([], 'infoAccessPathId'),
    'infoAppId': FlatFilterPath([], 'infoAppId'),
    'labels||sharedAppellationsId': FlatFilterPath([
      FilterStep('sharedAppellationByNames'),
    ], 'sharedAppellationsId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'labels||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'labels||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'usecasePath': FlatFilterPath([], 'usecasePath'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'department_access_path_count||infoAccessPathId': FlatFilterPath([
      FilterStep('vAccessPathDepartmentAccessPathCountByInfoAccessPathId'),
    ], 'infoAccessPathId'),
    'report_count||infoAccessPathId': FlatFilterPath([
      FilterStep('vAccessPathReportCountByInfoAccessPathId'),
    ], 'infoAccessPathId'),
    'staff_access_permission_count||infoAccessPathId': FlatFilterPath([
      FilterStep('vAccessPathStaffAccessPermissionCountByInfoAccessPathId'),
    ], 'infoAccessPathId'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
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
  });
}
