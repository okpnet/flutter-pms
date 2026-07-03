import 'package:data_strategist/src/pridicate_model.dart';
import 'package:data_strategist/src/query_state.dart';

///データ取得の問い合わせ窓口
abstract interface class IQueryFacade {
  ///レポジトリからデータ
  List<T> execute<T>(PridicateModel model);
}

///データ取得の問い合わせ窓口
class QueryFacade implements IQueryStateful, IQueryFacade {
  ///レポジトリの状態
  @override
  final QueryState state;

  QueryFacade(this.state);

  ///レポジトリからデータ
  @override
  List<T> execute<T>(PridicateModel model) => state.repository.find(model);
}
