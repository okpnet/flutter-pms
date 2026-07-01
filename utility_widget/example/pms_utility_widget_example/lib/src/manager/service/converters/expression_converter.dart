import 'package:query_builder/query_builder.dart';
import 'package:trina_grid/trina_grid.dart';

class ListExpressionConverter {
  Expression build(List<TrinaRow> filterRows) {
    for (var row in filterRows) {
      //AndExpressionにtoExpressionの結果をまとめる
      //ただし、左辺と右辺があるときだけ(filterrowsが2以上)
      //余り1が発生したときは、まとめたAndExpressionを左辺に、余りを右辺にする
      //問題は、評価する順番が先頭になるようにするため、リバースで順を変えなければいけないかどうか
    }
  }

  Expression toExpression(TrinaRow row) {
    final operation = row.cells[FilterHelper.filterFieldType]!.value;
    final column = row.cells[FilterHelper.filterFieldColumn]!.value;
    final filterValue = row.cells[FilterHelper.filterFieldValue]!.value;
    final fieldEx = FieldExpression<Map<String, dynamic>>((t) => t[column]);
    final valueEx = ValueExpression(filterValue);

    return toOperator(operation, fieldEx, valueEx);
  }

  Expression toOperator(dynamic operation, Expression left, Expression right) {
    final result = switch (operation) {
      TrinaFilterTypeEquals _ => EqualExpression(left, right),
      TrinaFilterTypeContains _ => LikeExpression(left, right),
      TrinaFilterTypeIsEmpty _ => NullExpression(left),
      TrinaFilterTypeIsNotEmpty _ => NullExpression(left, isNot: true),
      TrinaFilterTypeStartsWith _ => StartWithExpression(left, right),
      TrinaFilterTypeEndsWith _ => EndWithExpression(left, right),
      TrinaFilterTypeLessThan _ => GreaterExpression(right, left),
      TrinaFilterTypeLessThanOrEqualTo _ => GreaterExpression(
        right,
        left,
        isEqulity: true,
      ),
      TrinaFilterTypeGreaterThan _ => GreaterExpression(left, right),
      TrinaFilterTypeGreaterThanOrEqualTo _ => GreaterExpression(
        left,
        right,
        isEqulity: true,
      ),
      //   isThanEquals: true,
      // ),
      _ => throw AssertionError(),
    };
    return result;
  }
}
