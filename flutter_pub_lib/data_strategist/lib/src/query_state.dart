import 'data_repository.dart';
import 'query_facade.dart';

///ExpressionBuilderに適用するVisitorのタイプ
enum ExpressionVisitorType { list, sql, graphQL }

///レポジトリの状態管理
abstract interface class IQueryState<R> {
  ///1回あたりの取得件数
  int get fetchLimit;

  ///ExpressionBuilderに適用するVisitorのタイプ
  ExpressionVisitorType get expressionVisitorType;

  ///レポジトリを生成
  IDataRepository<R> get repository;

  ///ファサードを生成
  QueryFacade<R> get facade;
}

///クラスがQueeyStateを持っている
///[T]Expressionの引数の型
///[R]問い合わせの結果の型
class QueryState<R> implements IQueryState<R> {
  static const int defaultTakeCount = 4;

  ///1回あたりの取得件数
  @override
  final int fetchLimit;

  ///ExpressionBuilderに適用するVisitorのタイプ
  @override
  final ExpressionVisitorType expressionVisitorType;

  ///データ取得の問い合わせ窓口
  @override
  QueryFacade<R> get facade => QueryFacade<R>(this);

  ///レポジトリを生成
  @override
  final IDataRepository<R> repository;

  QueryState({
    required this.expressionVisitorType,
    required this.repository,
    int? limit,
  }) : fetchLimit = limit ?? defaultTakeCount;
}
