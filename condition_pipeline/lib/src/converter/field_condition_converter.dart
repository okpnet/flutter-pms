import '../condition/fields/condition_value.dart';
import '../condition/fields/field_comparison_condition.dart';
import '../condition/fields/value_field_condition.dart';
import '../condition/search_condition.dart';
import 'condition_visitor.dart';

typedef ExtractCallBack<T> = dynamic Function(T left, IFieldCondition conditon);

abstract interface class IFieldConditionConverter {}

class FieldConditionConverter<T, R> implements IFieldConditionConverter {
  final FieldOperatorVisitor<R> opVisitor;
  final ExtractCallBack<T> extractValue;

  FieldConditionConverter({
    required this.opVisitor,
    required this.extractValue,
  });

  R evaluateValueField(
    ValueFieldCondition cond,
    T left,
    ConditionValue rightValue,
  ) {
    final leftValue = extractValue(left, cond);
    return cond.operator.accept(opVisitor, leftValue, rightValue);
  }

  R evaluateFieldReference(
    FieldReferenceCondition cond,
    T left,
    dynamic right,
  ) {
    return cond.operator.accept(opVisitor, left, right);
  }

  R evaluateSort(ISortCondition cond) {
    throw UnsupportedError("Sort cannot be used in List.where");
  }
}
