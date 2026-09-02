import 'package:graphql/client.dart';

import '../../edit_models/_edit_model.dart';

abstract interface class IGraphQLConverter<T extends IEditModel> {
  MutationOptions toInsertOptions(T instance);
  MutationOptions toUpdateOptions(T instance);
}
