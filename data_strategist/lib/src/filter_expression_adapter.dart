import 'package:data_strategist/src/pridicate_model.dart';
import 'package:data_strategist/src/query_state.dart';
import 'package:query_builder/query_builder.dart';
import 'package:trina_grid/trina_grid.dart';

///TrinaGridのフィルターから、条件式モデルを生成する
abstract interface class IFilterExpressionAdapter {
  ///取得する最大行数
  int get take;
  IPridicateModel build({
    List<TrinaRow> filterRows,
    List<TrinaColumn>? columns,
    int skip,
  });
}

///TrinaGridのフィルターから、条件式モデルを生成する
class FilterExpressionAdapter
    implements IFilterExpressionAdapter, IQueryStateful {
  @override
  final int take;

  @override
  final QueryState state;

  FilterExpressionAdapter({required this.state, required this.take});

  @override
  IPridicateModel build({
    List<TrinaRow<dynamic>>? filterRows,
    List<TrinaColumn>? columns,
    int skip = 0,
  }) {
    final expressions = filterRows?.map((row) => _rowTransrater(row)).toList();
    return PridicateModel(
      take: take,
      skip: skip,
      pridicate: expressions == null ? null : AndExpression(expressions),
    );
  }

  ///TrinaGridのフィルタのRowをExpressionに変換する
  Expression _rowTransrater(TrinaRow row) {
    final operation = row.cells[FilterHelper.filterFieldType]!.value;

    final column =
        row.cells[FilterHelper.filterFieldColumn]!.value as TrinaColumn;
    final filterValue = row.cells[FilterHelper.filterFieldValue]!.value;

    ///レポジトリのタイプに応じて切り替える
    final fieldEx = state.expressionVisitorType != .list
        ? NameFieldExpression(column.field)
        : FieldExpression<Map<String, dynamic>>((t) => t[column.field]);

    final valueEx = ValueExpression(filterValue);

    return _toExpresisonOperator(operation, fieldEx, valueEx);
  }

  ///TrinaGridのフィルタのRowから取得した比較式をExpressionの式に変換する
  Expression _toExpresisonOperator(
    TrinaFilterType operation,
    Expression left,
    Expression right,
  ) {
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
