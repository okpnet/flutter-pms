import 'import.dart';

///レポジトリへ問い合わせ
abstract interface class IDataRepository<R> {
  Future<R> find({
    required int take,
    int skip = 0,
    Expression? pridicate,
    SortExpression? order,
  });
}
