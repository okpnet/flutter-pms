// 従業員数の取得(GraphQL)の通信テスト。
//
// 1) 検証用サーバー(読み取り専用)に対して、実際に取得して合計できること。
// 2) 通信の異常(遅延・切断・認証エラー・認証ヘッダー)は、ローカルの代役サーバーで再現する。
//    取得関数は例外を加工せず呼び出し元へ伝える(ログは page_mediator_extension が出す)。
import 'dart:async';

import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:organization/src/dashboard/staff_count_metric_source.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

/// [client] で従業員数を取得する。
Future<MetricValue> fetchMetric(GraphQLClient client) => StaffCountMetricSource(
  GraphqlDataRepository<StaffCountPage>(
    fetch: staffCountFetch(client),
    filterSpec: StaffCountPageFilterSpec.spec,
  ),
).metric(null);

GraphQLClient clientTo(String url, {Map<String, String> headers = const {}}) =>
    GraphQLClient(
      link: HttpLink(url, defaultHeaders: headers),
      cache: GraphQLCache(),
    );

void main() {
  group('検証用サーバー', () {
    serverTest('従業員数を取得して合計できる(読み取り専用)', (server) async {
      final value = await fetchMetric(server.provider.client);
      expect(value.value, greaterThanOrEqualTo(0));
      expect(value.unit, '人');
    });
  });

  group('通信の異常(代役サーバー)', () {
    late FaultyGraphqlServer server;

    setUp(() async {
      server = await FaultyGraphqlServer.start();
      server.data = {
        '__typename': 'Query',
        'allVStaffCounts': {
          '__typename': 'VStaffCountsConnection',
          'totalCount': 0,
          'pageInfo': {
            '__typename': 'PageInfo',
            'hasNextPage': false,
            'endCursor': null,
          },
          'nodes': <Object?>[],
        },
      };
    });
    tearDown(() => server.close());

    test('正常な応答は読める', () async {
      final value = await fetchMetric(clientTo(server.url));
      expect(value.value, 0);
      expect(server.requestCount, 1);
    });

    test('認証ヘッダーが要求に付く', () async {
      await fetchMetric(
        clientTo(server.url, headers: {'Authorization': 'Bearer test-token'}),
      );
      expect(server.requests.single.authorization, 'Bearer test-token');
    });

    test('遅延は、待てば成功し、呼び出し側が制限時間を決めれば TimeoutException', () async {
      server.kind = FaultKind.delay;
      server.delay = const Duration(milliseconds: 400);
      final slow = await fetchMetric(clientTo(server.url));
      expect(slow.value, 0);
      await expectLater(
        fetchMetric(
          clientTo(server.url),
        ).timeout(const Duration(milliseconds: 100)),
        throwsA(isA<TimeoutException>()),
      );
    });

    test('切断・認証エラーは OperationException として伝わる', () async {
      for (final kind in [
        FaultKind.dropMidResponse,
        FaultKind.dropBeforeResponse,
        FaultKind.status,
      ]) {
        server.kind = kind;
        await expectLater(
          fetchMetric(clientTo(server.url)),
          throwsA(isA<OperationException>()),
          reason: '$kind',
        );
      }
    });

    test('切断のあと、サーバーが戻れば次の取得は成功する', () async {
      server.kind = FaultKind.dropMidResponse;
      await expectLater(
        fetchMetric(clientTo(server.url)),
        throwsA(isA<OperationException>()),
      );
      server.kind = FaultKind.none;
      final value = await fetchMetric(clientTo(server.url));
      expect(value.value, 0);
    });
  });
}
