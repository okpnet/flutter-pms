// Smoke test for the public API surface re-exported by lib/gqlib.dart.
//
// The detailed behavior of each piece is covered by the tests under this
// directory (extends/, results/, exceptions/, graphql_converters/,
// providers/); this file just checks that the barrel file exports what
// downstream apps actually depend on.
import 'package:flutter_test/flutter_test.dart';
import 'package:gqlib/gqlib.dart';

class _SmokeModel implements IEditModel {
  @override
  bool get isValid => true;
  @override
  bool get isNew => true;
}

void main() {
  test('IEditModel is exported and implementable', () {
    final model = _SmokeModel();

    expect(model.isValid, isTrue);
    expect(model.isNew, isTrue);
  });

  test('GraphqlProverResult (Ok/Err) is exported', () {
    final ok = Ok<int>(1);
    final err = Err<int>(ProviderError('boom'));

    expect(ok, isA<GraphqlProverResult<int>>());
    expect(err, isA<GraphqlProverResult<int>>());
  });

  test('the GraphqlProviderException hierarchy is exported', () {
    expect(ProviderError('m'), isA<GraphqlProviderException>());
    expect(NetworkError('m'), isA<GraphqlProviderException>());
    expect(TimeoutError('m'), isA<GraphqlProviderException>());
    expect(ServerError('m', 500), isA<GraphqlProviderException>());
    expect(DeveloperError('m'), isA<GraphqlProviderException>());
  });

  test('GraphqlTimeoutException is exported', () {
    expect(GraphqlTimeoutException(message: 'timeout'), isA<Exception>());
  });

  test('GraphQLConverterCollection is exported and starts empty when given no items', () {
    final collection = GraphQLConverterCollection([]);

    expect(collection.hasConverterFromInstance(_SmokeModel()), isFalse);
  });

  test('removeDuplicates is exported', () {
    final result = removeDuplicates([1, 1, 2]);

    expect(result.uniqueList, [1, 2]);
  });

  test('GraphQLClientProvider is exported and constructible', () {
    final provider = GraphQLClientProvider('https://example.invalid/graphql');

    expect(provider.url, 'https://example.invalid/graphql');
    expect(provider.isHasura, isFalse);
  });
}
