// cost_item_unit_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/cost_item_unit_page/cost_item_unit_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(CostItemUnitPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class CostItemUnitPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VItemUnitCostFilter', {
    'itemId': FlatFilterPath([], 'itemId'),
    'itemSymbol': FlatFilterPath([], 'itemSymbol'),
    'itemCode': FlatFilterPath([], 'itemCode'),
    'purchaseCost': FlatFilterPath([], 'purchaseCost'),
    'productionCost': FlatFilterPath([], 'productionCost'),
    'componentCost': FlatFilterPath([], 'componentCost'),
    'unitCost': FlatFilterPath([], 'unitCost'),
    'hasSupplier': FlatFilterPath([], 'hasSupplier'),
    'hasComponents': FlatFilterPath([], 'hasComponents'),
  });
}
