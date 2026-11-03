// JWT のセッションの失敗を、型付きのエラーにする分類のテスト(通信しない)。
//
// PostGraphile(--jwt-secret)の実際の応答を再現する(検証用サーバーでの実測、
// packages/infra/jwt_verification_test のテストで実サーバーとの一致を確認する)。
//   期限切れ                       HTTP 401 {"errors":[{"message":"jwt expired"}]}
//   不正(署名・aud・アルゴリズム等) HTTP 403 {"errors":[{"message":"invalid signature"}]} ほか
//   JWT なし(匿名)                 HTTP 200 {"errors":[{"message":"permission denied for schema tests"}],"data":{...:null}}
//   ロールの切り替えに失敗          HTTP 500 {"errors":[{"message":"permission denied to set role \"pms_user\""}]}
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';

final _query = gql('query Q { ok }');

class _Link extends Link {
  _Link(this.respond);
  final Stream<Response> Function(Request request) respond;
  final requests = <Request>[];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    return respond(request);
  }
}

GraphQLClientProvider _provider(Link link) => GraphQLClientProvider(
  'offline://test',
  graphQLClient: GraphQLClient(
    link: link,
    cache: GraphQLCache(partialDataPolicy: PartialDataCachePolicy.accept),
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.networkOnly, error: ErrorPolicy.all),
    ),
  ),
);

Stream<Response> _http(int status, String message) => Stream.error(
  ServerException(
    statusCode: status,
    parsedResponse: Response(
      errors: [GraphQLError(message: message)],
      response: const {},
    ),
    originalException: null,
  ),
);

Future<GraphqlProviderException> _errorOf(Link link) async {
  final result = await _provider(link).query(QueryOptions(document: _query));
  expect(result, isA<Err<Map<dynamic, dynamic>>>());
  return (result as Err).error;
}

