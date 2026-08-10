import 'package:trina_grid/src/model/trina_column.dart';

import 'package:trina_grid/src/model/trina_row.dart';

import '../../../../imports.dart';
part 'grid_filter_expression.g.dart';

///TrinaGridのフィルタからQuery生成
@riverpod
IFilterExpressionAdapter<Map<String, dynamic>> gridFilterExpression(Ref ref) {
  @override
  IFilterExpressionAdapter<Map<String, dynamic>> build() =>
      FilterExpressionAdapter();

  void init(IFilterExpressionAdapter<Map<String, dynamic>> expressionAdapter) =>
      state = expressionAdapter;
}

class Filters implements IFilterExpressionAdapter<Map<String, dynamic>> {
  @override
  IPredicateModel build(
    IQueryState<Map<String, dynamic>> state, {
    List<TrinaRow<dynamic>> filterRows,
    List<TrinaColumn>? columns,
    int skip,
  }) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement fieldExpression
  GridExtensionFieldExpression? get fieldExpression =>
      throw UnimplementedError();
}
