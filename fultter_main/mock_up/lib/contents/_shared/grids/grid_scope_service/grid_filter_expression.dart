import '../../../../../imports.dart';
part 'grid_filter_expression.g.dart';

///TrinaGridのフィルタRowからQuery生成する
///[R]の型に応じて生成する
@riverpod
IFilterExpressionAdapter<R> gridFilterExpression<R>(Ref ref) {
  // final queryState = ref.read(gridDataStrategyProvider<R>());
  return FilterExpressionAdapter<R>();
}
