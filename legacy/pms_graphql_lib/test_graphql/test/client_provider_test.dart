import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql_lib/graphql_converters/collection/graphql_converter_collection.dart';
import 'package:pms_graphql_lib/pms_graphql_provider.dart';
import 'package:pms_graphql_lib/results/graphql_prover_result.dart';
import 'package:pms_graphql_model_lib/graphql/generated/staff.graphql.dart';
import 'package:pms_logger_lib/logger_provider.dart';

import '../graphql/generated/get_users.graphql.dart';
import 'user/user_edit_model.dart';
import 'user/user_edit_model_converter.dart';

void main() {
  const String url = 'https://gorest.co.in/public/v2/graphql';
  const String failUrl = 'https://fail.example.com';
  test('should execute query successfully', () async {
    final provider = GraphQLClientProvider(
      url,
      timeLimit: 10,
      logger: Logger(),
    );

    final result = await provider.query(Options$Query$GetUsers());
    var except = false;
    switch (result) {
      case Ok<Map<String, dynamic>> resultOk:
        debugPrint(resultOk.value.toString());
        except = true;
        break;
      case Err<Map<String, dynamic>> resultFail:
        debugPrint(resultFail.toString());
        break;
      default:
        debugPrint(result.toString());
        break;
    }
    debugPrint(result.toString());
    expect(true, except);
  });
  test('should execute query timeout', () async {
    final provider = GraphQLClientProvider(url, timeLimit: 0, logger: Logger());

    final result = await provider.query(Options$Query$GetUsers());
    debugPrint(result.toString());
    expect(result is Err, true);
  });
  test('should handle url fail error', () async {
    final collection = GraphQLConverterCollection([
      CollectionItem<UserEditModel>(UserEditModelConverter()),
    ]);
    final provider = GraphQLClientProvider(
      failUrl,
      converterCollection: collection,
      timeLimit: 10,
      logger: Logger(),
    );
    final query = Options$Query$GetUsers();
    final result = await provider.query(query);
    debugPrint(result.toString());

    expect(true, result is Err);
  });

  test('should handle insert', () async {
    final collection = GraphQLConverterCollection([
      CollectionItem<UserEditModel>(UserEditModelConverter()),
    ]);
    final provider = GraphQLClientProvider(
      'https://gorest.co.in/public/v2/graphql',
      headers: {
        'Authorization':
            'Bearer a00529e606f30380916dbb644242bb8cceda39c4ce0ed2ee70d6b7106bca4bfe',
      },
      converterCollection: collection,
      timeLimit: 10,
      logger: Logger(),
    );
    //data: {createUser: {user: {id: 8404353, name: Test User, email: FCEBB0A5-52D2-41E0-B293-29687C268D5D@example.com, gender: male, status: active, __typename: user},
    //data: {createUser: {user: {id: 8404361, name: Test User, email: 274FE040-8315-44E6-8634-0F73DEEE13BF@example.com, gender: male, status: active, __typename: user}
    final insertMolde = UserEditModel(
      id: 0,
      email: '941768E8-14DE-47DB-B445-4A114BF7879C@example.com',
      gender: 'male',
      name: 'Test User',
      status: 'active',
    );
    final result = await provider.save([insertMolde]);
    debugPrint(result.toString());
    expect(true, result.where((val) => val is Ok).length == result.length);
  });

  test('should handle update', () async {
    final collection = GraphQLConverterCollection([
      CollectionItem<UserEditModel>(UserEditModelConverter()),
    ]);
    final provider = GraphQLClientProvider(
      'https://gorest.co.in/public/v2/graphql',
      headers: {
        'Authorization':
            'Bearer a00529e606f30380916dbb644242bb8cceda39c4ce0ed2ee70d6b7106bca4bfe',
      },
      converterCollection: collection,
      timeLimit: 10,
      logger: Logger(),
    );

    final updateMolde = UserEditModelMapper.fromJson(
      '{"id": 8404353, "name": "Test User mickel", "email": "FCEBB0A5-52D2-41E0-B293-29687C268D5D@example.com", "gender": "male", "status": "active"}',
    );
    final result = await provider.save([updateMolde]);
    debugPrint(result.toString());
    expect(result.where((val) => val is Ok).length == result.length, true);
  });

  test('should handle asc sort', () async {
    final provider = GraphQLClientProvider(
      url + '/users?sort=name&order=asc',
      timeLimit: 10,
      logger: Logger(),
    );
    final result = await provider.query(Options$Query$GetUsers());
    debugPrint(result.toString());
    expect(result is Err, true);
  });
}
