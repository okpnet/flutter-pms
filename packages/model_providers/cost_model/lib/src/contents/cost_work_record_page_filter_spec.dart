// cost_work_record_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/cost_work_record_page/cost_work_record_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(CostWorkRecordPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class CostWorkRecordPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VWorkRecordCostFilter', {
    'transWorkRecordId': FlatFilterPath([], 'transWorkRecordId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'transWorkPlanId': FlatFilterPath([], 'transWorkPlanId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'quantity': FlatFilterPath([], 'quantity'),
    'producedQuantity': FlatFilterPath([], 'producedQuantity'),
    'materialAmount': FlatFilterPath([], 'materialAmount'),
    'materialLineCount': FlatFilterPath([], 'materialLineCount'),
    'hasSuppliedMaterial': FlatFilterPath([], 'hasSuppliedMaterial'),
    'processCost': FlatFilterPath([], 'processCost'),
    'totalCost': FlatFilterPath([], 'totalCost'),
    'unitCost': FlatFilterPath([], 'unitCost'),
  });
}
