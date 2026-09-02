// Fully offline tests for GraphQLClientProvider.
//
// GraphQLClientProvider accepts an already-built GraphQLClient (`graphQLClient:`),
// so instead of hitting a real network we plug in a fake `Link` from `gql_link`
// (re-exported by `package:graphql/client.dart`) that returns canned responses
// or raises specific failures. This lets every branch of `_createResult`,
// `save()`'s hasura batching and the manual timeout wrapper be exercised
// deterministically, with no network access required.
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:gqlib/gqlib.dart';
import 'package:logger_lib/logger_lib.dart';

final _insertDocument = gql(r'''
  mutation InsertFake($objects: [fake_insert_input!]!) {
    insert_fake(objects: $objects) {
      affected_rows
    }
  }
''');

final _updateDocument = gql(r'''
  mutation UpdateFake($id: Int!) {
    update_fake(pk_columns: {id: $id}) {
      id
    }
  }
''');

class _FakeModel implements IEditModel {
  final int id;
  final bool newRecord;
  const _FakeModel(this.id, {this.newRecord = true});

  @override
  bool get isValid => true;
  @override
  bool get isNew => newRecord;
}

class _UnregisteredModel implements IEditModel {
  @override
  bool get isValid => true;
  @override
  bool get isNew => true;
}

class _FakeConverter implements IGraphQLConverter<_FakeModel> {
  @override
  MutationOptions toInsertOptions(_FakeModel instance) => MutationOptions(
    document: _insertDocument,
    variables: {
      'objects': [
        {'id': instance.id},
      ],
    },
  );

  @override
  MutationOptions toUpdateOptions(_FakeModel instance) => MutationOptions(
    document: _updateDocument,
    variables: {'id': instance.id},
  );
}

GraphQLConverterCollection _converterCollection() =>
    GraphQLConverterCollection([CollectionItem<_FakeModel>(_FakeConverter())]);

/// A [Link] that records every [Request] it receives and answers with either
/// a fixed [Response] or one produced by [onRequest].
class _RecordingLink extends Link {
  final List<Request> requests = [];
  final Response Function(Request request)? onRequest;

  _RecordingLink({this.onRequest});

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final response =
        onRequest?.call(request) ??
        const Response(data: {'ok': true}, response: {});
    return Stream.value(response);
  }
}

/// A [Link] that waits [delay] before answering, used to force the provider's
/// own `.timeout()` wrapper to fire.
class _DelayedLink extends Link {
  final Duration delay;
  _DelayedLink(this.delay);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    await Future.delayed(delay);
    yield const Response(data: {'ok': true}, response: {});
  }
}

class _RecordingLogger implements ILoggerProvider {
  final List<String> debugs = [];
  final List<String> infos = [];
  final List<String> warns = [];
  final List<String> errors = [];
  final List<String> fatals = [];

  @override
  int get level => 0;
  @override
  void debug(String message, {Object? ex, StackTrace? trace}) =>
      debugs.add(message);
  @override
  void info(String message, {Object? ex, StackTrace? trace}) =>
      infos.add(message);
  @override
  void warn(String message, {Object? ex, StackTrace? trace}) =>
      warns.add(message);
  @override
  void error(String message, {Object? ex, StackTrace? trace}) =>
      errors.add(message);
  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) =>
      fatals.add(message);
}

GraphQLClientProvider _buildProvider({
  required Link link,
  bool isHasura = false,
  int? timeLimit,
  ILoggerProvider? logger,
  GraphQLConverterCollection? converterCollection,
}) {
  final client = GraphQLClient(
    link: link,
    // The client normally injects `__typename` selections into every request
    // and normalizes the response against them for its cache. Real servers
    // answer those with matching `__typename` values, but our fakes don't
    // bother producing them, so relax the cache's partial-data policy instead
    // of hand-crafting a `__typename` for every nested field of every fixture.
    cache: GraphQLCache(partialDataPolicy: PartialDataCachePolicy.accept),
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.networkOnly, error: ErrorPolicy.all),
      mutate: Policies(fetch: FetchPolicy.networkOnly, error: ErrorPolicy.all),
    ),
  );
  return GraphQLClientProvider(
    'offline://test',
    graphQLClient: client,
    isBatchMutation: isHasura,
    timeLimit: timeLimit,
    logger: logger,
    converterCollection: converterCollection,
  );
}

