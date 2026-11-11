// order_detail_settlement_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/order_detail_settlement_page/order_detail_settlement_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(OrderDetailSettlementPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class OrderDetailSettlementPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransOrderDetailSettlementFilter', {
    'transOrderDetailSettlementId': FlatFilterPath([], 'transOrderDetailSettlementId'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'settlementKindId': FlatFilterPath([], 'settlementKindId'),
    'settleAt': FlatFilterPath([], 'settleAt'),
    'quantity': FlatFilterPath([], 'quantity'),
    'amount': FlatFilterPath([], 'amount'),
    'transPlanChangeId': FlatFilterPath([], 'transPlanChangeId'),
    'reason': FlatFilterPath([], 'reason'),
    'staffId': FlatFilterPath([], 'staffId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
