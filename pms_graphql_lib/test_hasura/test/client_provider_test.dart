import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql_lib/graphql_converters/collection/graphql_converter_collection.dart';
import 'package:pms_graphql_lib/providers/client_provider.dart';
import 'package:pms_logger_lib/logger_provider.dart';
import '../graphql/generated/schema.graphql.dart';
import '../graphql/generated/staff.graphql.dart';
import 'staffs/staff_edit_model.dart';
import 'staffs/staff_edit_model_converter.dart';

void main() {
  const String endpoint = 'http://okp-03.local:8080/v1/graphql';
  test('should execute query successfully', () async {
    final provider = GraphQLClientProvider(
      endpoint,
      headers: {
        'content-type': 'application/json',
        'x-hasura-admin-secret': 'admin',
      },
      timeLimit: 10,
      logger: Logger(),
    );
    final queryOptions = Options$Query$StaffQuery(
      variables: Variables$Query$StaffQuery(
        remove: false,
        where: Input$tests_info_staff_bool_exp(),
      ),
    );
    final result = await provider.query(queryOptions);
    debugPrint(result.data.toString());
    debugPrint(result.exception.toString());
    expect(result.hasException, false);
  });

  test('should execute mutation successfully', () async {
    final insertModel = StaffEditModel(
      name: 'test',
      code: 'code',
      info_staff_id: null, //'00000000-0000-0000-0000-000000000000',
    );
    final collection = GraphQLConverterCollection([
      CollectionItem<StaffEditModel>(StaffEditModelConverter()),
    ]);
    final provider = GraphQLClientProvider(
      endpoint,
      headers: {
        'content-type': 'application/json',
        'x-hasura-admin-secret': 'admin',
      },
      timeLimit: 10,
      converterCollection: collection,
      logger: Logger(),
    );
    final result = await provider.save([insertModel]);
    debugPrint(result.first.data.toString());
    debugPrint(result.first.exception.toString());
    expect(result.first.hasException, false);
  });
}
