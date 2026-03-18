import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql_lib/providers/graphql/client_provider.dart';
import 'package:pms_graphql_lib/graphql/generated/staff.graphql.dart';
import 'package:pms_graphql_lib/graphql/generated/schema.graphql.dart';

void main() {
  const String url = 'http://okp-03.local:8080/v1/graphql';
  const Map<String, String> headers = {'x-hasura-admin-secret': 'admin'};
  test('adds one to input values', () async {
    // タイムアウト時間を30秒に延長（デフォルトは10秒）
    final clinet = GraphQLClientProvider(url, headers: headers, timeLimit: 30);
    final testValue = 'test';
    final variables = Variables$Query$StaffQuery(
      remove: false,
      where: Input$tests_info_staff_bool_exp(
        name: Input$String_comparison_exp($_ilike: '%$testValue%'),
      ),
    );
    final options = Options$Query$StaffQuery(variables: variables);
    final json = variables.toJson();
    debugPrint(json.toString());
    final result = await clinet.query(options);
    debugPrint(result.exception?.toString());
    // より具体的なアサーション
    expect(result.hasException, false);
    expect(result.data, isNotNull);
    expect(result.data!['staff'], isA<List>()); // データ構造の検証
  });
}
