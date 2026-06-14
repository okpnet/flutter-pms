import 'package:condition_pipeline/condition_pipeline.dart';

typedef ExtractCallBack<T> = dynamic Function(T left, IFieldCondition conditon);

abstract interface class IFieldConditionConverter {}

///フィールドの条件を変換する
class FieldConditionConverter<T, R> implements IFieldConditionConverter {
  final FieldOperatorVisitor<T, R> opVisitor;
  final ExtractCallBack<T> extractValue;

  FieldConditionConverter({
    required this.opVisitor,
    required this.extractValue,
  });

  ///[cond]条件と基準値
  ///[left]比較
  ///[rightValue]
  R evaluateValueField(
    ValueFieldCondition cond,
    T left,
    ConditionValue rightValue,
  ) {
    final leftValue = extractValue(left, cond);
    return cond.operator.accept(opVisitor, leftValue, rightValue);
  }

  ///フィールドとフィールドの比較条件に変換します
  ///[cond]フィールド基準
  ///[left]渡された値
  ///[rightValue]フィールド条件の基準値
  R evaluateFieldReference(
    FieldReferenceCondition cond,
    T left,
    FieldReferenceValue<T> rightValue,
  ) {
    return cond.operator.accept(opVisitor, left, rightValue);
  }
}
