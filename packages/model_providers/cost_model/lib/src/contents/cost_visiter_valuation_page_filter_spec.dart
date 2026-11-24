// cost_visiter_valuation_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/cost_visiter_valuation_page/cost_visiter_valuation_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(CostVisiterValuationPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class CostVisiterValuationPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VVisiterValuationFilter', {
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'itemId': FlatFilterPath([], 'itemId'),
    'itemCode': FlatFilterPath([], 'itemCode'),
    'quantity': FlatFilterPath([], 'quantity'),
    'held': FlatFilterPath([], 'held'),
    'externalOwned': FlatFilterPath([], 'externalOwned'),
    'transferred': FlatFilterPath([], 'transferred'),
    'evaluated': FlatFilterPath([], 'evaluated'),
    'unitCost': FlatFilterPath([], 'unitCost'),
    'unitValue': FlatFilterPath([], 'unitValue'),
    'amount': FlatFilterPath([], 'amount'),
  });
}
