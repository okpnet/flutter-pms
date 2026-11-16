// cancel_open_item_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/cancel_open_item_page/cancel_open_item_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(CancelOpenItemPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class CancelOpenItemPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VCancelOpenItemFilter', {
    'openItemId': FlatFilterPath([], 'openItemId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'isInventoryRequest': FlatFilterPath([], 'isInventoryRequest'),
    'isWorkInProcess': FlatFilterPath([], 'isWorkInProcess'),
    'isHold': FlatFilterPath([], 'isHold'),
    'isShippingOrder': FlatFilterPath([], 'isShippingOrder'),
    'isOutsourceOrder': FlatFilterPath([], 'isOutsourceOrder'),
    'isSupplyAtSupplier': FlatFilterPath([], 'isSupplyAtSupplier'),
    'isCustomerSupply': FlatFilterPath([], 'isCustomerSupply'),
    'causeCancel': FlatFilterPath([], 'causeCancel'),
    'causeStop': FlatFilterPath([], 'causeStop'),
    'causeDiscontinue': FlatFilterPath([], 'causeDiscontinue'),
    'itemId': FlatFilterPath([], 'itemId'),
    'item||mstrItemId': FlatFilterPath([FilterStep('mstrItemByItemId')], 'mstrItemId'),
    'item||code': FlatFilterPath([FilterStep('mstrItemByItemId')], 'code'),
    'item||symbol': FlatFilterPath([FilterStep('mstrItemByItemId')], 'symbol'),
    'item||labels||sharedAppellationsId': FlatFilterPath([FilterStep('mstrItemByItemId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'item||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('mstrItemByItemId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'item||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('mstrItemByItemId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'quantity': FlatFilterPath([], 'quantity'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'transOperationsPlanId': FlatFilterPath([], 'transOperationsPlanId'),
    'transInventoryRequestId': FlatFilterPath([], 'transInventoryRequestId'),
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'transShippingOrderDetailId': FlatFilterPath([], 'transShippingOrderDetailId'),
    'transSupplyDetailId': FlatFilterPath([], 'transSupplyDetailId'),
    'transContainerId': FlatFilterPath([], 'transContainerId'),
    'stakeholderId': FlatFilterPath([], 'stakeholderId'),
    'causeTransPlanChangeId': FlatFilterPath([], 'causeTransPlanChangeId'),
    'since': FlatFilterPath([], 'since'),
  });
}
