import '../condition/condition.dart';

abstract class OperationVisitor<R> {}

///フィルター条件を循環する条件式に応じて、[R]に変換します。
abstract class FieldOperatorVisitor<T, R extends Function>
    extends OperationVisitor<R> {
  R visitEqual(EqualOperator op, ConditionValue right);
  R visitIn(InOperator op, ConditionValue right);
  R visitLike(LikeOperator op, StringleValue right);
  R visitStartWith(StartWithOperator op, StringleValue right);
  R visitEndWith(EndWithOperator op, ConditionValue right);
  R visitLess(LessOperator op, ConditionValue right);
  R visitGreater(GreaterOperator op, ConditionValue right);
  R visitBetween(BetweenOperator op, BetweenValue right);

  ///[left] は、フィールド名。[right] はNullValue
  R visitNull(NullOperator op, NullValue right);
}

///ソート条件を循環する条件式に応じて、[R]に変換します。
abstract class SortOperatorVisitor<T, R extends Function>
    extends OperationVisitor<R> {
  ///[left] は、null。[right] はSortValue
  R visitSort(SortOperator op, ConditionValue<SortValueItem> right);
}

///条件ツリーを循環するベースクラス
abstract class Visitor<T, R extends Function> {
  // OperationVisitor<T, R> get visitor;
  R Function(R left, R right, GruleRule grue) get combine;
  R Function(R)? get group;

  Iterable<SearchCondition> getVisitList(List<SearchCondition> list);

  R evaluate(SearchCondition condition);

  /// 条件式から「T → R」の関数を構築して返します
  R Function(T) build(SearchCondition condition) {
    return visit(condition);
  }

  ///ツリーを循環します
  dynamic visit(SearchCondition condition) {
    if (condition case IParentCondition parent) {
      final list = getVisitList(
        parent.children,
      ); //ここで対象が存在しないとき、2行先のreduceでエラーになる

      final children = list
          .map((c) => visit(c))
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
    return evaluate(condition);
  }
}
