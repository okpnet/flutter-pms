// office_page_filter_spec.dart
//
// このファイルはtool/gen_filter_spec.dartが生成した検索条件の対応表です。直接編集しないでください。
// lib/graphql/office_page/office_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(OfficePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import '../extensions/flat_filter_converter.dart';

abstract class OfficePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('InfoOfficeFilter', {
    'infoOfficeId': FlatFilterPath([], 'infoOfficeId'),
    'infoCompanyId': FlatFilterPath([], 'infoCompanyId'),
    'code': FlatFilterPath([], 'code'),
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
    'address||infoAddressId': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
    ], 'infoAddressId'),
    'address||iso31663': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
    ], 'iso31663'),
    'address||zipCode': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
    ], 'zipCode'),
    'address||address1||sharedAppellationsId': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
      FilterStep('sharedAppellationByAddress1'),
    ], 'sharedAppellationsId'),
    'address||address1||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress1'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'address||address1||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress1'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'address||address1||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress1'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'address||address1||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress1'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'address||address1||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress1'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'address||address1||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress1'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'address||address2||sharedAppellationsId': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
      FilterStep('sharedAppellationByAddress2'),
    ], 'sharedAppellationsId'),
    'address||address2||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress2'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'address||address2||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress2'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'address||address2||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress2'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'address||address2||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress2'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'address||address2||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress2'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'address||address2||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByAddress2'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'address||billName||sharedAppellationsId': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
      FilterStep('sharedAppellationByBill'),
    ], 'sharedAppellationsId'),
    'address||billName||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByBill'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
        ], 'sharedDictionaryId'),
    'address||billName||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByBill'),
          FilterStep('sharedDictionaryBySharedDictionaryNameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'address||billName||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByBill'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
        ], 'sharedDictionaryId'),
    'address||billName||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByBill'),
          FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'address||billName||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByBill'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
        ], 'sharedDictionaryId'),
    'address||billName||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue':
        FlatFilterPath([
          FilterStep('infoAddressByInfoAddressId'),
          FilterStep('sharedAppellationByBill'),
          FilterStep('sharedDictionaryBySharedDictionaryNicknameId'),
          FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {
            'sharedLanguageCodeId': 'languageCodeId',
          }),
        ], 'dictionaryValue'),
    'address||phone': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
    ], 'phone'),
    'address||faxNumber': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
    ], 'faxNumber'),
    'address||remarks': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
    ], 'remarks'),
    'address||updateAt': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
    ], 'updateAt'),
    'address||remove': FlatFilterPath([
      FilterStep('infoAddressByInfoAddressId'),
    ], 'remove'),
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
