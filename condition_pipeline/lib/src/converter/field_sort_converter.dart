import '../condition/condition.dart';
import '../visitor/visitor.dart';

///フィールドの条件を変換する
class FieldSortConverter<T, R> {
  final SortOperatorVisitor<T, R> opVisitor;

  FieldSortConverter({required this.opVisitor});

  ///ソート条件を変換します
  ///[cond]フィールド基準
  ///[left]渡された値
  ///[rightValue]ソート条件の基準値
  R evaluateSort(ISortCondition cond, T left, SortValue<T> rightValue) {
    return cond.operator.accept(opVisitor, left, rightValue);
  }
}
