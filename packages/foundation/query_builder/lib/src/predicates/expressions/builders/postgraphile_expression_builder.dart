import '../../../constants/constants.dart';
import '../expressions.dart';
import '../../visitors/visitors.dart';

/// PostGraphileの filter 引数を構築する(Builder)。結果は `{'filter': {...}}`。
/// 列名は平坦化キーのまま。入れ子のFilterへの展開は pms_graphql の FlatFilterConverter が行う。
class PostgraphileExpressionBuilder<T> extends IBuilderExpression<T>
    with BuilderExpressionMixin<T> {
  @override
  final IVisitor<T> visitor;

  PostgraphileExpressionBuilder() : visitor = PostgraphileVisitor<T>();

  MapCallBack<T> build(Expression expression) {
    final func = expression.accept(visitor);
    return (T t) {
      final result = func(t);
      if (result is! Map<String, dynamic>) {
        throw AssertionError(
          'The result obtained from constructing ${expression.name ?? expression.toString()} cannot be cast to Map, because it was of type ${result.runtimeType}.',
        );
      }
      return {'filter': result};
    };
  }
}
