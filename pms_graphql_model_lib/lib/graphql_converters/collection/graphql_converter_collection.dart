import 'package:pms_graphql_model_lib/edit_models/_base/iedit_model.dart';
import 'package:graphql/client.dart';

part 'collection_factory.dart';
part '../converters/i_graphql_converter.dart';

final class GraphQLConverterCollection {
  final Map<String, IGraphQLConverter> _converters = {};

  IGraphQLConverter? getConverterFromInstance(IEditModel instance) {
    if (!hasConverterFromInstance(instance)) {
      return null;
    }
    return _converters[instance.runtimeType.toString()]!;
  }

  IGraphQLConverter? getConverter<T>() {
    if (!hasConverter<T>()) {
      return null;
    }
    return _converters[T.toString()]!;
  }

  bool hasConverter<T>() {
    if (T is! IEditModel) {
      throw ArgumentError(
        'T cannot be of type IEditModel. Please use the specific converter for edit models.',
      );
    }
    return _converters.containsKey(T.toString());
  }

  bool hasConverterFromInstance(IEditModel instance) {
    return _converters.containsKey(instance.runtimeType.toString());
  }

  void addConverter<T>(IGraphQLConverter converter) {
    _converters[T.toString()] = converter;
  }

  void removeConverter<T>() {
    _converters.remove(T.toString());
  }

  void removeAtConverter(IGraphQLConverter converter) {
    _converters.removeWhere((key, value) => value == converter);
  }

  void removeAllConverters() {
    _converters.clear();
  }
}
