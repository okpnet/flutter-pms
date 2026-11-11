// return_detail_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/return_detail_page/return_detail_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ReturnDetailPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ReturnDetailPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransReturnDetailFilter', {
    'transReturnDetailId': FlatFilterPath([], 'transReturnDetailId'),
    'transReturnId': FlatFilterPath([], 'transReturnId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'quantity': FlatFilterPath([], 'quantity'),
    'replacement': FlatFilterPath([], 'replacement'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'transShippingOrderDetailRecordId': FlatFilterPath([], 'transShippingOrderDetailRecordId'),
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'transPurchaseRecId': FlatFilterPath([], 'transPurchaseRecId'),
    'originTransVisiterId': FlatFilterPath([], 'originTransVisiterId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
