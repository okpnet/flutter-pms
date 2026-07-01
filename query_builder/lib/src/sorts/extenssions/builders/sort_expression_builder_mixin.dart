import '../../../constants.dart';
import '../../sort_extpressions/sort_expressions.dart';
import '../../sort_visitors/sort_visitors.dart';

///ビジタを持つビルダ
abstract class ISortExpressionBuilder<T> {
  ISortVisitor<T> get visitor;
}

///好きな値をとりださせるビルダ
mixin SortBuilderExpressionMixin<T> on ISortExpressionBuilder<T> {
  ValueCallBack<T> anyBuild(SortExpression expression) {
    final func = expression.accept(visitor);
    return (T t) {
      final result = func(t);
      return result;
    };
  }
}
