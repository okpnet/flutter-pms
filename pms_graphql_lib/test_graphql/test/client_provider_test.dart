import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql_lib/graphql_converters/collection/graphql_converter_collection.dart';
import 'package:pms_graphql_lib/providers/client_provider.dart';
import 'package:pms_logger_lib/logger_provider.dart';

import '../graphql/generated/get_users.graphql.dart';
import 'user/user_edit_model.dart';
import 'user/user_edit_model_converter.dart';

void main() {
  test('should execute query successfully', () async {
    final provider = GraphQLClientProvider(
      'https://gorest.co.in/public/v2/graphql',
      headers: {'Authorization': 'Bearer YOUR_TOKEN'},
      timeLimit: 10,
      logger: Logger(),
    );

    final result = await provider.query(Options$Query$GetUsers());
    debugPrint(result.data.toString());
    expect(result.hasException, false);
  });

  test('should handle query error', () async {
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
      email: '274FE040-8315-44E6-8634-0F73DEEE13BF@example.com',
      gender: 'male',
      name: 'Test User',
      status: 'active',
    );
    final result = await provider.save([insertMolde]);
    debugPrint(result.toString());
    expect(result.first.hasException, false);
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
    expect(result.first.hasException, false);
  });
}
