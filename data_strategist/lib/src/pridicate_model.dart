import 'package:query_builder/query_builder.dart';

///プロバイダからアダプタへ条件を引き渡すモデル
abstract interface class IPridicateModel {
  int get take;
  int get skip;
  Expression? get pridicate;
  SortExpression? get orders;
}

class PridicateModel implements IPridicateModel {
  @override
  final SortExpression? orders;

  @override
  final Expression? pridicate;

  @override
  final int skip;

  @override
  final int take;

  PridicateModel({
    required this.take,
    required this.skip,
    this.pridicate,
    this.orders,
  });
}
