part of '../collection/graphql_converter_collection.dart';

abstract interface class IGraphQLConverter<T extends IEditModel> {
  MutationOptions toInsertOptions(T instance);
  MutationOptions toUpdateOptions(T instance);
}
