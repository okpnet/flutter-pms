import 'package:data_strategist/lib.dart';

/// [RecordingDataRepository]が受け取った`find`1回分の呼び出し。
class RecordedFind {
  const RecordedFind({
    required this.take,
    required this.skip,
    this.predicate,
    this.orders,
  });

  final int take;
  final int skip;
  final Expression? predicate;
  final SortExpression? orders;

  Map<String, Object?> toJson() => {
    'take': take,
    'skip': skip,
    'predicate': predicate?.toString(),
    'orders': orders?.toString(),
  };
}

/// 呼び出しを記録し、決めておいた結果を返す取得元(Test Double: Spy + Stub)。
///
/// GraphQLにもサーバーにも接続しないため、`foundation`・`features`の単体テストで
/// [IDataRepository]の代わりに差し込む。結果は[result]で固定するか、
/// 呼び出しごとに変えたいときは[onFind]で計算する([onFind]が優先)。
class RecordingDataRepository<R> implements IDataRepository<R> {
  RecordingDataRepository({this.result, this.onFind});

  final R? result;
  final Future<R> Function(RecordedFind call)? onFind;

  /// 受け取った呼び出し(古い順)。
  final calls = <RecordedFind>[];

  @override
  Future<R> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) {
    final call = RecordedFind(
      take: take,
      skip: skip,
      predicate: predicate,
      orders: orders,
    );
    calls.add(call);
    final handler = onFind;
    if (handler != null) return handler(call);
    if (result is! R) {
      throw StateError('result も onFind も指定されていません');
    }
    return Future.value(result as R);
  }
}
