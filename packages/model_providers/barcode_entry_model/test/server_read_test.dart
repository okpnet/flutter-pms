// このファイルは gen_server_test が生成した通信テストです。直接編集しないでください。
// 再生成: dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers
//
// 1) 検証用サーバーに対し、全readクエリを first: 1 で実行する(読み取り専用)。
// 2) 通信の異常(遅延・切断・認証エラー)は、ローカルの代役サーバーで再現する。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:barcode_entry_model/barcode_entry_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

// ignore: unused_element
const _zeroId = '00000000-0000-0000-0000-000000000000';

void main() {
  group('検証用サーバー: 全readクエリ', () {
    serverTest('ScanContainerPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanContainerPageRead,
          variables: Variables$Query$ScanContainerPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanContainerPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanEquipmentPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanEquipmentPageRead,
          variables: Variables$Query$ScanEquipmentPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanEquipmentPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanInspectRecordPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanInspectRecordPageRead,
          variables: Variables$Query$ScanInspectRecordPageRead(first: 1, transInspectSchDetailId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanInspectRecordPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanInspectSchDetailPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanInspectSchDetailPageRead,
          variables: Variables$Query$ScanInspectSchDetailPageRead(first: 1, transInspectSchId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanInspectSchDetailPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanInspectSchPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanInspectSchPageRead,
          variables: Variables$Query$ScanInspectSchPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanInspectSchPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanInspectionFormulaPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanInspectionFormulaPageRead,
          variables: Variables$Query$ScanInspectionFormulaPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanInspectionFormulaPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanInspectionPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanInspectionPageRead,
          variables: Variables$Query$ScanInspectionPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanInspectionPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanItemPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanItemPageRead,
          variables: Variables$Query$ScanItemPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanItemPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanLocationHistoryPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanLocationHistoryPageRead,
          variables: Variables$Query$ScanLocationHistoryPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanLocationHistoryPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanPurchaseDetailPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanPurchaseDetailPageRead,
          variables: Variables$Query$ScanPurchaseDetailPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanPurchaseDetailPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanPurchaseRecPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanPurchaseRecPageRead,
          variables: Variables$Query$ScanPurchaseRecPageRead(first: 1, transPurchaseDetailId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanPurchaseRecPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanStaffHistoryPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanStaffHistoryPageRead,
          variables: Variables$Query$ScanStaffHistoryPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanStaffHistoryPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanVisiterPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanVisiterPageRead,
          variables: Variables$Query$ScanVisiterPageRead(first: 1, transContainerId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanVisiterPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanWorkPlanPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanWorkPlanPageRead,
          variables: Variables$Query$ScanWorkPlanPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanWorkPlanPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ScanWorkRecordPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryScanWorkRecordPageRead,
          variables: Variables$Query$ScanWorkRecordPageRead(first: 1, transWorkPlanId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ScanWorkRecordPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
  });

  group('通信の異常(代役サーバー)', () {
    late FaultyGraphqlServer server;
    setUp(() async => server = await FaultyGraphqlServer.start());
    tearDown(() => server.close());

    QueryOptions options() => QueryOptions(
      document: documentNodeQueryScanContainerPageRead,
      variables: Variables$Query$ScanContainerPageRead(first: 1, languageCodeId: _zeroId).toJson(),
    );

    // 代役サーバーの既定の応答に合う、中身の無い問い合わせ(応答の読み取りを確認しないテスト用)。
    QueryOptions plain() => QueryOptions(document: gql('{ __typename }'));

    GraphQLClientProvider provider({int timeLimit = 10, Map<String, String> headers = const {}}) =>
        GraphQLClientProvider(server.url, timeLimit: timeLimit, headers: headers);

    test('遅延が制限時間を超えるとタイムアウトで終わる', () async {
      server.kind = FaultKind.delay;
      server.delay = const Duration(seconds: 3);
      expect(await endedInTimeout(() => provider(timeLimit: 1).query(options())), isTrue);
    });

    test('応答の途中・前の切断は Err(NetworkError)', () async {
      for (final kind in [FaultKind.dropMidResponse, FaultKind.dropBeforeResponse]) {
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
      await provider(headers: {'Authorization': 'Bearer test-token'}).query(plain());
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
