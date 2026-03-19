part of '../collection/graphql_converter_collection.dart';

abstract interface class IGraphQLConverter {
  MutationOptions toInsertOptions(IEditModel instance);
  MutationOptions toUpdateOptions(IEditModel instance);
}
