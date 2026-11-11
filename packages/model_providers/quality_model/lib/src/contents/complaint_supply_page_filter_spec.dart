// complaint_supply_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/complaint_supply_page/complaint_supply_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ComplaintSupplyPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ComplaintSupplyPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransComplaintSupplyFilter', {
    'transComplaintSupplyId': FlatFilterPath([], 'transComplaintSupplyId'),
    'transComplaintId': FlatFilterPath([], 'transComplaintId'),
    'transSupplyDetailId': FlatFilterPath([], 'transSupplyDetailId'),
    'quantity': FlatFilterPath([], 'quantity'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
