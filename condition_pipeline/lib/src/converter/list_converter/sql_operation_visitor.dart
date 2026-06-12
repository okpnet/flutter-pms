import '../../condition/fields/condition_value.dart';
import '../../condition/fields/field_comparison_condition.dart';
import '../../condition/fields/field_operator.dart';
import '../../condition/fields/value_field_condition.dart';
import '../visitor/condition_visitor.dart';
import '../field_condition_converter.dart';

class SqlOperatorVisitor<T> implements FieldOperatorVisitor<String> {
  @override
  String visitEqual(EqualOperator op, left, right) {
    final quort = right.value is String ? "'" : '';
    return op.isNot
        ? " $left <> $quort${right.value}$quort"
        : "$left = $quort${right.value}$quort";
  }

  @override
  String visitIn(InOperator op, left, right) {
    final quort = (right.value as List).first is String ? "'" : '';
    final list = (right.value as List)
        .map((t) => '$quort${t.toString()}$quort')
        .join(", ");
    return op.isNot ? "$left NOT IN ($list)" : "$left IN ($list)";
  }

  @override
  String visitLike(LikeOperator op, left, right) {
    return op.isNot
        ? "$left NOT LIKE '%${right.value}%'"
        : "$left LIKE '%${right.value}%'";
  }

  @override
  String visitBetween(BetweenOperator op, left, right) {
    final between = (right.value as BetweenValue).value;
    // final start = between.start.value;
    // final end = between.end.value;

    return op.isNot
        ? "$left BETWEEN ${between.start} AND ${between.end}"
        : "$left NOT BETWEEN ${between.start} AND ${between.end}";
  }

  @override
  String visitEndWith(EndWithOperator op, left, right) {
    return op.isNot
        ? "$left NOT LIKE '%${right.value}'"
        : "$left LIKE '%${right.value}'";
  }

  @override
  String visitGreater(GreaterOperator op, left, right) {
    return op.isThanEquals
        ? "$left >= ${right.value}"
        : "$left > ${right.value}";
  }

  @override
  String visitLess(LessOperator op, left, right) {
    return op.isThanEquals
        ? "$left <= ${right.value}"
        : "$left < ${right.value}";
  }

  @override
  String visitStartWith(StartWithOperator op, left, right) {
    return op.isNot
        ? "$left NOT LIKE '${right.value}%'"
        : "$left LIKE '${right.value}%'";
  }

  @override
  String visitNull(NullOperator op, left, right) {
    return op.isNot ? "$left <> NULL" : "$left = NULL";
  }

  // …他の Operator も同様に実装
}

class SqlConverter<T> extends FieldConditionConverter<T, String> {
  SqlConverter({required super.extractValue, required super.opVisitor});

  @override
  String evaluateValueField(
    ValueFieldCondition cond,
    T left,
    ConditionValue<dynamic> rightValue,
  ) {
    // TODO: implement evaluateValueField
    final leftValue = cond.field;
    return cond.operator.accept(opVisitor, leftValue, rightValue);
  }

  @override
  String evaluateFieldReference(FieldReferenceCondition cond, T left, right) {
    // TODO: implement evaluateFieldReference
    return cond.operator.accept(
      opVisitor,
      cond.field,
      StringleValue(cond.toField),
    );
  }
}
