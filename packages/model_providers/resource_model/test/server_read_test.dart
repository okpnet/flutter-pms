// このファイルは gen_server_test が生成した通信テストです。直接編集しないでください。
// 再生成: dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers
//
// 1) 検証用サーバーに対し、全readクエリを first: 1 で実行する(読み取り専用)。
// 2) 通信の異常(遅延・切断・認証エラー)は、ローカルの代役サーバーで再現する。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:resource_model/resource_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

const _zeroId = '00000000-0000-0000-0000-000000000000';

void main() {
  group('検証用サーバー: 全readクエリ', () {
    serverTest('CapabilityPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryCapabilityPageRead,
          variables: Variables$Query$CapabilityPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$CapabilityPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('CapableStaffPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryCapableStaffPageRead,
          variables: Variables$Query$CapableStaffPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$CapableStaffPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('EquipmentCategoryPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryEquipmentCategoryPageRead,
          variables: Variables$Query$EquipmentCategoryPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$EquipmentCategoryPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('EquipmentPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryEquipmentPageRead,
          variables: Variables$Query$EquipmentPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$EquipmentPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('FilePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryFilePageRead,
          variables: Variables$Query$FilePageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$FilePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InspectImpFilePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInspectImpFilePageRead,
          variables: Variables$Query$InspectImpFilePageRead(first: 1, languageCodeId: _zeroId, transInspectRecordId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InspectImpFilePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InspectRecordPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInspectRecordPageRead,
          variables: Variables$Query$InspectRecordPageRead(first: 1, languageCodeId: _zeroId, transInspectSchDetailId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InspectRecordPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InspectSchDetailPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInspectSchDetailPageRead,
          variables: Variables$Query$InspectSchDetailPageRead(first: 1, languageCodeId: _zeroId, transInspectSchId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InspectSchDetailPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InspectSchPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInspectSchPageRead,
          variables: Variables$Query$InspectSchPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InspectSchPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InspectionEquipentPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInspectionEquipentPageRead,
          variables: Variables$Query$InspectionEquipentPageRead(first: 1, languageCodeId: _zeroId, mstrInspectionOperationId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InspectionEquipentPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InspectionItemPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInspectionItemPageRead,
          variables: Variables$Query$InspectionItemPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InspectionItemPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InspectionKindPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInspectionKindPageRead,
          variables: Variables$Query$InspectionKindPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InspectionKindPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InspectionOperationPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInspectionOperationPageRead,
          variables: Variables$Query$InspectionOperationPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InspectionOperationPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('InspectionStatusPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryInspectionStatusPageRead,
          variables: Variables$Query$InspectionStatusPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$InspectionStatusPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ItemTaskCostPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryItemTaskCostPageRead,
          variables: Variables$Query$ItemTaskCostPageRead(first: 1, mstrItemId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ItemTaskCostPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('LicenseHoldersPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryLicenseHoldersPageRead,
          variables: Variables$Query$LicenseHoldersPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$LicenseHoldersPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('LicensePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryLicensePageRead,
          variables: Variables$Query$LicensePageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$LicensePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('LocationPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryLocationPageRead,
          variables: Variables$Query$LocationPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$LocationPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('WorkCalendarPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryWorkCalendarPageRead,
          variables: Variables$Query$WorkCalendarPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$WorkCalendarPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
  });

  group('通信の異常(代役サーバー)', () {
    late FaultyGraphqlServer server;
    setUp(() async => server = await FaultyGraphqlServer.start());
    tearDown(() => server.close());

    QueryOptions options() => QueryOptions(
      document: documentNodeQueryCapabilityPageRead,
      variables: Variables$Query$CapabilityPageRead(first: 1, languageCodeId: _zeroId).toJson(),
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
