import 'package:data_strategist/src/data_repository.dart';
import 'package:data_strategist/src/filter_expression_adapter.dart';
import 'package:data_strategist/src/query_facade.dart';

///ExpressionBuilderに適用するVisitorのタイプ
enum ExpressionVisitorType { list, sql, graphQL }

///クラスがQueeyStateを持っている
abstract interface class IQueryStateful {
  QueryState get state;
}

///レポジトリの状態管理
abstract interface class IQueeyState {
  ///ExpressionBuilderに適用するVisitorのタイプ
  ExpressionVisitorType get expressionVisitorType;

  ///レポジトリを生成
  IDataRepository get repository;

  ///ファサードを生成
  QueryFacade get facade;

  ///TrinaGridのフィルターから、条件式モデルを生成する
  FilterExpressionAdapter get adapter;
}

///クラスがQueeyStateを持っている
class QueryState implements IQueeyState {
  static const int defaultTakeCount = 4;

  final int take;

  ///ExpressionBuilderに適用するVisitorのタイプ
  @override
  final ExpressionVisitorType expressionVisitorType;

  ///データ取得の問い合わせ窓口
  @override
  QueryFacade get facade => QueryFacade(this);

  ///レポジトリを生成
  @override
  final IDataRepository repository;

  ///TrinaGridのフィルターから、条件式モデルを生成する
  @override
  FilterExpressionAdapter get adapter =>
      FilterExpressionAdapter(state: this, take: take);

  QueryState({
    required this.take,
    required this.expressionVisitorType,
    required this.repository,
  });
}
