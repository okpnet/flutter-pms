import 'import.dart';

///データの取得元(レポジトリ)のインターフェイス。
///取得手段(リスト・SQL・GraphQLなど)は実装側が隠蔽する。
///[R]問い合わせの結果の型
abstract interface class IDataRepository<R> {
  ///[skip]件を読み飛ばして[take]件を取得する。
  ///[predicate]は抽出条件、[orders]は並び順で、nullは指定なし。
  Future<R> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  });
}