void main() {
  mutationTests();

  group('HTTP 401/403', () {
    test(
      '401 は期限切れ(SessionExpiredError.expired)。ServerError でもあり、ステータスを持つ',
      () async {
        final e = await _errorOf(_Link((_) => _http(401, 'jwt expired')));
        expect(e, isA<SessionExpiredError>());
        expect(e, isA<ServerError>());
        expect((e as SessionExpiredError).reason, SessionExpiredReason.expired);
        expect(e.status, 401);
      },
    );

    test('JWT の不正と分かる 403 は invalid', () async {
      for (final message in [
        'invalid token',
        'invalid signature',
        'invalid algorithm',
        'jwt audience invalid. expected: postgraphile',
        'jwt signature is required',
        'jwt malformed',
      ]) {
        final e = await _errorOf(_Link((_) => _http(403, message)));
        expect(e, isA<SessionExpiredError>(), reason: message);
        expect((e as SessionExpiredError).reason, SessionExpiredReason.invalid);
        expect(e.status, 403);
      }
    });

    test('JWT の失敗と分からない 403(権限の拒否など)は、これまでどおり ServerError', () async {
      final e = await _errorOf(_Link((_) => _http(403, 'forbidden by proxy')));
      expect(e, isA<ServerError>());
      expect(e, isNot(isA<SessionExpiredError>()));
      expect((e as ServerError).status, 403);
    });

    test('分類は sessionExpiredReasonOf でも使える', () {
      expect(
        sessionExpiredReasonOf(401, const []),
        SessionExpiredReason.expired,
      );
      expect(
        sessionExpiredReasonOf(403, ['Invalid Signature']),
        SessionExpiredReason.invalid,
      );
      expect(sessionExpiredReasonOf(403, ['nope']), isNull);
      expect(sessionExpiredReasonOf(500, ['invalid token']), isNull);
    });
  });

  group('DB の権限', () {
    test(
      'HTTP 200 の GraphQL エラー(匿名)は PermissionDeniedError。データは null',
      () async {
        final link = _Link(
          (_) => Stream.value(
            Response(
              data: const {'ok': null},
              errors: [
                GraphQLError(message: 'permission denied for schema tests'),
              ],
              response: const {},
            ),
          ),
        );
        final result = await _provider(
          link,
        ).query(QueryOptions(document: _query));
        expect(result, isA<Err<Map<dynamic, dynamic>>>());
        final err = result as Err<Map<dynamic, dynamic>>;
        expect(err.error, isA<PermissionDeniedError>());
        expect(
          err.graphqlErrors,
          contains('permission denied for schema tests'),
        );
      },
    );

    test(
      'HTTP 500 の permission denied to set role も PermissionDeniedError',
      () async {
        final e = await _errorOf(
          _Link((_) => _http(500, 'permission denied to set role "pms_user"')),
        );
        expect(e, isA<PermissionDeniedError>());
      },
    );

    test('権限の拒否ではない GraphQL エラーは、これまでどおり DeveloperError', () async {
      final e = await _errorOf(
        _Link((_) => _http(400, 'Cannot query field "x" on type "Query".')),
      );
      expect(e, isA<DeveloperError>());
    });
  });

  group('セッションを用意できない(通信しない)', () {
    Link guard(Future<String?> Function() getToken) =>
        AuthLink(getToken: getToken).concat(
          _Link(
            (_) =>
                Stream.value(const Response(data: {'ok': true}, response: {})),
          ),
        );

    test(
      'SessionUnavailableException は SessionExpiredError.missing(通信しない)',
      () async {
        final sent = _Link(
          (_) => Stream.value(const Response(data: {'ok': true}, response: {})),
        );
        final link = AuthLink(
          getToken: () async =>
              throw const SessionUnavailableException(message: 'logged out'),
        ).concat(sent);
        final e = await _errorOf(link);
        expect(e, isA<SessionExpiredError>());
        expect((e as SessionExpiredError).reason, SessionExpiredReason.missing);
        expect(e.status, -1);
        expect(sent.requests, isEmpty, reason: '認証のトークンが無いときはサーバーへ送らない');
      },
    );

    test('認証サーバーに接続できないとき(transient)は NetworkError', () async {
      final link = guard(
        () async => throw const SessionUnavailableException(transient: true),
      );
      expect(await _errorOf(link), isA<NetworkError>());
    });

    test('トークンがあれば Authorization: Bearer を付けて送る', () async {
      final sent = _Link(
        (_) => Stream.value(const Response(data: {'ok': true}, response: {})),
      );
      final link = AuthLink(getToken: () async => 'Bearer abc').concat(sent);
      final result = await _provider(
        link,
      ).query(QueryOptions(document: _query));
      expect(result, isA<Ok<Map<dynamic, dynamic>>>());
      final headers = sent.requests.single.context
          .entry<HttpLinkHeaders>()
          ?.headers;
      expect(headers?['Authorization'], 'Bearer abc');
    });
  });

  test('エラーはJSON/文字列にできる', () {
    final e = SessionExpiredError('m', 401, SessionExpiredReason.expired);
    expect(e.toString(), contains('expired'));
    expect(PermissionDeniedError('x').toString(), contains('x'));
    expect(const SessionUnavailableException(message: 'm').toJson(), {
      'transient': false,
      'message': 'm',
    });
  });
}

void mutationTests() {
  final mutation = gql('mutation M { doIt { ok } }');

  group('ミューテーション(mutate)も同じ分類', () {
    test(
      '401 は SessionExpiredError、権限なしは PermissionDeniedError、成功は Ok',
      () async {
        Future<GraphqlProverResult<Map<String, dynamic>>> run(Link link) =>
            _provider(link).mutate(MutationOptions(document: mutation));

        final expired = await run(_Link((_) => _http(401, 'jwt expired')));
        expect((expired as Err).error, isA<SessionExpiredError>());

        final denied = await run(
          _Link((_) => _http(500, 'permission denied for table t')),
        );
        expect((denied as Err).error, isA<PermissionDeniedError>());

        final ok = await run(
          _Link(
            (_) => Stream.value(
              const Response(
                data: {
                  'doIt': {'ok': true},
                },
                response: {},
              ),
            ),
          ),
        );
        expect(ok, isA<Ok<Map<String, dynamic>>>());
      },
    );
  });
}
