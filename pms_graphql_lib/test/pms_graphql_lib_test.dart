import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql_lib/providers/graphql/client_provider.dart';
import 'package:pms_graphql_lib/graphql/generated/staff.graphql.dart';
import 'package:pms_graphql_lib/graphql/generated/schema.graphql.dart';

void main() {
  test('adds one to input values', () async {
    final clinet = GraphQLClientProvider('http://localhost:8080/graphql');
    final testValue = 'test';
    final variables = Variables$Query$StaffQuery(
      remove: false,
      where: Input$tests_info_staff_bool_exp(
        name: Input$String_comparison_exp($_ilike: '%$testValue%'),
      ),
    );
    final options = Options$Query$StaffQuery(variables: variables);
    final result = await clinet.query(options);
  });
}
