import 'package:query_builder/query_builder.dart';

///プロバイダからアダプタへ条件を引き渡すモデル
abstract interface class IPredicateModel {
  int get take;
  int get skip;
  Expression? get pridicate;
  SortExpression? get orders;
  PredicateModel copyWith({
    SortExpression? orders,
    Expression? pridicate,
    int? skip,
    int? take,
  });
}

class PredicateModel implements IPredicateModel {
  @override
  final SortExpression? orders;

  @override
  final Expression? pridicate;

  @override
  final int skip;

  @override
  final int take;

  PredicateModel({
    required this.take,
    required this.skip,
    this.pridicate,
    this.orders,
  });

  /// コピーを作成する
  @override
  PredicateModel copyWith({
    SortExpression? orders,
    Expression? pridicate,
    int? skip,
    int? take,
  }) {
    return PredicateModel(
      take: take ?? this.take,
      skip: skip ?? this.skip,
      pridicate: pridicate ?? this.pridicate,
      orders: orders ?? this.orders,
    );
  }
}
