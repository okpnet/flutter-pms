// このファイルは gen_server_test が生成した通信テストです。直接編集しないでください。
// 再生成: dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers
//
// 1) 検証用サーバーに対し、全readクエリを first: 1 で実行する(読み取り専用)。
// 2) 通信の異常(遅延・切断・認証エラー)は、ローカルの代役サーバーで再現する。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:quality_model/quality_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

const _zeroId = '00000000-0000-0000-0000-000000000000';

void main() {
  group('検証用サーバー: 全readクエリ', () {
    serverTest('AuditMemberPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryAuditMemberPageRead,
          variables: Variables$Query$AuditMemberPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transAuditId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$AuditMemberPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('AuditPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryAuditPageRead,
          variables: Variables$Query$AuditPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$AuditPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('AuditStdCheckitemPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryAuditStdCheckitemPageRead,
          variables: Variables$Query$AuditStdCheckitemPageRead(
            first: 1,
            languageCodeId: _zeroId,
            mstrAuditStdId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$AuditStdCheckitemPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('AuditStdPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryAuditStdPageRead,
          variables: Variables$Query$AuditStdPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$AuditStdPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('AuditTeamPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryAuditTeamPageRead,
          variables: Variables$Query$AuditTeamPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transAuditId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$AuditTeamPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('AuditorPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryAuditorPageRead,
          variables: Variables$Query$AuditorPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transAuditTeamId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$AuditorPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ComplaintEquipmentPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryComplaintEquipmentPageRead,
          variables: Variables$Query$ComplaintEquipmentPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transComplaintId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ComplaintEquipmentPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ComplaintFilePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryComplaintFilePageRead,
          variables: Variables$Query$ComplaintFilePageRead(
            first: 1,
            languageCodeId: _zeroId,
            transComplaintId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ComplaintFilePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ComplaintOrderPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryComplaintOrderPageRead,
          variables: Variables$Query$ComplaintOrderPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transComplaintId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ComplaintOrderPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ComplaintPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryComplaintPageRead,
          variables: Variables$Query$ComplaintPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ComplaintPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ComplaintProcessPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryComplaintProcessPageRead,
          variables: Variables$Query$ComplaintProcessPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transComplaintId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ComplaintProcessPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ComplaintReceivePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryComplaintReceivePageRead,
          variables: Variables$Query$ComplaintReceivePageRead(
            first: 1,
            languageCodeId: _zeroId,
            transComplaintId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ComplaintReceivePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ComplaintStakeholderPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryComplaintStakeholderPageRead,
          variables: Variables$Query$ComplaintStakeholderPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transComplaintId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ComplaintStakeholderPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('DisposalPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryDisposalPageRead,
          variables: Variables$Query$DisposalPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transComplaintId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$DisposalPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ObserverDisposalPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryObserverDisposalPageRead,
          variables: Variables$Query$ObserverDisposalPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ObserverDisposalPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ObserverPreventivePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryObserverPreventivePageRead,
          variables: Variables$Query$ObserverPreventivePageRead(
            first: 1,
            languageCodeId: _zeroId,
            transRecurrencePreventionId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ObserverPreventivePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('OrderDetailRiskPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryOrderDetailRiskPageRead,
          variables: Variables$Query$OrderDetailRiskPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transOrderDetailId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$OrderDetailRiskPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('OrderRiskPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryOrderRiskPageRead,
          variables: Variables$Query$OrderRiskPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transOrderId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$OrderRiskPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('PreventionDetailPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryPreventionDetailPageRead,
          variables: Variables$Query$PreventionDetailPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transPreventionId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$PreventionDetailPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('PreventionPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryPreventionPageRead,
          variables: Variables$Query$PreventionPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transRiskId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$PreventionPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('RecurrencePreventionPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryRecurrencePreventionPageRead,
          variables: Variables$Query$RecurrencePreventionPageRead(
            first: 1,
            languageCodeId: _zeroId,
            transDisposalId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$RecurrencePreventionPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ReportPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryReportPageRead,
          variables: Variables$Query$ReportPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ReportPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('RiskPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryRiskPageRead,
          variables: Variables$Query$RiskPageRead(
            first: 1,
            languageCodeId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$RiskPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('TaskRiskPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryTaskRiskPageRead,
          variables: Variables$Query$TaskRiskPageRead(
            first: 1,
            languageCodeId: _zeroId,
            mstrTaskId: _zeroId,
          ).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$TaskRiskPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
  });

  group('通信の異常(代役サーバー)', () {
    late FaultyGraphqlServer server;
    setUp(() async => server = await FaultyGraphqlServer.start());
    tearDown(() => server.close());

    QueryOptions options() => QueryOptions(
      document: documentNodeQueryAuditMemberPageRead,
      variables: Variables$Query$AuditMemberPageRead(
        first: 1,
        languageCodeId: _zeroId,
        transAuditId: _zeroId,
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
