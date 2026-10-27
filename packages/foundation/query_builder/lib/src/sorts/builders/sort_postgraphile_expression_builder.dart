import '../../constants/constants.dart';
import '../sort_expressions/sort_expressions.dart';
import '../sort_visitors/sort_visitors.dart';
import 'sort_expression_builders.dart';

/// PostGraphileの orderBy 引数を構築する(Builder)。結果は `{'orderBy': ['NAME_ASC', 'AGE_DESC']}`。
/// 列名(camelCase)は PostGraphile の列挙値(SCREAMING_SNAKE_CASE)にする。
class SortPostgraphileExpressionBuilder<T> extends ISortExpressionBuilder<T>
    with SortBuilderExpressionMixin<T> {
  @override
  final ISortVisitor<T> visitor;

  SortPostgraphileExpressionBuilder() : visitor = SortGraphQLVisitor<T>();

  MapCallBack<T> build(SortExpression expression) {
    final func = expression.accept(visitor);
    return (T t) {
      final result = func(t);
      if (result is! Map<String, dynamic>) {
        throw AssertionError(
          'The result obtained from constructing ${expression.name ?? expression.toString()} cannot be cast to Map, because it was of type ${result.runtimeType}.',
        );
      }
      return {
        'orderBy': [
          for (final e in result.entries)
            '${_screamingSnake(e.key)}_${(e.value as String).toUpperCase()}',
        ],
      };
    };
  }

  static String _screamingSnake(String camel) => camel
      .replaceAllMapped(RegExp(r'(?<=[a-z0-9])([A-Z])'), (m) => '_${m[1]}')
      .toUpperCase();
}
