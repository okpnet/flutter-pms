import 'package:data_strategist/src/data_repository.dart';
import 'package:data_strategist/src/filter_expression_adapter.dart';
import 'package:data_strategist/src/query_facade.dart';
import 'package:query_builder/query_builder.dart';
import 'package:trina_grid/trina_grid.dart';

///Tを受け取ってdynamicを返す、FieldExpression、SortExpressionの式
typedef FieldCallback<T> = dynamic Function(T);

///列からフィールド式を返すコマンド
typedef FieldCmdCallback<T> = FieldCallback<T> Function(TrinaColumn);

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

  ///列から検索条件の左辺、FieldExpressionを生成する
  Expression createFieldExpression(TrinaColumn column);

  ///列からソート列を生成する
  SortExpression createSortFieldExpression(TrinaColumn column);
}

///クラスがQueeyStateを持っている
class QueryState<T> implements IQueeyState {
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

  final FieldCmdCallback<T> cmd;

  QueryState({
    required this.take,
    required this.expressionVisitorType,
    required this.repository,
    required this.cmd,
  });

  ///列から検索条件の左辺、FieldExpressionを生成する
  @override
  Expression createFieldExpression(TrinaColumn column) =>
      FieldExpression<T>(cmd(column));

  @override
  ///列からソート列を生成する
  SortExpression createSortFieldExpression(TrinaColumn column) =>
      SortFieldExpression<T>(cmd(column), isDesc: column.sort.isDescending);
}
