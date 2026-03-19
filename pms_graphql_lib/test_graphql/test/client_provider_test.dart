import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql_lib/providers/client_provider.dart';

import '../queries/generated/get_users.graphql.dart';

void main() {
  test('should execute query successfully', () async {
    final provider = GraphQLClientProvider(
      'https://gorest.co.in/public/v2/graphql',
      headers: {'Authorization': 'Bearer YOUR_TOKEN'},
      timeLimit: 10,
    );

    final result = await provider.query(Options$Query$GetUsers());
    debugPrint(result.data.toString());
    expect(result.hasException, false);
  });
}
