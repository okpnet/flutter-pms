// このファイルは gen_server_test が生成した通信テストです。直接編集しないでください。
// 再生成: dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers
//
// 1) 検証用サーバーに対し、全readクエリを first: 1 で実行する(読み取り専用)。
// 2) 通信の異常(遅延・切断・認証エラー)は、ローカルの代役サーバーで再現する。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:quality_document_model/quality_document_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

const _zeroId = '00000000-0000-0000-0000-000000000000';

void main() {
  group('検証用サーバー: 全readクエリ', () {
    serverTest('DocumentContentPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryDocumentContentPageRead,
          variables: Variables$Query$DocumentContentPageRead(
            first: 1,
            languageCodeId: _zeroId,
            mstrDocumentId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$DocumentContentPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('DocumentPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryDocumentPageRead,
          variables: Variables$Query$DocumentPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$DocumentPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('DocumentTierPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryDocumentTierPageRead,
          variables: Variables$Query$DocumentTierPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$DocumentTierPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
  });

  group('通信の異常(代役サーバー)', () {
    late FaultyGraphqlServer server;
    setUp(() async => server = await FaultyGraphqlServer.start());
    tearDown(() => server.close());

    QueryOptions options() => QueryOptions(
      document: documentNodeQueryDocumentContentPageRead,
      variables: Variables$Query$DocumentContentPageRead(
        first: 1,
        languageCodeId: _zeroId,
        mstrDocumentId: _zeroId,
      ).toJson(),
    );

    // 代役サーバーの既定の応答に合う、中身の無い問い合わせ(応答の読み取りを確認しないテスト用)。
    QueryOptions plain() => QueryOptions(document: gql('{ __typename }'));

    GraphQLClientProvider provider({
      int timeLimit = 10,
      Map<String, String> headers = const {},
    }) => GraphQLClientProvider(
      server.url,
      timeLimit: timeLimit,
      headers: headers,
    );

    test('遅延が制限時間を超えるとタイムアウトで終わる', () async {
      server.kind = FaultKind.delay;
      server.delay = const Duration(seconds: 3);
      expect(
        await endedInTimeout(() => provider(timeLimit: 1).query(options())),
        isTrue,
      );
    });

    test('応答の途中・前の切断は Err(NetworkError)', () async {
      for (final kind in [
        FaultKind.dropMidResponse,
        FaultKind.dropBeforeResponse,
      ]) {
        server.kind = kind;
        final result = await provider().query(options());
        expect((result as Err).error, isA<NetworkError>(), reason: '$kind');
      }
    });

    test('認証エラー(401/403)は Err(ServerError) でステータスを持つ', () async {
      for (final status in [401, 403]) {
        server.kind = FaultKind.status;
        server.status = status;
        final result = await provider().query(options());
        final error = (result as Err).error;
        expect(error, isA<ServerError>());
        expect((error as ServerError).status, status);
      }
    });

    test('認証ヘッダーが要求に付く', () async {
      await provider(
        headers: {'Authorization': 'Bearer test-token'},
      ).query(plain());
      expect(server.requests.single.authorization, 'Bearer test-token');
    });

    test('切断のあと、サーバーが戻れば次の問い合わせは成功する', () async {
      server.kind = FaultKind.dropMidResponse;
      await provider().query(plain());
      server.kind = FaultKind.none;
      final result = await provider().query(plain());
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
    });
  });
}
