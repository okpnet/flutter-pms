// supply_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/supply_page/supply_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(SupplyPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class SupplyPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransSupplyFilter', {
    'transSupplyId': FlatFilterPath([], 'transSupplyId'),
    'code': FlatFilterPath([], 'code'),
    'supplyAt': FlatFilterPath([], 'supplyAt'),
    'stakeholderId': FlatFilterPath([], 'stakeholderId'),
    'receive': FlatFilterPath([], 'receive'),
    'counterpartOwns': FlatFilterPath([], 'counterpartOwns'),
    'companyOwns': FlatFilterPath([], 'companyOwns'),
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
