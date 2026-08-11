import '../../imports.dart';

class MockRepository<R> implements IDataRepository<R> {
  @override
  Future<R> find({
    required int take,
    int skip = 0,
    Expression? pridicate,
    SortExpression? order,
  }) {
    // TODO: implement find
    throw UnimplementedError();
  }
}
