// supply_detail_balance_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/supply_detail_balance_page/supply_detail_balance_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(SupplyDetailBalancePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class SupplyDetailBalancePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VSupplyDetailBalanceFilter', {
    'transSupplyDetailId': FlatFilterPath([], 'transSupplyDetailId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'transSupplyId': FlatFilterPath([], 'transSupplyId'),
    'stakeholderId': FlatFilterPath([], 'stakeholderId'),
    'receive': FlatFilterPath([], 'receive'),
    'counterpartOwns': FlatFilterPath([], 'counterpartOwns'),
    'companyOwns': FlatFilterPath([], 'companyOwns'),
    'paidSupply': FlatFilterPath([], 'paidSupply'),
    'paidBySwitch': FlatFilterPath([], 'paidBySwitch'),
    'unitPrice': FlatFilterPath([], 'unitPrice'),
    'paidAmount': FlatFilterPath([], 'paidAmount'),
    'itemId': FlatFilterPath([], 'itemId'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'transResourcePlanId': FlatFilterPath([], 'transResourcePlanId'),
    'scheduledAt': FlatFilterPath([], 'scheduledAt'),
    'quantity': FlatFilterPath([], 'quantity'),
    'linkedLotQuantity': FlatFilterPath([], 'linkedLotQuantity'),
    'linkedIssueQuantity': FlatFilterPath([], 'linkedIssueQuantity'),
    'remainingQuantity': FlatFilterPath([], 'remainingQuantity'),
    'currentQuantity': FlatFilterPath([], 'currentQuantity'),
  });
}
