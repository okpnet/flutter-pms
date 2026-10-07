// capable_staff_page_filter_spec.dart
//
// このファイルはtool/gen_filter_spec.dartが生成した検索条件の対応表です。直接編集しないでください。
// lib/graphql/capable_staff_page/capable_staff_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(CapableStaffPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import '../extensions/flat_filter_converter.dart';

abstract class CapableStaffPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrCapabilityFilter', {
    'mstrCapabilityId': FlatFilterPath([], 'mstrCapabilityId'),
    'code': FlatFilterPath([], 'code'),
    'detail': FlatFilterPath([], 'detail'),
    'referenceValue': FlatFilterPath([], 'referenceValue'),
    'max': FlatFilterPath([], 'max'),
    'min': FlatFilterPath([], 'min'),
    'step': FlatFilterPath([], 'step'),
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
    'staff_capability||mstrStaffCapabilityId': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
    ], 'mstrStaffCapabilityId'),
    'staff_capability||infoStaffId': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
    ], 'infoStaffId'),
    'staff_capability||mstrCapabilityId': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
    ], 'mstrCapabilityId'),
    'staff_capability||value': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
    ], 'value'),
    'staff_capability||stop': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
    ], 'stop'),
    'staff_capability||staff||infoStaffId': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
    ], 'infoStaffId'),
    'staff_capability||staff||infoCompanyId': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
    ], 'infoCompanyId'),
    'staff_capability||staff||code': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
    ], 'code'),
    'staff_capability||staff||sex': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
    ], 'sex'),
    'staff_capability||staff||phone': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
    ], 'phone'),
    'staff_capability||staff||privatePhone': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
    ], 'privatePhone'),
    'staff_capability||staff||symbol': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
    ], 'symbol'),
    'staff_capability||staff||remarks': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
    ], 'remarks'),
    'staff_capability||staff||updateAt': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
    ], 'updateAt'),
    'staff_capability||staff||remove': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
    ], 'remove'),
    'staff_capability||staff||labels||sharedAppellationsId': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('sharedAppellationByNames'),
    ], 'sharedAppellationsId'),
    'staff_capability||staff||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'staff_capability||staff||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'staff_capability||staff||labels||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'staff_capability||staff||labels||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'staff_capability||staff||labels||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'staff_capability||staff||labels||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'staff_capability||staff||update_user||historyId': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'historyId'),
    'staff_capability||staff||update_user||infoStaffId': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'infoStaffId'),
    'staff_capability||staff||update_user||infoCompanyId': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'infoCompanyId'),
    'staff_capability||staff||update_user||code': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'code'),
    'staff_capability||staff||update_user||sex': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'sex'),
    'staff_capability||staff||update_user||phone': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'phone'),
    'staff_capability||staff||update_user||symbol': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'symbol'),
    'staff_capability||staff||update_user||privatePhone': FlatFilterPath([
      FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
      FilterStep('infoStaffByInfoStaffId'),
      FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
    ], 'privatePhone'),
    'staff_capability||staff||update_user||name||sharedAppellationsId':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
        ], 'sharedAppellationsId'),
    'staff_capability||staff||update_user||name||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'staff_capability||staff||update_user||name||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'staff_capability||staff||update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'staff_capability||staff||update_user||name||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'staff_capability||staff||update_user||name||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
          FilterStep('infoStaffByInfoStaffId'),
          FilterStep('historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'),
          FilterStep('sharedAppellationByNames'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'staff_capability||staff||update_user||name||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep.many('mstrStaffCapabilitiesByMstrCapabilityId'),
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
