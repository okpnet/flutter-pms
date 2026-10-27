import 'package:data_strategist/lib.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql/pms_graphql.dart';

const _spec = FlatFilterSpec('StaffFilter', {
  'name': FlatFilterPath([], 'name'),
  'age': FlatFilterPath([], 'age'),
  'office||name': FlatFilterPath([FilterStep('officeByOfficeId')], 'name'),
});

void main() {
  late Map<String, dynamic> sent;
  late GraphqlDataRepository<String> repo;

  setUp(() {
    sent = {};
    repo = GraphqlDataRepository<String>(
      filterSpec: _spec,
      fixedVariables: {'languageCodeId': 'ja'},
      fetch: (v) async {
        sent = v;
        return 'ok';
      },
    );
  });

  test('条件が無ければ first と固定の変数だけを渡す(nullは含めない)', () async {
    expect(await repo.find(take: 20), 'ok');
    expect(sent, {'languageCodeId': 'ja', 'first': 20});
  });

  test('take 0 は「件数だけ」として first: 0 を渡す', () async {
    await repo.find(take: 0);
    expect(sent['first'], 0);
    expect(sent.containsKey('offset'), isFalse);
  });

  test('skip は offset、predicate は入れ子の filter、orders は orderBy になる', () async {
    await repo.find(
      take: 10,
      skip: 30,
      predicate: AndExpression([
        GreaterExpression(NameFieldExpression('age'), ValueExpression(20)),
        StartWithExpression(
          NameFieldExpression('office||name'),
          ValueExpression('E'),
        ),
      ]),
      orders: SortListExpression(
        sortOrderList: [SortNameFieldExpression('updateAt', isDesc: true)],
      ),
    );
    expect(sent['offset'], 30);
    expect(sent['filter'], {
      'and': [
        {
          'age': {'greaterThan': 20},
        },
        {
          'officeByOfficeId': {
            'name': {'startsWith': 'E'},
          },
        },
      ],
    });
    expect(sent['orderBy'], ['UPDATE_AT_DESC']);
  });

  test('不正な引数・対応表の無い条件はエラー', () async {
    expect(() => repo.find(take: -1), throwsArgumentError);
    expect(() => repo.find(take: 1, skip: -1), throwsArgumentError);
    final noSpec = GraphqlDataRepository<String>(fetch: (_) async => 'x');
    expect(
      () => noSpec.find(
        take: 1,
        predicate: EqualExpression(
          NameFieldExpression('name'),
          ValueExpression('a'),
        ),
      ),
      throwsStateError,
    );
    expect(
      () => repo.find(
        take: 1,
        predicate: EqualExpression(
          NameFieldExpression('nothing'),
          ValueExpression(1),
        ),
      ),
      throwsArgumentError,
    );
  });

  test('QueryFacade 経由でも同じ変数になる', () async {
    final facade = QueryFacade<String>(
      QueryState<String>(
        expressionVisitorType: ExpressionVisitorType.postgraphile,
        repository: repo,
      ),
    );
    await facade.execute(PredicateModel(take: 5, skip: 0));
    expect(sent['first'], 5);
  });
}
