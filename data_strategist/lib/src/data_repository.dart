import 'package:query_builder/query_builder.dart';

abstract interface class IDataRepository<R> {
  Future<R> find({
    required int take,
    int skip = 0,
    Expression? pridicate,
    SortExpression? order,
  });
}
