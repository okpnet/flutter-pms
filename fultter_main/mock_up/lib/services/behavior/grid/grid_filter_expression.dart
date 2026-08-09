import '../../../../imports.dart';
part 'grid_filter_expression.g.dart';

///TrinaGridのフィルタからQuery生成
@riverpod
class GridFilterExpression extends _$GridFilterExpression {
  @override
  IFilterExpressionAdapter<Map<String, dynamic>> build() =>
      FilterExpressionAdapter();

  void init(IFilterExpressionAdapter<Map<String, dynamic>> expressionAdapter) =>
      state = expressionAdapter;
}
