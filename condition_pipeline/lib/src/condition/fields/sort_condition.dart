import '../condition.dart';

/// ソート条件を表すクラス。
/// - [field]: ソート対象のフィールドを示すコールバック。
/// - [operator]: ソート演算子（昇順/降順など）を保持する。
class SortCondition<T> extends SearchCondition implements ISortCondition<T> {
  /// ソート対象のフィールドを取得する [FieldCallBack]。
  @override
  final FieldCallBack<T> field;

  /// 適用するソート演算子（`SortOperator` を実装）。
  @override
  final SortOperator operator;

  /// [field] を必須で指定し、[isDesc] が true の場合は降順になる。
  SortCondition({required this.field, bool? isDesc})
    : operator = SortFieldOperator(isDesc: isDesc ?? false);
}
