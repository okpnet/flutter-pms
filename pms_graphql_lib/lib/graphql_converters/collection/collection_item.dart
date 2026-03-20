part of '../collection/graphql_converter_collection.dart';

final class CollectionItem<T extends IEditModel> {
  final IGraphQLConverter<T> converter;
  Type get type => T;
  String get typeString => T.toString();
  CollectionItem(this.converter);
}
