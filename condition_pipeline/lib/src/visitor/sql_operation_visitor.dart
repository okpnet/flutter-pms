import '../../condition_pipeline.dart';

/// SQL 文字列を生成するための [FieldOperatorVisitor] 実装。
/// 各 [visit*] メソッドは [left]（カラム名）と [right]（条件の基準値）を受け取り、
/// 対応する SQL 断片を返します。
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
  /// [visitBetween]: 範囲比較を SQL に変換します。
  /// - [op]: 演算子情報（[isNot] により NOT BETWEEN を切り替え）。
  /// - [left]: カラム名。
  /// - [right]: [BetweenValue] を内包する [ConditionValue]。
  String visitBetween(BetweenOperator op, left, right) {
    final between = (right.value as BetweenValue).value;
    return op.isNot
        ? "$left NOT BETWEEN ${between.start} AND ${between.end}"
        : "$left BETWEEN ${between.start} AND ${between.end}";
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

  /// [evaluateValueField]: 値比較のフィールド条件を SQL 文字列に変換します。
  /// - [cond]: 対象の [ValueFieldCondition]。
  /// - [left]: 抽出元のオブジェクト（この実装では [cond.field] を直接カラム名として使用）。
  /// - [rightValue]: 比較基準値。
  @override
  String evaluateValueField(
    ValueFieldCondition cond,
    T left,
    ConditionValue<dynamic> rightValue,
  ) {
    final leftValue = cond.field;
    return cond.operator.accept(opVisitor, leftValue, rightValue);
  }

  /// [evaluateFieldReference]: フィールド同士の比較条件を SQL 断片に変換します。
  /// - [cond]: 対象の [FieldReferenceCondition]。
  /// - [left]: 抽出元のオブジェクト（未使用）。
  /// - [rightValue]: 右辺がフィールド参照であることを示す値（未使用）。
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
