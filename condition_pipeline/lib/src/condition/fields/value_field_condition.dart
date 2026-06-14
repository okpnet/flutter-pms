import '../condition.dart';

/// 単一のフィールドに対する検索条件を表すクラス
///
/// 例: `age > 30` のような条件を保持します。
class ValueFieldCondition<T> extends SearchCondition
    implements IValueFieldCondition<T> {
  /// 対象フィールド名
  @override
  final FieldCallBack<T> field;

  /// フィールドに適用する演算子（等価、不等、部分一致など）
  @override
  final FieldOperator operator;

  /// 比較に用いる値
  @override
  final ConditionValue value;

  /// コンストラクタ：親を指定することも可能です。
  ValueFieldCondition({
    super.parent,
    required this.field,
    required this.operator,
    required this.value,
  }) : super();
}
