import '../condition/condition.dart';
import '../converter/converter.dart';
import 'visit.dart';

/// フィルター条件ツリーを巡回し、条件ノードを評価して [R] 型に変換するビジター実装。
/// - [converter]: 各フィールド条件を評価するための [FieldConditionConverter]。
/// - [combine]: 子ノードを結合するための関数。引数は [left], [right], [GruleRule]。
/// - [group]: グループ化（ネスト）された結果を加工するためのオプション関数。
class GenericConditionVisitor<T, R> extends Visitor<T, R>
    with ConditionVisiterMixin<T, R> {
  @override
  final FieldConditionConverter<T, R> converter;
  @override
  final R Function(R left, R right, GruleRule grue) combine;
  @override
  final R Function(R)? group;

  GenericConditionVisitor({
    required this.converter,
    required this.combine,
    this.group,
  });
}

/// フィルター条件ノードを [R] に変換する振る舞いを提供するミックスイン。
/// - [getVisitList]: ビジタが巡回対象とするノードをフィルタリングします。
/// - [evaluate]: 指定した [condition] を評価し、[item] に基づいて [R] を返します。
mixin ConditionVisiterMixin<T, R> on Visitor<T, R> {
  FieldConditionConverter<T, R> get converter;

  @override
  Iterable<SearchCondition> getVisitList(List<SearchCondition> list) =>
      list.where((t) => t is IFieldCondition || t is IParentCondition);

  /// [evaluate]: 条件ノード [condition] を [item] を使って評価します。
  /// - [ValueFieldCondition]: [converter.evaluateValueField] を呼び出して評価します。
  /// - [FieldReferenceCondition]: [converter.evaluateFieldReference] を呼び出して評価します。
  @override
  R evaluate(SearchCondition condition, T item) {
    return switch (condition) {
      ValueFieldCondition valueField => converter.evaluateValueField(
        valueField,
        item,
        valueField.value,
      ),
      FieldReferenceCondition refField => converter.evaluateFieldReference(
        refField,
        item,
        FieldReferenceValue(
          FieldReferenceItem(left: refField.field, right: refField.toField),
        ),
      ),
      _ => throw UnsupportedError('Unknown condition type'),
    };
  }
}
