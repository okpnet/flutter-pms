// このファイルは gen_server_test が生成した通信テストです。直接編集しないでください。
// 再生成: dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers
//
// 1) 検証用サーバーに対し、全readクエリを first: 1 で実行する(読み取り専用)。
// 2) 通信の異常(遅延・切断・認証エラー)は、ローカルの代役サーバーで再現する。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

const _zeroId = '00000000-0000-0000-0000-000000000000';

void main() {
  group('検証用サーバー: 全readクエリ', () {
    serverTest('ApprovalOperationPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryApprovalOperationPageRead,
          variables: Variables$Query$ApprovalOperationPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ApprovalOperationPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ApprovalScopePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryApprovalScopePageRead,
          variables: Variables$Query$ApprovalScopePageRead(first: 1, languageCodeId: _zeroId, mstrApprovalPatternId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ApprovalScopePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('AssignPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryAssignPageRead,
          variables: Variables$Query$AssignPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$AssignPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('CompanyPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryCompanyPageRead,
          variables: Variables$Query$CompanyPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$CompanyPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('DepartmentCategoryPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryDepartmentCategoryPageRead,
          variables: Variables$Query$DepartmentCategoryPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$DepartmentCategoryPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('DepartmentPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryDepartmentPageRead,
          variables: Variables$Query$DepartmentPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$DepartmentPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('OfficePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryOfficePageRead,
          variables: Variables$Query$OfficePageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$OfficePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('PositionPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryPositionPageRead,
          variables: Variables$Query$PositionPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$PositionPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ProvisionPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryProvisionPageRead,
          variables: Variables$Query$ProvisionPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ProvisionPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('StaffCapabilityPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryStaffCapabilityPageRead,
          variables: Variables$Query$StaffCapabilityPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$StaffCapabilityPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('StaffCountPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryStaffCountPageRead,
          variables: Variables$Query$StaffCountPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$StaffCountPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('StaffHeldLicensePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryStaffHeldLicensePageRead,
          variables: Variables$Query$StaffHeldLicensePageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$StaffHeldLicensePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('StaffPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryStaffPageRead,
          variables: Variables$Query$StaffPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$StaffPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
  });

  group('通信の異常(代役サーバー)', () {
    late FaultyGraphqlServer server;
    setUp(() async => server = await FaultyGraphqlServer.start());
    tearDown(() => server.close());

    QueryOptions options() => QueryOptions(
      document: documentNodeQueryApprovalOperationPageRead,
      variables: Variables$Query$ApprovalOperationPageRead(first: 1, languageCodeId: _zeroId).toJson(),
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
