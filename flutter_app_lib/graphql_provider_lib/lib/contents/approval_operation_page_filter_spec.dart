// approval_operation_page_filter_spec.dart
//
// このファイルはtool/gen_filter_spec.dartが生成した検索条件の対応表です。直接編集しないでください。
// lib/graphql/approval_operation_page/approval_operation_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ApprovalOperationPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import '../extensions/flat_filter_converter.dart';

abstract class ApprovalOperationPageFilterSpec {
  static const FlatFilterSpec
  spec = FlatFilterSpec('MstrApprovalPatternFilter', {
    'mstrApprovalPatternId': FlatFilterPath([], 'mstrApprovalPatternId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
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
    'pattern_detail||mstrApprovalPatternDetailId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
    ], 'mstrApprovalPatternDetailId'),
    'pattern_detail||mstrApprovalId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
    ], 'mstrApprovalId'),
    'pattern_detail||mstrApprovalPatternId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
    ], 'mstrApprovalPatternId'),
    'pattern_detail||symbol': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
    ], 'symbol'),
    'pattern_detail||remarks': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
    ], 'remarks'),
    'pattern_detail||updateAt': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
    ], 'updateAt'),
    'pattern_detail||remove': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
    ], 'remove'),
    'pattern_detail||approval||mstrApprovalId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
    ], 'mstrApprovalId'),
    'pattern_detail||approval||infoDepartmentId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
    ], 'infoDepartmentId'),
    'pattern_detail||approval||infoPositionId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
    ], 'infoPositionId'),
    'pattern_detail||approval||priority': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
    ], 'priority'),
    'pattern_detail||approval||symbol': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
    ], 'symbol'),
    'pattern_detail||approval||remarks': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
    ], 'remarks'),
    'pattern_detail||approval||updateAt': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
    ], 'updateAt'),
    'pattern_detail||approval||remove': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
    ], 'remove'),
    'pattern_detail||approval||labels||sharedAppellationsId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
      FilterStep('sharedAppellationByNames'),
    ], 'sharedAppellationsId'),
    'pattern_detail||approval||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'pattern_detail||approval||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'pattern_detail||approval||labels||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'pattern_detail||approval||labels||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'pattern_detail||approval||labels||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'pattern_detail||approval||labels||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'pattern_detail||approval||update_user||historyId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'historyId'),
    'pattern_detail||approval||update_user||infoStaffId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'infoStaffId'),
    'pattern_detail||approval||update_user||infoCompanyId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'infoCompanyId'),
    'pattern_detail||approval||update_user||code': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'code'),
    'pattern_detail||approval||update_user||sex': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'sex'),
    'pattern_detail||approval||update_user||phone': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'phone'),
    'pattern_detail||approval||update_user||symbol': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'symbol'),
    'pattern_detail||approval||update_user||privatePhone': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('mstrApprovalByMstrApprovalId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'privatePhone'),
    'pattern_detail||approval||update_user||name||sharedAppellationsId':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
        ], 'sharedAppellationsId'),
    'pattern_detail||approval||update_user||name||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'pattern_detail||approval||update_user||name||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'pattern_detail||approval||update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'pattern_detail||approval||update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'pattern_detail||approval||update_user||name||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'pattern_detail||approval||update_user||name||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('mstrApprovalByMstrApprovalId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'pattern_detail||update_user||historyId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'historyId'),
    'pattern_detail||update_user||infoStaffId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'infoStaffId'),
    'pattern_detail||update_user||infoCompanyId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'infoCompanyId'),
    'pattern_detail||update_user||code': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'code'),
    'pattern_detail||update_user||sex': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'sex'),
    'pattern_detail||update_user||phone': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'phone'),
    'pattern_detail||update_user||symbol': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'symbol'),
    'pattern_detail||update_user||privatePhone': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'privatePhone'),
    'pattern_detail||update_user||name||sharedAppellationsId': FlatFilterPath([
      FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
      FilterStep('sharedAppellationByNames'),
    ], 'sharedAppellationsId'),
    'pattern_detail||update_user||name||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'pattern_detail||update_user||name||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'pattern_detail||update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'pattern_detail||update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'pattern_detail||update_user||name||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'pattern_detail||update_user||name||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrApprovalPatternDetailsByMstrApprovalPatternId'),
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
