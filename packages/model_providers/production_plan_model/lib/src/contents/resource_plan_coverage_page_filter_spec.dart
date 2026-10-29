// resource_plan_coverage_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/resource_plan_coverage_page/resource_plan_coverage_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ResourcePlanCoveragePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ResourcePlanCoveragePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VResourcePlanCoverageFilter', {
    'transResourcePlanId': FlatFilterPath([], 'transResourcePlanId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'planKind': FlatFilterPath([], 'planKind'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'transUnrecognizedDetailId': FlatFilterPath([], 'transUnrecognizedDetailId'),
    'parentTransOperationsPlanId': FlatFilterPath([], 'parentTransOperationsPlanId'),
    'deadline': FlatFilterPath([], 'deadline'),
    'quantity': FlatFilterPath([], 'quantity'),
    'inventoryResavation': FlatFilterPath([], 'inventoryResavation'),
    'issued': FlatFilterPath([], 'issued'),
    'remaining': FlatFilterPath([], 'remaining'),
    'reservedStock': FlatFilterPath([], 'reservedStock'),
    'reservedPurchase': FlatFilterPath([], 'reservedPurchase'),
    'reservedProduction': FlatFilterPath([], 'reservedProduction'),
    'shortage': FlatFilterPath([], 'shortage'),
  });
}
