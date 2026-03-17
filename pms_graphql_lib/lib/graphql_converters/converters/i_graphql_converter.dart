import 'package:graphql/client.dart';
import 'package:pms_graphql_lib/edit_models/_base/iedit_model.dart';

abstract interface class IGraphQLConverter {
  MutationOptions toInsertOptions(IEditModel instance);
  MutationOptions toUpdateOptions(IEditModel instance);
}
