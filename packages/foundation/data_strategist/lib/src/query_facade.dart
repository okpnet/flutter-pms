import 'predicate_model.dart';
import 'query_state.dart';

///[R]のデータ取得の問い合わせ窓口(Facade)
class QueryFacade<R> {
  ///レポジトリの状態
  final IQueryState<R> state;

  QueryFacade(this.state);

  ///[model]の条件でレポジトリからデータを取得する。
  ///レポジトリの例外は加工せずそのまま呼び出し元へ伝える。
  ///同期的に投げられた例外もFutureのエラーとして伝えるため`async`を付けている。
  Future<R> execute(IPredicateModel model) async => state.repository.find(
    take: model.take,
    skip: model.skip,
    predicate: model.predicate,
    orders: model.orders,
  );

  ///エラー追跡用のJSON。復元には使用しない。
  Map<String, Object?> toJson() => {'state': state.toJson()};
}
