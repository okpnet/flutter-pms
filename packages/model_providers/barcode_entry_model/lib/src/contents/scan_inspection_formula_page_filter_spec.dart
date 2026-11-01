// scan_inspection_formula_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/scan_inspection_formula_page/scan_inspection_formula_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ScanInspectionFormulaPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ScanInspectionFormulaPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrInspectionFormulaFilter', {
    'mstrInspectionFormulaId': FlatFilterPath([], 'mstrInspectionFormulaId'),
    'formulaClass': FlatFilterPath([], 'formulaClass'),
    'argClass': FlatFilterPath([], 'argClass'),
    'typeClass': FlatFilterPath([], 'typeClass'),
    'formatClass': FlatFilterPath([], 'formatClass'),
  });
}
