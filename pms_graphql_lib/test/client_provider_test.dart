import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql_lib/providers/client_provider.dart';
import 'package:pms_graphql_lib/exceptions/graphql_exception.dart';
// Generate mocks
@GenerateMocks([GraphQLClient])
import 'client_provider_test.mocks.dart';

void main() {
  late MockGraphQLClient mockClient;
  const String url = 'http://okp-03.local:8080/v1/graphql';
  setUp(() {
    mockClient = MockGraphQLClient();
  });

  group('GraphQLClientProvider', () {
    test('should initialize with default timeout', () {
      final provider = GraphQLClientProvider(url, graphQLClient: mockClient);
      expect(provider.timeLimit.inSeconds, 10);
    });

    test('should initialize with custom timeout', () {
      final provider = GraphQLClientProvider(
        url,
        timeLimit: 60,
        graphQLClient: mockClient,
      );
      expect(provider.timeLimit.inSeconds, 60);
    });

    test('query should return result on success', () async {
      final provider = GraphQLClientProvider(url, graphQLClient: mockClient);
      final options = QueryOptions(document: gql('query { test }'));
      final expectedResult = QueryResult(
        source: QueryResultSource.network,
        data: {'test': 'data'},
        options: options,
      );

      when(mockClient.query(options)).thenAnswer((_) async => expectedResult);

      final result = await provider.query(options);
      expect(result.data, {'test': 'data'});
    });

    test('query should throw timeout exception on timeout', () async {
      final provider = GraphQLClientProvider(
        url,
        timeLimit: 1,
        graphQLClient: mockClient,
      );
      final options = QueryOptions(document: gql('query { test }'));

      when(mockClient.query(options)).thenAnswer((_) async {
        await Future.delayed(Duration(seconds: 2));
        return QueryResult(source: QueryResultSource.network, options: options);
      });

      expect(
        () => provider.query(options),
        throwsA(isA<GraphqlTimeoutException>()),
      );
    });
  });
}
