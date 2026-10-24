import 'package:data_strategist/lib.dart';
import 'package:flutter_test/flutter_test.dart';

/// find に渡された引数を記録するだけのレポジトリ
class _RecordingRepository implements IDataRepository<List<int>> {
  int? take;
  int? skip;
  Expression? predicate;
  SortExpression? orders;

  @override
  Future<List<int>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async {
    this.take = take;
    this.skip = skip;
    this.predicate = predicate;
    this.orders = orders;
    return [take, skip];
  }
}

class _ThrowingRepository implements IDataRepository<int> {
  @override
  Future<int> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) => throw StateError('repository error');
}

void main() {
  group('PredicateModel', () {
    test('copyWith は指定した項目だけ差し替える', () {
      final model = PredicateModel(take: 10, skip: 5);
      final copy = model.copyWith(skip: 20);
      expect(copy.take, 10);
      expect(copy.skip, 20);
      expect(copy.predicate, isNull);
      expect(copy.orders, isNull);
    });

    test('toJson は件数と開始位置を含む', () {
      final json = PredicateModel(take: 3, skip: 1).toJson();
      expect(json, {'take': 3, 'skip': 1, 'predicate': null, 'orders': null});
    });
  });

  group('QueryState', () {
    test('limit 省略時は defaultTakeCount', () {
      final state = QueryState<List<int>>(
        expressionVisitorType: ExpressionVisitorType.list,
        repository: _RecordingRepository(),
      );
      expect(state.fetchLimit, QueryState.defaultTakeCount);
    });

    test('limit を指定できる', () {
      final state = QueryState<List<int>>(
        expressionVisitorType: ExpressionVisitorType.sql,
        repository: _RecordingRepository(),
        limit: 50,
      );
      expect(state.fetchLimit, 50);
    });

    test('toJson', () {
      final state = QueryState<List<int>>(
        expressionVisitorType: ExpressionVisitorType.graphQl,
        repository: _RecordingRepository(),
        limit: 7,
      );
      expect(state.toJson(), {
        'fetchLimit': 7,
        'expressionVisitorType': 'graphQl',
        'repository': '_RecordingRepository',
      });
    });
  });

  group('QueryFacade', () {
    test('execute は条件をそのままレポジトリへ渡し結果を返す', () async {
      final repository = _RecordingRepository();
      final state = QueryState<List<int>>(
        expressionVisitorType: ExpressionVisitorType.list,
        repository: repository,
      );
      final result = await state.facade.execute(
        PredicateModel(take: 4, skip: 8),
      );
      expect(result, [4, 8]);
      expect(repository.take, 4);
      expect(repository.skip, 8);
      expect(repository.predicate, isNull);
      expect(repository.orders, isNull);
    });

    test('レポジトリの例外は加工せず伝わる', () async {
      final state = QueryState<int>(
        expressionVisitorType: ExpressionVisitorType.list,
        repository: _ThrowingRepository(),
      );
      expect(
        state.facade.execute(PredicateModel(take: 1, skip: 0)),
        throwsA(isA<StateError>()),
      );
    });

    test('toJson は state を含む', () {
      final state = QueryState<List<int>>(
        expressionVisitorType: ExpressionVisitorType.list,
        repository: _RecordingRepository(),
      );
      expect(state.facade.toJson(), {'state': state.toJson()});
    });
  });
}
