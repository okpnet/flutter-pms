import '../condition/condition.dart';
import '../converter/converter.dart';
import 'visit.dart';

///フィルター条件ツリーを循環して条件ノードを取得して、[R]に変換する式に変換にします。
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

///フィルター条件ノードを[R]に変換します。
mixin ConditionVisiterMixin<T, R> on Visitor<T, R> {
  FieldConditionConverter<T, R> get converter;
  @override
  Iterable<SearchCondition> getVisitList(List<SearchCondition> list) =>
      list.where((t) => t is IFieldCondition || t is IParentCondition);
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
