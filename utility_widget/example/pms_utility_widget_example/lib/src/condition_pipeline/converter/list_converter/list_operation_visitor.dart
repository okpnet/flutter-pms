import '../../condition/fields/condition_value.dart';
import '../../condition/fields/field_comparison_condition.dart';
import '../../condition/fields/field_operator.dart';
import '../../condition/fields/value_field_condition.dart';
import '../../condition/search_condition.dart';
import '../condition_vsitor.dart';
import '../field_condition_converter.dart';

class ListWhereOperatorVisitor<T> implements FieldOperatorVisitor<bool> {
  @override
  bool visitEqual(EqualOperator op, left, right) {
    return op.isNot ? left != right : left == right;
  }

  @override
  bool visitIn(InOperator op, left, right) {
    final list = (right as ListValue).value;
    return op.isNot ? !list.contains(left) : list.contains(left);
  }

  @override
  bool visitLike(LikeOperator op, left, right) {
    final rv = (right as StringleValue).value;
    return op.isNot
        ? !left.toString().contains(rv)
        : left.toString().contains(rv);
  }

  @override
  bool visitBetween(BetweenOperator op, left, right) {
    final between = (right as BetweenValue).value;
    final start = between.start.value;
    final end = between.end.value;

    return op.isNot
        ? !(left >= start && left <= end)
        : (left >= start && left <= end);
  }

  @override
  visitEndWith(EndWithOperator op, left, right) {
    final rv = (right as StringleValue).value;
    return op.isNot
        ? !left.toString().endsWith(rv)
        : left.toString().endsWith(rv);
  }

  @override
  visitGreater(GreaterOperator op, left, right) {
    final rv = (right as NumberValue).value;
    return op.isThanEquals ? left as num >= rv : left as num > rv;
  }

  @override
  visitLess(LessOperator op, left, right) {
    final rv = (right as NumberValue).value;
    return op.isThanEquals ? left as num <= rv : left as num < rv;
  }

  @override
  visitNull(NullOperator op, left, right) {
    // TODO: implement visitNull
    throw UnimplementedError();
  }

  @override
  visitStartWith(StartWithOperator op, left, right) {
    final rv = (right as StringleValue).value;
    return op.isNot
        ? !left.toString().startsWith(rv)
        : left.toString().startsWith(rv);
  }
}

typedef Callback<T> = void Function(T value);

class ListWhereConverter<T> extends FieldConditionConverter<T, bool> {
  ListWhereConverter({required super.opVisitor, required super.extractValue});
  @override
  bool evaluateFieldReference(FieldReferenceCondition cond, T left, right) {
    // TODO: implement evaluateFieldReference
    final valueLeft = extractValue(left, cond);

    final valueRight = extractValue(
      left,
      FieldRightReferenceCondition(
        field: cond.toField,
        operator: cond.operator,
      ),
    );
    final arg = ValueFieldCondition(
      field: cond.field,
      operator: cond.operator,
      value: valueLeft,
    );
    return super.evaluateValueField(arg, valueLeft, valueRight);
  }
}
