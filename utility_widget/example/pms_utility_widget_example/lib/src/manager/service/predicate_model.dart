import 'package:query_builder/query_builder.dart';
import 'package:trina_grid/trina_grid.dart';

///サービスが受け取る条件モデルのインターフェイス
abstract interface class IPredicateModel {
  ///一度に取得するレコード数
  int get take;

  ///先頭から数えて飛ばすレコード数
  int get skip;

  ///検索条件式
  Expression? get predicate;

  ///並べ替え条件式
  SortExpression? get order;
}

///条件モデル
class PredicateModel implements IPredicateModel {
  @override
  final SortExpression? order;

  @override
  final Expression? predicate;

  @override
  final int skip;

  @override
  final int take;

  PredicateModel._({
    required this.take,
    required this.skip,
    this.predicate,
    this.order,
  });

  factory PredicateModel.create({
    required int take,
    required int skip,
    List<TrinaRow>? filterRows,
    List<TrinaColumn>? orderColumn,
  }) {
    final predicate=
  }
}
