import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';

final _query = gql('{ __typename }');

void main() {
  late FaultyGraphqlServer server;

  setUp(() async => server = await FaultyGraphqlServer.start());
  tearDown(() => server.close());

  GraphQLClientProvider provider({
    int timeLimit = 10,
    Map<String, String> headers = const {},
  }) =>
      GraphQLClientProvider(server.url, timeLimit: timeLimit, headers: headers);

  test('通常の応答は Ok で、要求が記録される', () async {
    final result = await provider().query(QueryOptions(document: _query));
    expect(result, isA<Ok<Map<dynamic, dynamic>>>());
    expect(server.requestCount, 1);
    expect(server.requests.single.body, contains('__typename'));
  });

  test('認証ヘッダーは要求に付く', () async {
    await provider(
      headers: {'Authorization': 'Bearer token-1'},
    ).query(QueryOptions(document: _query));
    expect(server.requests.single.authorization, 'Bearer token-1');
  });

  // 認証エラー(401/403)は、本文がGraphQLのエラーでもそうでなくても ServerError になる。
  for (final status in [401, 403]) {
    for (final body in [null, '{"error":"unauthorized"}']) {
      test(
        '$status は Err(ServerError) でステータスを持つ(本文: ${body ?? 'GraphQLのエラー'})',
        () async {
          server.kind = FaultKind.status;
          server.status = status;
          server.statusBody = body;
          final result = await provider().query(QueryOptions(document: _query));
          final error = (result as Err).error;
          expect(error, isA<ServerError>());
          expect((error as ServerError).status, status);
        },
      );
    }
  }

  test('遅延が制限時間を超えるとタイムアウトで終わる', () async {
    server.kind = FaultKind.delay;
    server.delay = const Duration(seconds: 3);
    expect(
      await endedInTimeout(
        () => provider(timeLimit: 1).query(QueryOptions(document: _query)),
      ),
      isTrue,
    );
  });

  test('遅延が制限時間内なら Ok', () async {
    server.kind = FaultKind.delay;
    server.delay = const Duration(milliseconds: 300);
    final result = await provider(
      timeLimit: 5,
    ).query(QueryOptions(document: _query));
    expect(result, isA<Ok<Map<dynamic, dynamic>>>());
  });

  test('応答の途中で切断されると Err', () async {
    server.kind = FaultKind.dropMidResponse;
    final result = await provider().query(QueryOptions(document: _query));
    expect((result as Err).error, isA<NetworkError>());
  });

  test('応答の前に切断されると Err', () async {
    server.kind = FaultKind.dropBeforeResponse;
    final result = await provider().query(QueryOptions(document: _query));
    expect((result as Err).error, isA<NetworkError>());
  });

  test('切断のあと、サーバーが戻れば次の問い合わせは Ok', () async {
    server.kind = FaultKind.dropMidResponse;
    await provider().query(QueryOptions(document: _query));
    server.kind = FaultKind.none;
    final result = await provider().query(QueryOptions(document: _query));
    expect(result, isA<Ok<Map<dynamic, dynamic>>>());
  });
}
