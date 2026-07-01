import '../condition/condition.dart';
import '../visitor/visitor.dart';

/// フィールドのソート条件を変換/評価するユーティリティクラス。
/// - [opVisitor]: ソート演算子毎の処理を行う [SortOperatorVisitor]。
class FieldSortConverter<T, R extends Function> {
  final SortOperatorVisitor<T, R> opVisitor;

  FieldSortConverter({required this.opVisitor});

  /// [evaluateSort]: ソート条件を評価します。
  /// - [cond]: 評価対象の [ISortCondition]。
  /// - [left]: 抽出元のオブジェクト（評価時に使われるコンテキスト）。
  /// - [rightValue]: ソート条件の基準値を含む [SortValue]。
  R evaluateSort(ISortCondition cond, SortValue<T> rightValue) {
    return cond.operator.accept(opVisitor, rightValue);
  }
}
