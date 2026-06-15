import '../condition.dart';

/// 単一フィールド向けの検索条件を表すクラス。
/// - 条件例: [field] が [value] に対して [operator] を満たす（例: age > 30）。
class ValueFieldCondition<T> extends SearchCondition
    implements IValueFieldCondition<T> {
  /// ソースオブジェクトからフィールド値を取得する [FieldCallBack]。
  @override
  final FieldCallBack<T> field;

  /// 適用する演算子（等価、比較、LIKE など）を表す [FieldOperator]。
  @override
  final FieldOperator operator;

  /// 比較に使う基準値を表す [ConditionValue]。
  @override
  final ConditionValue value;

  /// コンストラクタ。
  /// - [parent]: 親条件を設定する場合に指定。
  /// - [field]: 対象フィールド（必須）。
  /// - [operator]: 適用する演算子（必須）。
  /// - [value]: 比較に用いる値（必須）。
  ValueFieldCondition({
    super.parent,
    required this.field,
    required this.operator,
    required this.value,
  }) : super();
}
