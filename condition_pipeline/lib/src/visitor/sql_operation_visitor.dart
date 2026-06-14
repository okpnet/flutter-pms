import '../../condition_pipeline.dart';

class SqlOperatorVisitor<T> implements FieldOperatorVisitor<T, String> {
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
}

class SqlSortOperationVisitor<T> implements SortOperatorVisitor<T, String> {
  @override
  String visitSort(
    SortOperator op,
    left,
    ConditionValue<SortValueItem<T>> right,
  ) {
    return op.isDesc
        ? "${right.value!.field(left)} DESC"
        : "${right.value!.field(left)} ASC";
  }
}

class SqlConverter<T> extends FieldConditionConverter<T, String> {
  SqlConverter({required super.extractValue, required super.opVisitor});

  @override
  String evaluateValueField(
    ValueFieldCondition cond,
    T left,
    ConditionValue<dynamic> rightValue,
  ) {
    final leftValue = cond.field;
    return cond.operator.accept(opVisitor, leftValue, rightValue);
  }

  @override
  String evaluateFieldReference(
    FieldReferenceCondition<dynamic> cond,
    T left,
    FieldReferenceValue<T> rightValue,
  ) {
    return cond.operator.accept(
      opVisitor,
      cond.field,
      FieldReferenceValue(
        FieldReferenceItem(left: cond.field, right: cond.toField),
      ),
    );
  }
}
