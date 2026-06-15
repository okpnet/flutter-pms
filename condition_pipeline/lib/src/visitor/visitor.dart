import '../condition/condition.dart';

abstract class OperationVisitor<T, R> {}

///フィルター条件を循環する条件式に応じて、[R]に変換します。
abstract class FieldOperatorVisitor<T, R> extends OperationVisitor<T, R> {
  R visitEqual(EqualOperator op, T left, ConditionValue right);
  R visitIn(InOperator op, T left, ConditionValue right);
  R visitLike(LikeOperator op, T left, StringleValue right);
  R visitStartWith(StartWithOperator op, T left, StringleValue right);
  R visitEndWith(EndWithOperator op, T left, ConditionValue right);
  R visitLess(LessOperator op, T left, ConditionValue right);
  R visitGreater(GreaterOperator op, T left, ConditionValue right);
  R visitBetween(BetweenOperator op, T left, BetweenValue right);

  ///[left] は、フィールド名。[right] はNullValue
  R visitNull(NullOperator op, dynamic left, NullValue right);
}

///ソート条件を循環する条件式に応じて、[R]に変換します。
abstract class SortOperatorVisitor<T, R> extends OperationVisitor<T, R> {
  ///[left] は、null。[right] はSortValue
  R visitSort(SortOperator op, T left, ConditionValue<SortValueItem<T>> right);
}

///条件ツリーを循環するベースクラス
abstract class Visitor<T, R> {
  // OperationVisitor<T, R> get visitor;
  R Function(R left, R right, GruleRule grue) get combine;
  R Function(R)? get group;

  Iterable<SearchCondition> getVisitList(List<SearchCondition> list);

  R evaluate(SearchCondition condition, T item);

  /// 条件式から「T → R」の関数を構築して返します
  R Function(T) build(SearchCondition condition) {
    return (T item) {
      final result = visit(condition, item) as R;

      // ルートが空だった場合だけ例外
      if (result == null) {
        throw StateError('SearchCondition has no evaluatable children.');
      }

      return result;
    };
  }

  ///ツリーを循環します
  dynamic visit(SearchCondition condition, T item) {
    if (condition case IParentCondition parent) {
      final list = getVisitList(
        parent.children,
      ); //ここで対象が存在しないとき、2行先のreduceでエラーになる

      final children = list
          .map((c) => visit(c, item))
          .where((t) => t != null)
          .toList();
      if (children.isEmpty) {
        return null;
      }
      var result = children.reduce(
        (left, right) => combine(left, right, parent.siblingsRule),
      );
      result = list.length > 1 && group != null ? group!(result!) : result;
      return result;
    }
    return evaluate(condition, item);
  }
}
