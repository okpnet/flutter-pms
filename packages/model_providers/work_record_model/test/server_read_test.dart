// このファイルは gen_server_test が生成した通信テストです。直接編集しないでください。
// 再生成: dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers
//
// 1) 検証用サーバーに対し、全readクエリを first: 1 で実行する(読み取り専用)。
// 2) 通信の異常(遅延・切断・認証エラー)は、ローカルの代役サーバーで再現する。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:work_record_model/work_record_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

const _zeroId = '00000000-0000-0000-0000-000000000000';

void main() {
  group('検証用サーバー: 全readクエリ', () {
    serverTest('CertificatePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryCertificatePageRead,
          variables: Variables$Query$CertificatePageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$CertificatePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ContainerPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryContainerPageRead,
          variables: Variables$Query$ContainerPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ContainerPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ConveyPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryConveyPageRead,
          variables: Variables$Query$ConveyPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transVisiterId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ConveyPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InventoryApplyPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInventoryApplyPageRead,
          variables: Variables$Query$InventoryApplyPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transInventoryRequestId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InventoryApplyPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InventoryRequestPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInventoryRequestPageRead,
          variables: Variables$Query$InventoryRequestPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InventoryRequestPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('PurchaseCertificationPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryPurchaseCertificationPageRead,
          variables: Variables$Query$PurchaseCertificationPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transPurchaseRecId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$PurchaseCertificationPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ShelfInventoryStatusPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryShelfInventoryStatusPageRead,
          variables: Variables$Query$ShelfInventoryStatusPageRead(
            first: 1,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ShelfInventoryStatusPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('VisiterPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryVisiterPageRead,
          variables: Variables$Query$VisiterPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$VisiterPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('WorkRecordCertificatePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryWorkRecordCertificatePageRead,
          variables: Variables$Query$WorkRecordCertificatePageRead(
            first: 1,
            languageCodeId: _zeroId,
            transWorkRecordId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$WorkRecordCertificatePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('WorkRecordPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryWorkRecordPageRead,
          variables: Variables$Query$WorkRecordPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transWorkPlanId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$WorkRecordPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
  });

  group('通信の異常(代役サーバー)', () {
    late FaultyGraphqlServer server;
    setUp(() async => server = await FaultyGraphqlServer.start());
    tearDown(() => server.close());

    QueryOptions options() => QueryOptions(
      document: documentNodeQueryCertificatePageRead,
      variables: Variables$Query$CertificatePageRead(
        first: 1,
        languageCodeId: _zeroId,
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
