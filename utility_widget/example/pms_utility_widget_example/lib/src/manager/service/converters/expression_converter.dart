import 'package:query_builder/query_builder.dart';
import 'package:trina_grid/trina_grid.dart';

class ListExpressionConverter {
  Expression toExpression(TrinaRow row) {
    final operation = row.cells[FilterHelper.filterFieldType]!.value;
    final column = row.cells[FilterHelper.filterFieldColumn]!.value;
    final filterValue = row.cells[FilterHelper.filterFieldValue]!.value;

    final fieldEx = FieldExpression<Map<String, dynamic>>((t) => t[column]);
    final valueEx = ValueExpression(filterValue);
  }

  Expression toOperator(dynamic operation, Expression left, Expression right) {
    return switch (operation) {
      TrinaFilterTypeEquals _ => EqualExpression(left, right),
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
  }
}
