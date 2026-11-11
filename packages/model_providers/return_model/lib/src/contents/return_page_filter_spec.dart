// return_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/return_page/return_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ReturnPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ReturnPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransReturnFilter', {
    'transReturnId': FlatFilterPath([], 'transReturnId'),
    'code': FlatFilterPath([], 'code'),
    'returnKindId': FlatFilterPath([], 'returnKindId'),
    'returnAt': FlatFilterPath([], 'returnAt'),
    'stakeholderId': FlatFilterPath([], 'stakeholderId'),
    'transOrderId': FlatFilterPath([], 'transOrderId'),
    'transPurchaseId': FlatFilterPath([], 'transPurchaseId'),
    'transPlanChangeId': FlatFilterPath([], 'transPlanChangeId'),
    'transComplaintId': FlatFilterPath([], 'transComplaintId'),
    'reason': FlatFilterPath([], 'reason'),
    'staffId': FlatFilterPath([], 'staffId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
