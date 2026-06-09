import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/branch_condition.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/field_operator.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/root_condition.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/search_condition.dart';

///TrinaGridのフィルターをConditionへ変換する。
class TrinaRuleAdapter {
  static SearchCondition toConditionFromFilterRow(
    TrinaRow filterRow,
    SearchCondition? parent,
  ) {
    final operator = switch (filterRow
        .cells[FilterHelper.filterFieldType]!
        .value) {
      TrinaFilterTypeEquals _ => EqualOperator(),
      TrinaFilterTypeContains _ => InOperator(),
      TrinaFilterTypeIsEmpty _ => NullOperator(),
      TrinaFilterTypeIsNotEmpty _ => NullOperator(isNot: true),
      TrinaFilterTypeStartsWith _ => StartWithOperator(),
      TrinaFilterTypeEndsWith _ => EndWithOperator(),
      TrinaFilterTypeLessThan _ => LessOperator(),
      TrinaFilterTypeLessThanOrEqualTo _ => LessOperator(isThanEquals: true),
      TrinaFilterTypeGreaterThan _ => GreaterOperator(),
      TrinaFilterTypeGreaterThanOrEqualTo _ => GreaterOperator(
        isThanEquals: true,
      ),
      _ => NullOperator(isNot: true),
    };
    return FieldCondition(
      parent: parent,
      field: filterRow.cells[FilterHelper.filterFieldColumn]!.value,
      operator: operator,
      value: filterRow.cells[FilterHelper.filterFieldValue]!.value,
    );
  }

  static SearchCondition toConditionsFromFilterRows(List<TrinaRow> filterRows) {
    final branch = RootCondition().addBranch(siblingsRule: .and);
    final conditions = filterRows
        .map((t) => toConditionFromFilterRow(t, branch))
        .toList();
    branch.addChildren(conditions);
    return branch.getRoot();
  }

  static SearchCondition toConditionFromDataRow(
    TrinaRow row,
    String fieldId,
    IFieldOperator operator,
  ) {
    final branch = BranchCondition(siblingsRule: .and);
    final condition = FieldCondition(
      field: fieldId,
      operator: operator,
      value: row.cells[fieldId]?.value,
    );
    branch.addChild(condition);
    return branch;
  }
}
