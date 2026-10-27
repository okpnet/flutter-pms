import 'dart:convert';

import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:query_builder/query_builder.dart';

final _pg = PostgraphileExpressionBuilder<Map<String, dynamic>>();
String _filter(Expression e) => jsonEncode(_pg.build(e)(const {})['filter']);

void main() {
  group('FilterCondition -> Expression(PostGraphile)', () {
    test('各演算子', () {
      String f(FilterOperator op, List<Object?> v) =>
          _filter(FilterCondition('age', op, v).toExpression());
      expect(f(FilterOperator.eq, [20]), '{"age":{"equalTo":20}}');
      expect(f(FilterOperator.neq, [20]), '{"age":{"notEqualTo":20}}');
      expect(f(FilterOperator.inList, [1, 2]), '{"age":{"in":[1,2]}}');
      expect(f(FilterOperator.notInList, [1]), '{"age":{"notIn":[1]}}');
      expect(f(FilterOperator.ge, [20]), '{"age":{"greaterThanOrEqualTo":20}}');
      expect(f(FilterOperator.gt, [20]), '{"age":{"greaterThan":20}}');
      expect(f(FilterOperator.le, [20]), '{"age":{"lessThanOrEqualTo":20}}');
      expect(f(FilterOperator.lt, [20]), '{"age":{"lessThan":20}}');
      expect(
        f(FilterOperator.between, [10, 20]),
        '{"and":[{"age":{"greaterThanOrEqualTo":10}},{"age":{"lessThanOrEqualTo":20}}]}',
      );
      expect(f(FilterOperator.startsWith, ['a']), '{"age":{"startsWith":"a"}}');
      expect(f(FilterOperator.notEndsWith, ['a']), '{"age":{"notEndsWith":"a"}}');
    });

    test('LIKE は前方・後方・部分・完全一致に直し、それ以外は UnsupportedError', () {
      String like(String p, {bool not = false}) => _filter(
        FilterCondition(
          'name',
          not ? FilterOperator.notLike : FilterOperator.like,
          [p],
        ).toExpression(),
      );
      expect(like('ab%'), '{"name":{"startsWith":"ab"}}');
      expect(like('%ab'), '{"name":{"endsWith":"ab"}}');
      expect(like('%ab%'), '{"name":{"includes":"ab"}}');
      expect(like('ab'), '{"name":{"equalTo":"ab"}}');
      expect(like('%ab%', not: true), '{"name":{"notIncludes":"ab"}}');
      expect(() => like('a%b'), throwsUnsupportedError);
      expect(() => like('a_b'), throwsUnsupportedError);
    });

    test('値が足りない条件は ArgumentError', () {
      expect(
        () => const FilterCondition('age', FilterOperator.eq, []).toExpression(),
        throwsArgumentError,
      );
      expect(
        () => const FilterCondition('age', FilterOperator.between, [1]).toExpression(),
        throwsArgumentError,
      );
    });
  });

  test('複数条件は AND、無ければ null。LoadQuery から抽出条件・並び順を取り出せる', () {
    expect(<FilterCondition>[].toExpression(), isNull);
    final query = LoadQuery(
      start: 0,
      count: 20,
      filters: const [
        FilterCondition('age', FilterOperator.gt, [20]),
        FilterCondition('name', FilterOperator.startsWith, ['E']),
      ],
      sort: const SortCondition('updateAt', ascending: false),
    );
    expect(
      _filter(query.predicate!),
      '{"and":[{"age":{"greaterThan":20}},{"name":{"startsWith":"E"}}]}',
    );
    final order = SortPostgraphileExpressionBuilder<Map<String, dynamic>>()
        .build(query.orders!)(const {});
    expect(order['orderBy'], ['UPDATE_AT_DESC']);
    expect(const LoadQuery().predicate, isNull);
    expect(const LoadQuery().orders, isNull);
  });

  test('メモリ上の比較(ConditionMatcher)と同じ結果になる(数値)', () {
    final list = ListExpressionBuilder<Map<String, dynamic>>();
    final field = FieldExpression<Map<String, dynamic>>((m) => m['age']);
    // list 用は NameField ではなく FieldExpression が必要なため、同じ演算子を直接組む。
    for (final age in [5, 10, 15, 20, 25]) {
      final between = AndExpression([
        GreaterExpression(field, ValueExpression(10), isEqulity: true),
        GreaterExpression(field, ValueExpression(20), isLess: true, isEqulity: true),
      ]);
      final viaExpression = list.build(between)({'age': age});
      final viaMatcher = ConditionMatcher.matches(
        '$age',
        ColumnType.number,
        const FilterCondition('age', FilterOperator.between, [10, 20]),
      );
      expect(viaExpression, viaMatcher, reason: 'age=$age');
    }
  });
}
