import '../../condition_pipeline.dart';

/// リスト内の要素を評価する [FieldOperatorVisitor] 実装。
/// - 各 [visit*] メソッドは [left]（要素）と [right]（条件の基準値）を受け取り、真偽値を返します。
class ListWhereOperatorVisitor implements FieldOperatorVisitor<dynamic, bool> {
  @override
  bool visitEqual(EqualOperator op, left, right) {
    return op.isNot ? left != right.value : left == right.value;
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
  /// [visitEndWith]: 末尾一致を評価します。
  /// - [op]: 演算子情報（[isNot] により否定表現を切り替え）。
  /// - [left]: 評価対象の要素。
  /// - [right]: 期待する末尾文字列を持つ [StringleValue]。
  visitEndWith(EndWithOperator op, left, right) {
    final rv = (right as StringleValue).value;
    return op.isNot
        ? !left.toString().endsWith(rv)
        : left.toString().endsWith(rv);
  }

  @override
  /// [visitGreater]: 大なり比較を評価します。
  /// - [op]: 演算子情報（[isThanEquals] により >=/ > を切り替え）。
  /// - [left]: 評価対象の要素（数値とみなす）。
  /// - [right]: 比較基準を持つ [NumberValue]。
  visitGreater(GreaterOperator op, left, right) {
    final rv = (right as NumberValue).value;
    return op.isThanEquals ? left as num >= rv : left as num > rv;
  }

  @override
  /// [visitLess]: 小なり比較を評価します。
  /// - [op]: 演算子情報（[isThanEquals] により <=/ < を切り替え）。
  /// - [left]: 評価対象の要素（数値とみなす）。
  /// - [right]: 比較基準を持つ [NumberValue]。
  visitLess(LessOperator op, left, right) {
    final rv = (right as NumberValue).value;
    return op.isThanEquals ? left as num <= rv : left as num < rv;
  }

  @override
  /// [visitNull]: null 比較は未実装（必要に応じて実装してください）。
  visitNull(NullOperator op, left, NullValue right) {
    throw UnimplementedError();
  }

  @override
  /// [visitStartWith]: 先頭一致を評価します。
  /// - [op]: 演算子情報（[isNot] により否定表現を切り替え）。
  /// - [left]: 評価対象の要素。
  /// - [right]: 期待する先頭文字列を持つ [StringleValue]。
  visitStartWith(StartWithOperator op, left, StringleValue right) {
    final rv = right.value;
    return op.isNot
        ? !left.toString().startsWith(rv)
        : left.toString().startsWith(rv);
  }
}

class ListSortOperatorVisitor<T, R> implements SortOperatorVisitor<T, R> {
  /// [visitSort]: ソート用の比較関数を生成して返します。
  /// - [op]: ソート演算子（[isDesc] により昇順/降順を切り替え）。
  /// - [left]: ソート対象オブジェクト（比較関数作成時のコンテキストとして使う）。
  /// - [right]: [SortValueItem] を内包する [ConditionValue]。
  @override
  R visitSort(SortOperator op, T left, ConditionValue<SortValueItem<T>> right) {
    final value = right.value!.field(left);
    final result = switch (value) {
      String _ =>
        op.isDesc
            ? (T l, T r) => (right.value!.field(r) as String)
                  .toLowerCase()
                  .compareTo((right.value!.field(l) as String).toLowerCase())
            : (T l, T r) => (right.value!.field(l) as String)
                  .toLowerCase()
                  .compareTo((right.value!.field(r) as String).toLowerCase()),
      num _ =>
        op.isDesc
            ? (T l, T r) => (right.value!.field(r) as num).compareTo(
                (right.value!.field(l) as num),
              )
            : (T l, T r) => (right.value!.field(l) as num).compareTo(
                (right.value!.field(r) as num),
              ),
      DateTime _ =>
        op.isDesc
            ? (T l, T r) => (right.value!.field(r) as DateTime).compareTo(
                (right.value!.field(l) as DateTime),
              )
            : (T l, T r) => (right.value!.field(l) as DateTime).compareTo(
                (right.value!.field(r) as DateTime),
              ),
      _ => throw AssertionError('not compare type.'),
    };
    return result as R;
  }
}

/// リスト検索用の [FieldConditionConverter] 実装。
class ListWhereConverter<T, R extends Function>
    extends FieldConditionConverter<T, R> {
  ListWhereConverter({required super.opVisitor});

  /// [evaluateFieldReference]: フィールド同士の比較条件を評価します。
  /// - [cond]: 評価対象の [FieldReferenceCondition]。
  /// - [left]: 抽出元のオブジェクト。
  /// - [rightValue]: 右辺の値（フィールド参照）※この実装では未使用。
  @override
  R evaluateFieldReference(FieldReferenceCondition cond, rightValue) {
    final l = cond.field(left);
    final r = cond.toField(left);
    return cond.operator.accept(opVisitor, ConditionValue());
  }

  @override
  bool evaluateValueField(
    ValueFieldCondition<dynamic> cond,
    T left,
    ConditionValue<dynamic> rightValue,
  ) {
    final l = cond.field(left);
    return cond.operator.accept(opVisitor, l, rightValue);
  }
}

/// リストソート用の [FieldSortConverter] 実装。
class ListSortConverter<T, R> extends FieldSortConverter<T, R> {
  ListSortConverter({required super.opVisitor});
}
