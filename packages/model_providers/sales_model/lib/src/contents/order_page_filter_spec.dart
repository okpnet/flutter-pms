// order_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/order_page/order_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(OrderPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class OrderPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransOrderFilter', {
    'transOrderId': FlatFilterPath([], 'transOrderId'),
    'orderNumber': FlatFilterPath([], 'orderNumber'),
    'customerOrderNumber': FlatFilterPath([], 'customerOrderNumber'),
    'stakeholderHistoryId': FlatFilterPath([], 'stakeholderHistoryId'),
    'stakeholderId': FlatFilterPath([], 'stakeholderId'),
    'stakeholderContactHistoryId': FlatFilterPath([], 'stakeholderContactHistoryId'),
    'stakeholderContactId': FlatFilterPath([], 'stakeholderContactId'),
    'controlCode1': FlatFilterPath([], 'controlCode1'),
    'controlCode2': FlatFilterPath([], 'controlCode2'),
    'controlCode3': FlatFilterPath([], 'controlCode3'),
    'orderProcessingDate': FlatFilterPath([], 'orderProcessingDate'),
    'deliveryDate': FlatFilterPath([], 'deliveryDate'),
    'deadline': FlatFilterPath([], 'deadline'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'shipping_order_count||transOrderId': FlatFilterPath([FilterStep('vOrderShippingOrderCountByTransOrderId')], 'transOrderId'),
    'order_risk_count||transOrderId': FlatFilterPath([FilterStep('vOrderOrderRiskCountByTransOrderId')], 'transOrderId'),
    'order_detail_count||transOrderId': FlatFilterPath([FilterStep('vOrderOrderDetailCountByTransOrderId')], 'transOrderId'),
    'complaint_order_count||transOrderId': FlatFilterPath([FilterStep('vOrderComplaintOrderCountByTransOrderId')], 'transOrderId'),
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
