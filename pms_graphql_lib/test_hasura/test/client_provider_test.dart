import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql_lib/graphql_converters/collection/graphql_converter_collection.dart';
import 'package:pms_graphql_lib/pms_graphql_provider.dart';
import 'package:pms_logger_lib/logger_provider.dart';
import '../graphql/generated/schema.graphql.dart';
import '../graphql/generated/sort.graphql.dart' hide Enum$order_by;
import '../graphql/generated/staff.graphql.dart';
import 'staffs/staff_edit_model.dart';
import 'staffs/staff_edit_model_converter.dart';

void main() {
  const String endpoint = 'http://okp-03.local:8080/v1/graphql';
  const String failendpoint = 'http://www.example.com';
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
        order_by:[Input$tests_info_staff_order_by(name: Enum$order_by.asc))] 
      ),
    );
    final result = await provider.query(queryOptions);
    debugPrint(result.data.toString());
    debugPrint(result.exception.toString());
    expect(result.hasException, false);
  });

  test('should execute mutation successfully', () async {
    final insertModel = StaffEditModel(
      name: 'testtesttesttest',
      code: 'AAAAAAAA',
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
      isHasura: true,
      converterCollection: collection,
      logger: Logger(),
    );
    final result = await provider.save([insertModel]);
    debugPrint(result.map((e) => e.data).toString());
    debugPrint(result.first.exception.toString());
    expect(result.first.hasException, false);
  });
  test('should execute update successfully', () async {
    final updateModel = StaffEditModel(
      name: 'test',
      code: 'ABBBC',
      info_staff_id: '8c069b8b-388c-4815-be90-6a13ad471976',
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
      isHasura: true,
      converterCollection: collection,
      logger: Logger(),
    );
    final result = await provider.save([updateModel]);
    debugPrint(result.first.data.toString());
    debugPrint(result.first.exception.toString());
    expect(result.first.hasException, false);
  });

  test('should execute multiple insert successfully', () async {
    final insertModel1 = StaffEditModel(name: 'multi test4', code: 'ABC4');
    final insertModel2 = StaffEditModel(name: 'multi test5', code: 'ABC5');
    final insertModel3 = StaffEditModel(name: 'multi test6', code: 'ABC6');
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
      isHasura: true,
      logger: Logger(),
    );
    final result = await provider.save([
      insertModel1,
      insertModel2,
      insertModel3,
    ]);
    debugPrint(result.map((e) => e.data).toString());
    debugPrint(result.first.exception.toString());
    expect(result.first.hasException, false);
  });

  test('should execute multiple insert successfully', () async {
    final insertModel1 = StaffEditModel(
      name: 'multi test4',
      code: 'ABC4',
      info_staff_id: '6d81899b-3ee5-42d3-94fd-915640ac33b6',
    );
    final insertModel2 = StaffEditModel(
      name: 'multi test5',
      code: 'ABC5',
      info_staff_id: 'a0ef1418-0dc4-4bc0-a04e-23c5429bcb98',
    );
    final insertModel3 = StaffEditModel(
      name: 'multi test6',
      code: 'ABC6',
      info_staff_id: 'daf315bd-cc3c-4096-a977-a6a934645cab',
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
      isHasura: true,
      logger: Logger(),
    );
    final result = await provider.save([
      insertModel1,
      insertModel2,
      insertModel3,
    ]);
    debugPrint(result.map((e) => e.data).toString());
    debugPrint(result.first.exception.toString());
    expect(result.first.hasException, false);
  });

  test('should timeout exception ', () async {
    final provider = GraphQLClientProvider(
      failendpoint,
      headers: {
        'content-type': 'application/json',
        'x-hasura-admin-secret': 'admin',
      },
      timeLimit: 1,
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
}
