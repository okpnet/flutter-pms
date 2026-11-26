import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:system/system.dart';

/// 基準通貨の ID(`v_currency_rate_latest` の `is_base` の行)。利害関係者の新規登録の通貨の初期値に使う。
void main() {
  Map<String, dynamic> row(String id) => {
    '__typename': 'Query',
    'allVCurrencyRateLatests': {
      '__typename': 'VCurrencyRateLatestsConnection',
      'totalCount': 1,
      'pageInfo': {
        '__typename': 'PageInfo',
        'hasNextPage': false,
        'endCursor': null,
      },
      'nodes': [
        {
          '__typename': 'VCurrencyRateLatest',
          'mstrCurrencyId': id,
          'code': 'JPY',
          'currencySymbol': '円',
          'minorUnit': 0,
          'rateAuto': false,
          'isBase': true,
          'rateDate': null,
          'rate': '1',
          'autoFetched': null,
          'source': null,
          'symbol': 'CUR-1',
        },
      ],
    },
  };

  test('基準通貨の行から通貨 ID を返す(is_base で絞る)', () async {
    final link = ReplayLink()
      ..on('CurrencyRateLatestPageRead', data: row('cur-jpy'));
    expect(await baseCurrencyId(ReplayGraphql.client(link)), 'cur-jpy');
    expect(link.requests.single.variables['filter'], {
      'isBase': {'equalTo': true},
    });
  });

  test('基準通貨の行が無いとき・通信の失敗・GraphQL のエラーは null(初期値を入れない)', () async {
    final empty = ReplayLink()
      ..on(
        'CurrencyRateLatestPageRead',
        data: {
          '__typename': 'Query',
          'allVCurrencyRateLatests': {
            '__typename': 'VCurrencyRateLatestsConnection',
            'totalCount': 0,
            'pageInfo': {
              '__typename': 'PageInfo',
              'hasNextPage': false,
              'endCursor': null,
            },
            'nodes': <Object?>[],
          },
        },
      );
    expect(await baseCurrencyId(ReplayGraphql.client(empty)), isNull);
    final failed = ReplayLink()
      ..on('CurrencyRateLatestPageRead', failWith: Exception('down'));
    expect(await baseCurrencyId(ReplayGraphql.client(failed)), isNull);
    final errors = ReplayLink()
      ..on(
        'CurrencyRateLatestPageRead',
        errors: [const GraphQLError(message: 'permission denied')],
      );
    expect(await baseCurrencyId(ReplayGraphql.client(errors)), isNull);
  });
}
