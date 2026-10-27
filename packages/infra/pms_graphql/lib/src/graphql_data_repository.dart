import 'package:data_strategist/lib.dart';

import 'flat_filter_converter.dart';

/// 問い合わせ変数を受け取り、GraphQLを実行して結果[R]を返す関数。
/// 生成モデルの`Variables$Query$...`への変換と、クライアントでの実行は呼び出し側が行う。
typedef GraphqlFetch<R> = Future<R> Function(Map<String, dynamic> variables);

/// GraphQL(PostGraphile)の取得元(Adapter: `IDataRepository`をGraphQLの問い合わせ変数へ適合させる)。
///
/// `find`の引数を、画面のreadクエリの変数へ次のとおり変換して[fetch]に渡す。
///   - `take`    -> `first`(0は「件数だけ」。ノードは空で`totalCount`だけ返る)
///   - `skip`    -> `offset`(0のときは省略)
///   - `predicate` -> `filter`(query_builder の Expression を connection-filter にし、
///     [filterSpec]の対応表で入れ子のFilterへ展開する。nullのときは省略)
///   - `orders`  -> `orderBy`(列挙値。nullのときは省略)
/// 変数のnullの明示はサーバーが拒否するため、指定が無い項目は変数に含めない。
class GraphqlDataRepository<R> implements IDataRepository<R> {
  GraphqlDataRepository({
    required this.fetch,
    this.filterSpec,
    this.fixedVariables = const {},
  });

  final GraphqlFetch<R> fetch;

  /// 画面ごとの検索条件の対応表(`xxxFilterSpec.spec`)。`predicate`を使うときは必須。
  final FlatFilterSpec? filterSpec;

  /// 常に渡す変数(`languageCodeId`など)。検索条件の変数(1対多の条件)にも使う。
  final Map<String, dynamic> fixedVariables;

  static final _filterBuilder =
      PostgraphileExpressionBuilder<Map<String, dynamic>>();
  static final _sortBuilder =
      SortPostgraphileExpressionBuilder<Map<String, dynamic>>();

  @override
  Future<R> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async {
    if (take < 0) throw ArgumentError.value(take, 'take', '0以上を指定してください');
    if (skip < 0) throw ArgumentError.value(skip, 'skip', '0以上を指定してください');
    final variables = <String, dynamic>{...fixedVariables, 'first': take};
    if (skip > 0) variables['offset'] = skip;
    if (predicate != null) {
      final spec = filterSpec;
      if (spec == null) {
        throw StateError('predicateを使うには filterSpec(画面の検索条件の対応表)が必要です');
      }
      final tree =
          _filterBuilder.build(predicate)(const {})['filter']
              as Map<String, dynamic>;
      final filter = FlatFilterConverter(
        spec,
      ).convertTree(tree, variables: fixedVariables);
      variables['filter'] = filter;
    }
    if (orders != null) {
      final orderBy = _sortBuilder.build(orders)(const {})['orderBy'] as List;
      if (orderBy.isNotEmpty) variables['orderBy'] = orderBy;
    }
    return fetch(variables);
  }
}
