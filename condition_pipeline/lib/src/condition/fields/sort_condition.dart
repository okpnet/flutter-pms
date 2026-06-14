import '../condition.dart';

class SortCondition<T> extends SearchCondition implements ISortCondition<T> {
  /// 対象フィールド名
  @override
  final FieldCallBack<T> field;

  /// フィールドに適用する演算子（等価、不等、部分一致など）
  @override
  final SortOperator operator;

  SortCondition({required this.field, bool? isDesc})
    : operator = SortFieldOperator(isDesc: isDesc ?? false);
}
