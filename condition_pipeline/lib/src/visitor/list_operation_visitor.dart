import '../../condition_pipeline.dart';

class ListWhereOperatorVisitor<T> implements FieldOperatorVisitor<T, bool> {
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
  bool visitLike(LikeOperator op, left, StringleValue right) {
    return op.isNot
        ? !left.toString().contains(right.value)
        : left.toString().contains(right.value);
  }

  @override
  bool visitBetween(BetweenOperator op, left, BetweenValue right) {
    return switch ((left, right.value.start.value, right.value.end.value)) {
      (num l, num ns, num ne) =>
        op.isNot ? !(l >= ns && l <= ne) : (l >= ns && l <= ne),
      (DateTime l, DateTime ds, DateTime de) =>
        op.isNot
            ? !(l.isAfter(ds) && l.isBefore(de))
            : (l.isAfter(ds) && l.isBefore(de)),
      _ => throw AssertionError(''),
    };
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
  visitNull(NullOperator op, left, NullValue right) {
    // TODO: implement visitNull
    throw UnimplementedError();
  }

  @override
  visitStartWith(StartWithOperator op, left, StringleValue right) {
    final rv = right.value;
    return op.isNot
        ? !left.toString().startsWith(rv)
        : left.toString().startsWith(rv);
  }
}

class ListSortOperatorVisitor<T>
    implements SortOperatorVisitor<T, int Function(T, T)> {
  @override
  int Function(T, T) visitSort(
    SortOperator op,
    T left,
    ConditionValue<SortValueItem<T>> right,
  ) {
    return switch (left) {
      String _ =>
        op.isDesc
            ? (T l, T r) => (right.value!.field(l) as String)
                  .toLowerCase()
                  .compareTo((right.value!.field(r) as String).toLowerCase())
            : (T l, T r) => (right.value!.field(r) as String)
                  .toLowerCase()
                  .compareTo((right.value!.field(l) as String).toLowerCase()),
      num _ =>
        op.isDesc
            ? (T l, T r) => (right.value!.field(l) as num).compareTo(
                (right.value!.field(r) as num),
              )
            : (T l, T r) => (right.value!.field(r) as num).compareTo(
                (right.value!.field(l) as num),
              ),
      DateTime _ =>
        op.isDesc
            ? (T l, T r) => (right.value!.field(l) as DateTime).compareTo(
                (right.value!.field(r) as DateTime),
              )
            : (T l, T r) => (right.value!.field(r) as DateTime).compareTo(
                (right.value!.field(l) as DateTime),
              ),
      _ => throw AssertionError('not compare type.'),
    };
  }
}

typedef Callback<T> = void Function(T value);

class ListWhereConverter<T> extends FieldConditionConverter<T, bool> {
  ListWhereConverter({required super.opVisitor, required super.extractValue});
  @override
  bool evaluateFieldReference(FieldReferenceCondition cond, T left, right) {
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

class ListSortConverter<T, R> extends FieldSortConverter<T, R> {
  ListSortConverter({required super.opVisitor});
  @override
  R evaluateSort(
    ISortCondition<dynamic> cond,
    T left,
    SortValue<T> rightValue,
  ) {
    // TODO: implement evaluateSort
    return super.evaluateSort(cond, left, rightValue);
  }
}
