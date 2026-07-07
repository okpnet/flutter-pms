import 'package:data_strategist/src/pridicate_model.dart';
import 'package:data_strategist/src/query_state.dart';

///データ取得の問い合わせ窓口
abstract interface class IQueryFacade<R> {
  ///レポジトリからデータ
  Future<R> execute(PredicateModel model);
}

///データ取得の問い合わせ窓口
class QueryFacade<R> implements IQueryFacade<R>, IQueryStateReturnStatefull<R> {
  ///レポジトリの状態
  @override
  final IQueryStateReturn<R> state;

  QueryFacade(this.state);

  ///レポジトリからデータ
  @override
  Future<R> execute(IPredicateModel model) async => await state.repository.find(
    take: model.take,
    skip: model.skip,
    pridicate: model.pridicate,
    order: model.orders,
  );
}
