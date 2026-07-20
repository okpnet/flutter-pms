import 'package:data_strategist/src/data_repository.dart';
import 'package:data_strategist/src/filter_expression_adapter.dart';
import 'package:data_strategist/src/query_facade.dart';
import 'package:query_builder/query_builder.dart';
import 'package:trina_grid/trina_grid.dart';

///Tを受け取ってdynamicを返す、FieldExpression、SortExpressionの式
typedef FieldCallback<T> = dynamic Function(T);

///列からフィールド式を返すコマンド
typedef FieldCmdCallback<T> = FieldCallback<T> Function(String);

///ExpressionBuilderに適用するVisitorのタイプ
enum ExpressionVisitorType { list, sql, graphQL }

///レポジトリの状態管理
abstract interface class IQueryState {
  ///ExpressionBuilderに適用するVisitorのタイプ
  ExpressionVisitorType get expressionVisitorType;

  ///レポジトリを生成
  IDataRepository get repository;

  ///ファサードを生成
  QueryFacade get facade;

  ///TrinaGridのフィルターから、条件式モデルを生成する
  FilterExpressionAdapter get adapter;

  ///列から検索条件の左辺、FieldExpressionを生成する
  Expression createFieldExpression(String field);

  ///列からソート列を生成する
  SortExpression createSortFieldExpression(TrinaColumn column);
}

///引数の型を持つState
abstract interface class IQueryStateArgment<T> {
  FieldCmdCallback<T> get cmd;
}

///戻り値の型を持つState
abstract interface class IQueryStateReturn<R> {
  ///レポジトリを生成
  IDataRepository<R> get repository;
}

///戻り値の型を持つStateの実装
abstract interface class IQueryStateReturnStatefull<R> {
  IQueryStateReturn get state;
}

///クラスがQueeyStateを持っている
///[T]Expressionの引数の型
///[R]問い合わせの結果の型
class QueryState<T, R>
    implements IQueryState, IQueryStateArgment<T>, IQueryStateReturn<R> {
  static const int defaultTakeCount = 4;

  ///ExpressionBuilderに適用するVisitorのタイプ
  @override
  final ExpressionVisitorType expressionVisitorType;

  ///データ取得の問い合わせ窓口
  @override
  QueryFacade<R> get facade => QueryFacade<R>(this);

  ///レポジトリを生成
  @override
  final IDataRepository<R> repository;

  ///TrinaGridのフィルターから、条件式モデルを生成する
  @override
  FilterExpressionAdapter get adapter => FilterExpressionAdapter(state: this);

  @override
  final FieldCmdCallback<T> cmd;

  QueryState({
    required this.expressionVisitorType,
    required this.repository,
    required this.cmd,
  });

  ///列から検索条件の左辺、FieldExpressionを生成する
  @override
  Expression createFieldExpression(String field) =>
      FieldExpression<T>(cmd(field));

  @override
  ///列からソート列を生成する
  SortExpression createSortFieldExpression(TrinaColumn column) =>
      SortFieldExpression<T>(
        cmd(column.field),
        isDesc: column.sort.isDescending,
      );
}
