import 'package:graphql/src/core/mutation_options.dart';
import 'package:pms_graphql_lib/graphql_converters/collection/graphql_converter_collection.dart';

import '../../graphql/generated/create_user.graphql.dart';
import '../../graphql/generated/schema.graphql.dart';

import '../../graphql/generated/update_user.graphql.dart';
import 'user_edit_model.dart';

class UserEditModelConverter implements IGraphQLConverter<UserEditModel> {
  @override
  MutationOptions toInsertOptions(UserEditModel instance) {
    final result = Variables$Mutation$CreateUser(
      input: Input$createUserInput(
        email: instance.email,
        gender: instance.gender,
        name: instance.name,
        status: instance.status,
      ),
    );
    return Options$Mutation$CreateUser(variables: result);
  }

  @override
  MutationOptions toUpdateOptions(UserEditModel instance) {
    final map = instance.toMap();
    final result = Variables$Mutation$UpdateUser(
      input: Input$updateUserInput.fromJson(map),
    );
    return Options$Mutation$UpdateUser(variables: result);
  }
}
