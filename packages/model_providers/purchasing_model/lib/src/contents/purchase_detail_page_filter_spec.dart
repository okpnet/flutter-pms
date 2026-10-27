// purchase_detail_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/purchase_detail_page/purchase_detail_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(PurchaseDetailPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class PurchaseDetailPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransPurchaseDetailFilter', {
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'transPurchaseId': FlatFilterPath([], 'transPurchaseId'),
    'transResourcePlanId': FlatFilterPath([], 'transResourcePlanId'),
    'restockingPurchase': FlatFilterPath([], 'restockingPurchase'),
    'quantity': FlatFilterPath([], 'quantity'),
    'cost': FlatFilterPath([], 'cost'),
    'period': FlatFilterPath([], 'period'),
    'itemHistoryId': FlatFilterPath([], 'itemHistoryId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'purchase_rez_count||transPurchaseDetailId': FlatFilterPath([FilterStep('vPurchaseDetailPurchaseRezCountByTransPurchaseDetailId')], 'transPurchaseDetailId'),
    'purchase_rec_count||transPurchaseDetailId': FlatFilterPath([FilterStep('vPurchaseDetailPurchaseRecCountByTransPurchaseDetailId')], 'transPurchaseDetailId'),
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
