import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart' show MutationOptions;
import 'package:gqlib/gqlib.dart';

class _ModelA implements IEditModel {
  @override
  bool get isValid => true;
  @override
  bool get isNew => true;
}

class _ModelB implements IEditModel {
  @override
  bool get isValid => true;
  @override
  bool get isNew => false;
}

class _UnregisteredModel implements IEditModel {
  @override
  bool get isValid => true;
  @override
  bool get isNew => true;
}

class _NoopConverter<T extends IEditModel> implements IGraphQLConverter<T> {
  @override
  MutationOptions toInsertOptions(T instance) =>
      throw UnimplementedError('not used in these tests');
  @override
  MutationOptions toUpdateOptions(T instance) =>
      throw UnimplementedError('not used in these tests');
}

void main() {
  group('GraphQLConverterCollection', () {
    late GraphQLConverterCollection collection;
    late _NoopConverter<_ModelA> converterA;
    late _NoopConverter<_ModelB> converterB;

    setUp(() {
      converterA = _NoopConverter<_ModelA>();
      converterB = _NoopConverter<_ModelB>();
      collection = GraphQLConverterCollection([
        CollectionItem<_ModelA>(converterA),
        CollectionItem<_ModelB>(converterB),
      ]);
    });

    test('CollectionItem exposes the model Type and its string form', () {
      final item = CollectionItem<_ModelA>(converterA);

      expect(item.type, _ModelA);
      expect(item.typeString, '_ModelA');
    });

    test('hasConverterFromInstance is true for a registered model type', () {
      expect(collection.hasConverterFromInstance(_ModelA()), isTrue);
      expect(collection.hasConverterFromInstance(_ModelB()), isTrue);
    });

    test('hasConverterFromInstance is false for an unregistered model type', () {
      expect(collection.hasConverterFromInstance(_UnregisteredModel()), isFalse);
    });

    test('getConverterFromInstance returns the matching converter', () {
      expect(collection.getConverterFromInstance(_ModelA()), same(converterA));
      expect(collection.getConverterFromInstance(_ModelB()), same(converterB));
    });

    test('getConverterFromInstance returns null for an unregistered model type', () {
      expect(collection.getConverterFromInstance(_UnregisteredModel()), isNull);
    });

    test('addConverter registers a converter that can then be found', () {
      final converter = _NoopConverter<_UnregisteredModel>();
      collection.addConverter<_UnregisteredModel>(converter);

      expect(collection.hasConverterFromInstance(_UnregisteredModel()), isTrue);
      expect(collection.getConverterFromInstance(_UnregisteredModel()), same(converter));
    });

    test('removeConverter<T> unregisters a converter by type', () {
      collection.removeConverter<_ModelA>();

      expect(collection.hasConverterFromInstance(_ModelA()), isFalse);
      // The other registration is untouched.
      expect(collection.hasConverterFromInstance(_ModelB()), isTrue);
    });

    test('removeAtConverter unregisters by converter instance', () {
      collection.removeAtConverter(converterB);

      expect(collection.hasConverterFromInstance(_ModelB()), isFalse);
      expect(collection.hasConverterFromInstance(_ModelA()), isTrue);
    });

    test('removeAllConverters empties the registry', () {
      collection.removeAllConverters();

      expect(collection.hasConverterFromInstance(_ModelA()), isFalse);
      expect(collection.hasConverterFromInstance(_ModelB()), isFalse);
    });

    // NOTE: `hasConverter<T>()`/`getConverter<T>()` guard with `if (T is! IEditModel)`.
    // Because `T` here evaluates to a `Type` object (not the model instance), that
    // check is always true regardless of what `T` actually is, so these two methods
    // currently throw ArgumentError for *every* type argument, including valid
    // IEditModel implementers. These tests document the current (likely buggy)
    // behavior rather than the presumably-intended one.
    test('hasConverter<T> always throws ArgumentError, even for a registered type', () {
      expect(() => collection.hasConverter<_ModelA>(), throwsArgumentError);
    });

    test('getConverter<T> always throws ArgumentError via hasConverter', () {
      expect(() => collection.getConverter<_ModelA>(), throwsArgumentError);
    });
  });
}
