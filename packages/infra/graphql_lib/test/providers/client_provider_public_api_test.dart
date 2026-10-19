// Integration tests against a real, publicly hosted GraphQL API.
//
// https://countries.trevorblades.com/graphql is a free, open, read-only
// GraphQL API (no auth, no rate-limit key) commonly used for GraphQL client
// examples/testing. It's used here to exercise GraphQLClientProvider.query()
// end-to-end through a real HttpLink/HTTP stack instead of a fake Link.
//
// These tests require outbound internet access and are tagged 'network' so
// they can be excluded in offline environments, e.g.:
//   flutter test --exclude-tags network
// If the machine running `flutter test` has no network access, this file's
// tests will fail with a NetworkError/timeout instead of the expected
// Ok/Err(DeveloperError) result - that's an environment limitation, not a
// regression in gqlib itself.
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:gqlib/gqlib.dart';

const _countriesApiUrl = 'https://countries.trevorblades.com/graphql';
const _networkTag = 'network';

void main() {
  group('GraphQLClientProvider.query against countries.trevorblades.com', () {
    test('a valid query returns Ok with real country data', () async {
      final provider = GraphQLClientProvider(_countriesApiUrl, timeLimit: 20);

      final result = await provider.query(
        QueryOptions(
          document: gql(r'''
            query CountryByCode($code: ID!) {
              country(code: $code) {
                code
                name
                emoji
              }
            }
          '''),
          variables: const {'code': 'JP'},
        ),
      );

      expect(result, isA<Ok<Map<dynamic, dynamic>>>());
      final data = (result as Ok<Map<dynamic, dynamic>>).value;
      expect(data['country'], isNotNull);
      expect(data['country']['code'], 'JP');
      expect(data['country']['name'], 'Japan');
    }, tags: _networkTag);

    test('a query with an unknown field returns Err(DeveloperError)', () async {
      final provider = GraphQLClientProvider(_countriesApiUrl, timeLimit: 20);

      final result = await provider.query(
        QueryOptions(document: gql('{ countries { code thisFieldDoesNotExist } }')),
      );

      expect(result, isA<Err<Map<dynamic, dynamic>>>());
      final err = result as Err<Map<dynamic, dynamic>>;
      expect(err.error, isA<DeveloperError>());
      expect(err.graphqlErrors, isNotNull);
      expect(err.graphqlErrors, contains('thisFieldDoesNotExist'));
    }, tags: _networkTag);

    test('an unreachable host returns Err(NetworkError)', () async {
      final provider = GraphQLClientProvider(
        'https://this-host-should-not-resolve.invalid/graphql',
        timeLimit: 20,
      );

      final result = await provider.query(
        QueryOptions(document: gql('{ countries { code } }')),
      );

      expect(result, isA<Err<Map<dynamic, dynamic>>>());
      expect((result as Err<Map<dynamic, dynamic>>).error, isA<NetworkError>());
    }, tags: _networkTag);

    test('a near-zero timeLimit surfaces as a timeout against the real network', () async {
      // With a real GraphQLClient (built via _initialize()), timeLimit: 0 races
      // two independent timeout mechanisms: the provider's own manual
      // `.timeout()` wrapper (-> throws GraphqlTimeoutException) and the
      // underlying GraphQLClient's `queryRequestTimeout` (-> resolves to
      // Err(TimeoutError)). Which one wins depends on real network/scheduling
      // timing, so accept either outcome as evidence the timeout was honored.
      final provider = GraphQLClientProvider(_countriesApiUrl, timeLimit: 0);

      Object? thrown;
      GraphqlProverResult<Map<dynamic, dynamic>>? result;
      try {
        result = await provider.query(
          QueryOptions(document: gql('{ countries { code name } }')),
        );
      } catch (e) {
        thrown = e;
      }

      if (thrown != null) {
        expect(thrown, isA<GraphqlTimeoutException>());
      } else {
        expect(result, isA<Err<Map<dynamic, dynamic>>>());
        expect((result as Err<Map<dynamic, dynamic>>).error, isA<TimeoutError>());
      }
    }, tags: _networkTag);
  });
}
