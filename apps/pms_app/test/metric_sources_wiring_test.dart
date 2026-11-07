import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_app/services/dashboard/dashboard_overrides.dart';
import 'package:pms_app/services/graphql/graphql_overrides.dart';

void main() {
  test('GraphQL に接続しないときは、集計値の元は空', () {
    final container = ProviderContainer(
      overrides: [
        ...dashboardOverrides(),
        graphqlClientProvider.overrideWithValue(null),
      ],
    );
    addTearDown(container.dispose);
    expect(container.read(metricSourcesProvider), isEmpty);
  });

  test('GraphQL に接続するとき、各機能の集計値の元が並ぶ(重複するキーがない)', () {
    final client = GraphQLClient(
      link: HttpLink('http://localhost:0/graphql'),
      cache: GraphQLCache(),
    );
    final container = ProviderContainer(
      overrides: [
        ...dashboardOverrides(),
        graphqlClientProvider.overrideWithValue(client),
      ],
    );
    addTearDown(container.dispose);
    final keys = container.read(metricSourcesProvider).map((s) => s.key);
    expect(
      keys,
      containsAll([
        'staffCount',
        'salesRecord',
        'shippingOrderStatus',
        'shippingCompliance',
        'purchaseAmount',
        'purchaseCompliance',
        'inspectionStatus',
        'workPlanCompliance',
      ]),
    );
    expect(keys.toSet().length, keys.length);
  });
}
