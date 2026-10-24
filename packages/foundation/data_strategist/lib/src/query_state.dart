import 'data_repository.dart';
import 'query_facade.dart';

///ExpressionBuilderに適用するVisitorのタイプ
enum ExpressionVisitorType { list, sql, graphQl }

///レポジトリの状態管理のインターフェイス
///[R]問い合わせの結果の型
abstract interface class IQueryState<R> {
  ///1回あたりの取得件数
  int get fetchLimit;

  ///ExpressionBuilderに適用するVisitorのタイプ
  ExpressionVisitorType get expressionVisitorType;

  ///データの取得元
  IDataRepository<R> get repository;

  ///データ取得の問い合わせ窓口
  QueryFacade<R> get facade;

  ///エラー追跡用のJSON。復元には使用しない。
  Map<String, Object?> toJson();
}

///レポジトリと取得設定を束ねる状態(State)
///[R]問い合わせの結果の型
class QueryState<R> implements IQueryState<R> {
  ///[limit]を省略したときの1回あたりの取得件数
  static const int defaultTakeCount = 4;

  @override
  final int fetchLimit;

  @override
  final ExpressionVisitorType expressionVisitorType;

  @override
  final IDataRepository<R> repository;

  ///呼び出しごとに新しい窓口を返す(窓口は状態を持たない)
  @override
  QueryFacade<R> get facade => QueryFacade<R>(this);

  QueryState({
    required this.expressionVisitorType,
    required this.repository,
    int? limit,
  }) : fetchLimit = limit ?? defaultTakeCount;

  @override
  Map<String, Object?> toJson() => {
    'fetchLimit': fetchLimit,
    'expressionVisitorType': expressionVisitorType.name,
    'repository': repository.runtimeType.toString(),
  };
}
