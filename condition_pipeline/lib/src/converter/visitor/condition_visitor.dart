import '../../condition/condition.dart';
import '../converter.dart';

abstract class FieldOperatorVisitor<R> {
  R visitEqual(EqualOperator op, dynamic left, ConditionValue right);
  R visitIn(InOperator op, dynamic left, ConditionValue right);
  R visitLike(LikeOperator op, dynamic left, ConditionValue right);
  R visitStartWith(StartWithOperator op, dynamic left, ConditionValue right);
  R visitEndWith(EndWithOperator op, dynamic left, ConditionValue right);
  R visitLess(LessOperator op, dynamic left, ConditionValue right);
  R visitGreater(GreaterOperator op, dynamic left, ConditionValue right);
  R visitBetween(BetweenOperator op, dynamic left, ConditionValue right);
  R visitNull(NullOperator op, dynamic left, ConditionValue right);
}

class GenericConditionVisitor<T, R> {
  final FieldConditionConverter<T, R> converter;
  final R Function(R left, R right, GruleRule grue) combine;
  final R Function(R)? group;

  GenericConditionVisitor({
    required this.converter,
    required this.combine,
    this.group,
  });

  /// 条件式から「T → R」の関数を構築して返す
  R Function(T) build(SearchCondition condition) {
    return (T item) => _visit(condition, item);
  }

  R _visit(SearchCondition condition, T item) {
    if (condition case IParentCondition parent) {
      final children = parent.children.map((c) => _visit(c, item)).toList();
      var result = children.reduce(
        (left, right) => combine(left, right, parent.siblingsRule),
      );
      result = parent.children.length > 1 && group != null
          ? group!(result)
          : result;
      return result;
    }
    return switch (condition) {
      ValueFieldCondition valueField => converter.evaluateValueField(
        valueField,
        item,
        valueField.value,
      ),
      FieldReferenceCondition refField => converter.evaluateFieldReference(
        refField,
        item,
        null,
      ),
      ISortCondition sortCond => converter.evaluateSort(sortCond),
      _ => throw UnsupportedError('Unknown condition type'),
    };
  }
}
