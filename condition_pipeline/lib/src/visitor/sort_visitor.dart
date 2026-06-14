import '../condition/condition.dart';
import '../converter/converter.dart';
import 'visit.dart';

///ソート条件ツリーを循環して条件ノードを取得して、[R]に変換する式に変換にします。
class GenericSortVisitor<T, R> extends Visitor<T, R>
    with SortVisiterMixin<T, R> {
  @override
  final FieldSortConverter<T, R> converter;
  @override
  final R Function(R left, R right, GruleRule grue) combine;
  @override
  final R Function(R)? group;

  GenericSortVisitor({
    required this.converter,
    required this.combine,
    this.group,
  });
}

///ソート条件ノードを[R]に変換します。
mixin SortVisiterMixin<T, R> on Visitor<T, R> {
  FieldSortConverter<T, R> get converter;
  @override
  Iterable<SearchCondition> getVisitList(List<SearchCondition> list) =>
      list.where((t) => t is ISortCondition || t is IParentCondition);
  @override
  R evaluate(SearchCondition condition, T item) {
    return switch (condition) {
      SortCondition valueField => converter.evaluateSort(
        valueField,
        item,
        SortValue<T>(SortValueItem(field: condition.field)),
      ),
      _ => throw UnsupportedError('Unknown condition type'),
    };
  }
}
