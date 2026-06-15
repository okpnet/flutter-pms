import '../condition/condition.dart';
import '../converter/converter.dart';
import 'visit.dart';

/// ソート条件ツリーを巡回し、条件ノードを評価して [R] に変換するビジター実装。
/// - [converter]: 各ソート条件を評価するための [FieldSortConverter]。
/// - [combine]: 子ノードを結合するための関数。引数は [left], [right], [GruleRule]。
/// - [group]: グループ化された結果を加工するためのオプション関数。
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

/// ソート条件ノードを [R] に変換する振る舞いを提供するミックスイン。
/// - [getVisitList]: ビジタが巡回対象とするノードをフィルタリングします。
/// - [evaluate]: 指定した [condition] を評価し、[item] に基づいて [R] を返します。
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