void main() {
  group('GraphQLClientProvider.query (offline)', () {
    test('returns Ok with the response data on success', () async {
      final link = _RecordingLink(
        onRequest: (_) => const Response(data: {'countries': []}, response: {}),
      );
      final provider = _buildProvider(link: link);

      final result = await provider.query(
        QueryOptions(document: gql('{ countries { code } }')),
      );

      expect(result, isA<Ok<Map<dynamic, dynamic>>>());
      // The client fills in the `__typename` selection it auto-injects (as
      // `null`, since our fake response doesn't supply one), so check the
      // field we actually care about rather than the whole map.
      expect((result as Ok<Map<dynamic, dynamic>>).value['countries'], []);
    });

    test(
      'returns Err(DeveloperError) for a graphql error with no linkException',
      () async {
        final link = _RecordingLink(
          onRequest: (_) => const Response(
            errors: [GraphQLError(message: 'Cannot query field "bogus"')],
            response: {},
          ),
        );
        final provider = _buildProvider(link: link);

        final result = await provider.query(
          QueryOptions(document: gql('{ bogus }')),
        );

        expect(result, isA<Err<Map<dynamic, dynamic>>>());
        final err = result as Err<Map<dynamic, dynamic>>;
        expect(err.error, isA<DeveloperError>());
        expect(err.graphqlErrors, contains('Cannot query field'));
      },
    );

    test(
      'returns Err(NetworkError) when the link fails with a SocketException',
      () async {
        final link = Link.function(
          (request, [forward]) =>
              Stream.error(const SocketException('Failed host lookup')),
        );
        final provider = _buildProvider(link: link);

        final result = await provider.query(
          QueryOptions(document: gql('{ countries { code } }')),
        );

        expect(result, isA<Err<Map<dynamic, dynamic>>>());
        expect(
          (result as Err<Map<dynamic, dynamic>>).error,
          isA<NetworkError>(),
        );
      },
    );

    test(
      'rethrows when the failure type has no GraphqlProviderException mapping',
      () async {
        final link = Link.function(
          (request, [forward]) => Stream.error(StateError('boom')),
        );
        final provider = _buildProvider(link: link);

        await expectLater(
          provider.query(QueryOptions(document: gql('{ countries { code } }'))),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'throws GraphqlTimeoutException when the call exceeds timeLimit',
      () async {
        final link = _DelayedLink(const Duration(milliseconds: 300));
        final provider = _buildProvider(link: link, timeLimit: 0);

        await expectLater(
          provider.query(QueryOptions(document: gql('{ countries { code } }'))),
          throwsA(isA<GraphqlTimeoutException>()),
        );
      },
    );
  });

  group('GraphQLClientProvider.save (offline)', () {
    test(
      'throws ArgumentError when no converter collection is configured',
      () async {
        final provider = _buildProvider(link: _RecordingLink());

        await expectLater(
          provider.save([const _FakeModel(1)]),
          throwsArgumentError,
        );
      },
    );

    test(
      'throws ArgumentError when a model has no registered converter',
      () async {
        final provider = _buildProvider(
          link: _RecordingLink(),
          converterCollection: _converterCollection(),
        );

        await expectLater(
          provider.save([_UnregisteredModel()]),
          throwsArgumentError,
        );
      },
    );

    test(
      'executes each mutation independently when isHasura is false',
      () async {
        final link = _RecordingLink();
        final provider = _buildProvider(
          link: link,
          converterCollection: _converterCollection(),
        );

        final results = await provider.save(const [
          _FakeModel(1),
          _FakeModel(2),
          _FakeModel(3, newRecord: false),
        ]);

        expect(results, hasLength(3));
        expect(results, everyElement(isA<Ok<Map<String, dynamic>>>()));
        // Non-hasura mode never batches: 3 models in, 3 requests out.
        expect(link.requests, hasLength(3));

        final insertVariableLists = link.requests
            .where((r) => identical(r.operation.document, _insertDocument))
            .map((r) => r.variables['objects'])
            .toList();
        expect(insertVariableLists, [
          [
            {'id': 1},
          ],
          [
            {'id': 2},
          ],
        ]);
      },
    );

    test(
      'batches same-document inserts into a single mutation in hasura mode',
      () async {
        final link = _RecordingLink();
        final provider = _buildProvider(
          link: link,
          converterCollection: _converterCollection(),
          isHasura: true,
        );

        final results = await provider.save(const [
          _FakeModel(1),
          _FakeModel(2),
          _FakeModel(3, newRecord: false),
        ]);

        // 1 batched insert mutation + 1 update mutation.
        expect(results, hasLength(2));
        expect(link.requests, hasLength(2));

        final insertRequest = link.requests.firstWhere(
          (r) => identical(r.operation.document, _insertDocument),
        );
        expect(insertRequest.variables['objects'], [
          {'id': 1},
          {'id': 2},
        ]);

        final updateRequest = link.requests.firstWhere(
          (r) => identical(r.operation.document, _updateDocument),
        );
        expect(updateRequest.variables, {'id': 3});
      },
    );

    test('removes duplicate models (keeping the last) and logs it', () async {
      final link = _RecordingLink();
      final logger = _RecordingLogger();
      final provider = _buildProvider(
        link: link,
        converterCollection: _converterCollection(),
        logger: logger,
      );
      const model = _FakeModel(1);

      final results = await provider.save([model, model]);

      expect(results, hasLength(1));
      expect(link.requests, hasLength(1));
      expect(logger.infos, isNotEmpty);
      expect(logger.infos.single, contains('duplicate list'));
    });
  });
}
