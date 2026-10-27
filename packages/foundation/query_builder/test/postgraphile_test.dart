import 'dart:convert';

import 'package:query_builder/query_builder.dart';
import 'package:test/test.dart';

final _builder = PostgraphileExpressionBuilder<Map<String, dynamic>>();
const _arg = <String, dynamic>{};

NameFieldExpression _f(String n) => NameFieldExpression(n);

String _filter(Expression ex) => jsonEncode(_builder.build(ex)(_arg));

void main() {
  group('PostgraphileExpressionBuilder(connection-filter の filter)', () {
    test('equal / not equal', () {
      expect(_filter(EqualExpression(_f('age'), ValueExpression(20))),
          '{"filter":{"age":{"equalTo":20}}}');
      expect(_filter(EqualExpression(_f('age'), ValueExpression(20), isNot: true)),
          '{"filter":{"age":{"notEqualTo":20}}}');
    });

    test('greater / greater or equal', () {
      expect(_filter(GreaterExpression(_f('age'), ValueExpression(20))),
          '{"filter":{"age":{"greaterThan":20}}}');
      expect(_filter(GreaterExpression(_f('age'), ValueExpression(20), isEqulity: true)),
          '{"filter":{"age":{"greaterThanOrEqualTo":20}}}');
    });

    test('like / startWith / endWith は % を付けず、専用の演算子にする', () {
      expect(_filter(LikeExpression(_f('name'), ValueExpression('ry'))),
          '{"filter":{"name":{"includes":"ry"}}}');
      expect(_filter(StartWithExpression(_f('name'), ValueExpression('E'))),
          '{"filter":{"name":{"startsWith":"E"}}}');
      expect(_filter(EndWithExpression(_f('name'), ValueExpression('ry'), isNot: true)),
          '{"filter":{"name":{"notEndsWith":"ry"}}}');
    });

    test('in / not in / is null', () {
      expect(_filter(InExpression(_f('name'), ValueExpression(['a', 'b']))),
          '{"filter":{"name":{"in":["a","b"]}}}');
      expect(_filter(InExpression(_f('name'), ValueExpression(['a']), isNot: true)),
          '{"filter":{"name":{"notIn":["a"]}}}');
      expect(_filter(NullExpression(_f('note'))),
          '{"filter":{"note":{"isNull":true}}}');
      expect(_filter(NullExpression(_f('note'), isNot: true)),
          '{"filter":{"note":{"isNull":false}}}');
    });

    test('日時はISO 8601の文字列にする', () {
      final ex = GreaterExpression(
        _f('updateAt'),
        ValueExpression(DateTime.utc(2026, 10, 27)),
        isEqulity: true,
      );
      expect(_filter(ex),
          '{"filter":{"updateAt":{"greaterThanOrEqualTo":"2026-10-27T00:00:00.000Z"}}}');
    });

    test('and / or は入れ子にでき、列名は平坦化キーのまま出す', () {
      final ex = AndExpression([
        GreaterExpression(_f('age'), ValueExpression(20)),
        OrExpression([
          StartWithExpression(_f('office||name'), ValueExpression('E')),
          EqualExpression(_f('name'), ValueExpression('x')),
        ]),
      ]);
      expect(
        _filter(ex),
        '{"filter":{"and":[{"age":{"greaterThan":20}},'
        '{"or":[{"office||name":{"startsWith":"E"}},{"name":{"equalTo":"x"}}]}]}}',
      );
    });
  });

  group('SortPostgraphileExpressionBuilder(orderBy)', () {
    test('camelCase の列は列挙値(SCREAMING_SNAKE_CASE)になり、指定順を保つ', () {
      final sort = SortListExpression(sortOrderList: [
        SortNameFieldExpression('updateAt', isDesc: true),
        SortNameFieldExpression('name'),
      ]);
      final result = SortPostgraphileExpressionBuilder<Map<String, dynamic>>()
          .build(sort)(_arg);
      expect(jsonEncode(result), '{"orderBy":["UPDATE_AT_DESC","NAME_ASC"]}');
    });
  });
}
