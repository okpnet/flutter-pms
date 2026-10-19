import 'pridicate_model.dart';
import 'query_state.dart';

///[R]のデータ取得の問い合わせ窓口
class QueryFacade<R> {
  ///レポジトリの状態
  final IQueryState<R> state;

  QueryFacade(this.state);

  ///レポジトリからデータ
  Future<R> execute(IPredicateModel model) async => await state.repository.find(
    take: model.take,
    skip: model.skip,
    pridicate: model.pridicate,
    order: model.orders,
  );
}
