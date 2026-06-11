import 'package:utility_widget_example/src/condition_pipeline/condition/fields/condition_value.dart';

import '../../condition/fields/field_comparison_condition.dart';
import '../../condition/fields/field_operator.dart';
import '../../condition/fields/sort_condition.dart';
import '../../condition/fields/value_field_condition.dart';
import '../../condition/search_condition.dart';
import '../condition_vsitor.dart';
import '../field_condition_converter.dart';

class SqlOperatorVisitor<T> implements FieldOperatorVisitor<String> {
  @override
  String visitEqual(EqualOperator op, left, right) {
    return op.isNot ? "$left <> ${right.value}" : "$left = ${right.value}";
  }

  @override
  String visitIn(InOperator op, left, right) {
    final list = (right.value as List).join(", ");
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
    final start = between.start.value;
    final end = between.end.value;

    return op.isNot
        ? "$left BETWEEN ${between.start} AND ${between.end}"
        : "$left NOT BETWEEN ${between.start} AND ${between.end}";
  }

  @override
  String visitEndWith(EndWithOperator op, left, right) {
    // TODO: implement visitEndWith
    throw UnimplementedError();
  }

  @override
  String visitGreater(GreaterOperator op, left, right) {
    // TODO: implement visitGreater
    throw UnimplementedError();
  }

  @override
  String visitLess(LessOperator op, left, right) {
    // TODO: implement visitLess
    throw UnimplementedError();
  }

  @override
  String visitStartWith(StartWithOperator op, left, right) {
    // TODO: implement visitStartWith
    throw UnimplementedError();
  }

  @override
  String visitNull(NullOperator op, left, right) {
    // TODO: implement visitNull
    throw UnimplementedError();
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
