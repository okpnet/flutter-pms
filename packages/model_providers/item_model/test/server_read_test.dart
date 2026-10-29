// このファイルは gen_server_test が生成した通信テストです。直接編集しないでください。
// 再生成: dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers
//
// 1) 検証用サーバーに対し、全readクエリを first: 1 で実行する(読み取り専用)。
// 2) 通信の異常(遅延・切断・認証エラー)は、ローカルの代役サーバーで再現する。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:item_model/item_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

const _zeroId = '00000000-0000-0000-0000-000000000000';

void main() {
  group('検証用サーバー: 全readクエリ', () {
    serverTest('ItemKindPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryItemKindPageRead,
          variables: Variables$Query$ItemKindPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ItemKindPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ItemOnHandPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryItemOnHandPageRead,
          variables: Variables$Query$ItemOnHandPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ItemOnHandPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ItemOperationPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryItemOperationPageRead,
          variables: Variables$Query$ItemOperationPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ItemOperationPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ItemOperationTaskPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryItemOperationTaskPageRead,
          variables: Variables$Query$ItemOperationTaskPageRead(first: 1, languageCodeId: _zeroId, mstrItemId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ItemOperationTaskPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ItemPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryItemPageRead,
          variables: Variables$Query$ItemPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ItemPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ItemSizeKindPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryItemSizeKindPageRead,
          variables: Variables$Query$ItemSizeKindPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ItemSizeKindPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ItemSizePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryItemSizePageRead,
          variables: Variables$Query$ItemSizePageRead(first: 1, mstrItemId: _zeroId, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ItemSizePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('ManufacturePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryManufacturePageRead,
          variables: Variables$Query$ManufacturePageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$ManufacturePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('OperationPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryOperationPageRead,
          variables: Variables$Query$OperationPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$OperationPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('SpecMeasurementPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQuerySpecMeasurementPageRead,
          variables: Variables$Query$SpecMeasurementPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$SpecMeasurementPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('TaskEquipmentAvailablePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryTaskEquipmentAvailablePageRead,
          variables: Variables$Query$TaskEquipmentAvailablePageRead(first: 1, mstrTaskLocationId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$TaskEquipmentAvailablePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('TaskGroupPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryTaskGroupPageRead,
          variables: Variables$Query$TaskGroupPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$TaskGroupPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('TaskOutsourceAvailablePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryTaskOutsourceAvailablePageRead,
          variables: Variables$Query$TaskOutsourceAvailablePageRead(first: 1, mstrTaskLocationId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$TaskOutsourceAvailablePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('TaskPageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryTaskPageRead,
          variables: Variables$Query$TaskPageRead(first: 1, languageCodeId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$TaskPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
    serverTest('TaskResourcePageRead', (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryTaskResourcePageRead,
          variables: Variables$Query$TaskResourcePageRead(first: 1, languageCodeId: _zeroId, mstrTaskId: _zeroId).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      Query$TaskResourcePageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
    });
  });

  group('通信の異常(代役サーバー)', () {
    late FaultyGraphqlServer server;
    setUp(() async => server = await FaultyGraphqlServer.start());
    tearDown(() => server.close());

    QueryOptions options() => QueryOptions(
      document: documentNodeQueryItemKindPageRead,
      variables: Variables$Query$ItemKindPageRead(first: 1, languageCodeId: _zeroId).toJson(),
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
