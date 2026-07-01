import 'package:condition_pipeline/condition_pipeline.dart';

typedef ExtractCallBack<T> = dynamic Function(T left, IFieldCondition conditon);

abstract interface class IFieldConditionConverter {}

/// フィールド条件を評価/変換するヘルパークラス。
/// - [opVisitor]: 演算子毎の処理を行う [FieldOperatorVisitor]。
/// - [extractValue]: ソースオブジェクトからフィールド値を取り出すコールバック。
class FieldConditionConverter<T, R extends Function>
    implements IFieldConditionConverter {
  final FieldOperatorVisitor<T, R> opVisitor;

  FieldConditionConverter({required this.opVisitor});

  /// [evaluateValueField]: 値比較用のフィールド条件を評価します。
  /// - [cond]: 評価対象の [ValueFieldCondition]。
  /// - [left]: 抽出元のオブジェクト（抽出コールバックの第一引数）。
  /// - [rightValue]: 条件が持つ比較基準値（[ConditionValue]）。
  R evaluateValueField(ValueFieldCondition cond, ConditionValue rightValue) {
    return cond.operator.accept(opVisitor, rightValue);
  }

  /// [evaluateFieldReference]: フィールドとフィールドを比較する条件を評価します。
  /// - [cond]: 評価対象の [FieldReferenceCondition]。
  /// - [left]: 抽出元のオブジェクト。
  /// - [rightValue]: 右辺がフィールド参照であることを表す [FieldReferenceValue]。
  R evaluateFieldReference(
    FieldReferenceCondition cond,
    FieldReferenceValue rightValue,
  ) {
    return cond.operator.accept(opVisitor, rightValue);
  }
}
