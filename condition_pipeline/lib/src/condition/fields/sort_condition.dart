import '../condition.dart';

class SortCondition extends SearchCondition implements ISortCondition {
  /// 対象フィールド名
  final String field;

  final Order order;

  SortCondition({required this.field, Order? order}) : order = order ?? .asc;
}
