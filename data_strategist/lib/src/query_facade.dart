import 'package:data_strategist/src/pridicate_model.dart';
import 'package:data_strategist/src/query_state.dart';

///データ取得の問い合わせ窓口
abstract interface class IQueryFacade<R> {
  ///レポジトリからデータ
  Future<R> execute(PridicateModel model);
}

///データ取得の問い合わせ窓口
class QueryFacade<T, R> implements IQueryStateful, IQueryFacade<R> {
  ///レポジトリの状態
  @override
  final QueryState<T, R> state;

  QueryFacade(this.state);

  ///レポジトリからデータ
  @override
  Future<R> execute(IPridicateModel model) async => await state.repository.find(
    take: model.take,
    skip: model.skip,
    pridicate: model.pridicate,
    order: model.orders,
  );
}
