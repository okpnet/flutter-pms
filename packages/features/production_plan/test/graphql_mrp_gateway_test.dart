// MRP の窓口(GraphQL)の通信テスト。
//
// 1) 検証用サーバー: 提案の読み込みだけを行う(読み取り専用)。`mrpExecute` は計算・確定でデータを
//    変更するため、検証用サーバーでは実行しない。
// 2) 代役サーバー: 実行(mutation)と提案の読み込み、通信の異常(遅延・切断・認証エラー)を再現する。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:production_plan/production_plan.dart';

const _zeroId = '00000000-0000-0000-0000-000000000000';
const _languageId = '11111111-1111-1111-1111-111111111111';

GraphQLClient _clientTo(String url, {Map<String, String> headers = const {}}) =>
    GraphQLClient(
      link: HttpLink(url, defaultHeaders: headers),
      cache: GraphQLCache(),
    );

GraphqlMrpGateway _gateway(GraphQLClient client) =>
    GraphqlMrpGateway(client: client, languageCodeId: _languageId);

Map<String, Object?> _suggestion({
  required int seq,
  String kind = 'PURCHASE_NEW',
  int decision = 0,
  bool late = false,
}) => {
  '__typename': 'TransMrpSuggestion',
  'transMrpSuggestionId': 'aaaaaaaa-0000-0000-0000-00000000000$seq',
  'transMrpRunId': 'bbbbbbbb-0000-0000-0000-000000000001',
  'seq': seq,
  'kind': kind,
  'decision': decision,
  'late': late,
  'quantity': '2100.5',
  'allocatedQuantity': '1500',
  'needAt': '2026-11-06T00:00:00',
  'message': '不足分を発注します',
  'item': {
    '__typename': 'HistoryMstrItem',
    'historyId': 'cccccccc-0000-0000-0000-000000000001',
    'mstrItemId': 'dddddddd-0000-0000-0000-000000000001',
    'master': {
      '__typename': 'MstrItem',
      'mstrItemId': 'dddddddd-0000-0000-0000-000000000001',
      'code': 'M-1001',
      'labels': {
        '__typename': 'SharedAppellation',
        'sharedAppellationsId': 'eeeeeeee-0000-0000-0000-000000000001',
        'sharedDictionaryBySharedDictionaryNameId': {
          '__typename': 'SharedDictionary',
          'sharedDictionaryId': 'ffffffff-0000-0000-0000-000000000001',
          'value': {
            '__typename': 'SharedDictionaryValuesConnection',
            'nodes': [
              {
                '__typename': 'SharedDictionaryValue',
                'dictionaryValue': 'SUS304丸棒',
              },
            ],
          },
        },
      },
    },
  },
};

Map<String, Object?> _data(List<Map<String, Object?>> suggestions) => {
  '__typename': 'Mutation',
  'mrpExecute': {
    '__typename': 'MrpExecutePayload',
    'transMrpRun': {
      '__typename': 'TransMrpRun',
      'transMrpRunId': 'bbbbbbbb-0000-0000-0000-000000000001',
      'runMode': 1,
      'staffHistoryId': 'cccccccc-0000-0000-0000-000000000002',
      'staffId': 'cccccccc-0000-0000-0000-000000000003',
      'status': 0,
      'runAt': '2026-10-30T09:00:00',
      'suggestionCount': suggestions.length,
      'pendingCount': 0,
      'lateCount': 0,
      'overloadCount': 0,
      'updateAt': '2026-10-30T09:00:00',
    },
  },
  'allTransMrpSuggestions': {
    '__typename': 'TransMrpSuggestionsConnection',
    'totalCount': suggestions.length,
    'pageInfo': {
      '__typename': 'PageInfo',
      'hasNextPage': false,
      'endCursor': null,
    },
    'nodes': suggestions,
  },
};

void main() {
  group('検証用サーバー(読み取りのみ)', () {
    serverTest('存在しない実行の提案は空で返る', (server) async {
      final suggestions = await _gateway(
        server.provider.client,
      ).fetchSuggestions(_zeroId);
      expect(suggestions, isEmpty);
    });
  });

  group('代役サーバー', () {
    late FaultyGraphqlServer server;

    setUp(() async {
      server = await FaultyGraphqlServer.start();
      server.data = _data([
        _suggestion(seq: 1),
        _suggestion(seq: 2, kind: 'EXC_OVERLOAD', decision: 9, late: true),
      ]);
    });
    tearDown(() => server.close());

    test('実行して提案を機能の型で受け取る', () async {
      final result = await _gateway(_clientTo(server.url)).execute(
        mode: MrpMode.order,
        staffId: 'staff-1',
        acceptLate: true,
      );
      expect(result.mode, MrpMode.order);
      expect(result.executedAt, DateTime.parse('2026-10-30T09:00:00'));
      expect(result.suggestionCount, 2);
      final first = result.suggestions.first;
      expect(first.kind, MrpSuggestionKind.purchaseNew);
      expect(first.itemCode, 'M-1001');
      expect(first.itemName, 'SUS304丸棒');
      expect(first.quantity, 2100.5);
      expect(first.allocation, 1500);
      expect(first.decision, MrpDecision.pending);
      expect(result.suggestions.last.decision, MrpDecision.info);
      expect(result.lateCount, 1);
      // mutation と提案の読み込みの2回。
      expect(server.requestCount, 2);
      expect(server.requests.first.body, contains('mrpExecute'));
      expect(server.requests.first.body, contains('"pMode":1'));
      expect(server.requests.first.body, contains('"pAcceptLate":true'));
      expect(server.requests.last.body, contains(_languageId));
    });

    test('未知の提案種別は失敗にする(確かめていない結果を出さない)', () async {
      server.data = _data([_suggestion(seq: 1, kind: 'UNKNOWN')]);
      expect(
        () => _gateway(
          _clientTo(server.url),
        ).execute(mode: MrpMode.order, staffId: ''),
        throwsA(
          isA<MrpFailure>().having((f) => f.code, 'code', 'MRP_UNKNOWN_KIND'),
        ),
      );
    });

    test('サーバーのエラーコード(MRP00)を失敗のコードにする', () {
      final failure = GraphqlMrpGateway.failureOf(
        OperationException(
          graphqlErrors: [
            const GraphQLError(
              message: '引数エラー',
              extensions: {
                'exception': {'code': 'MRP00'},
              },
            ),
          ],
        ),
      );
      expect(failure?.code, MrpFailure.invalidArgument);
    });

    test('認証エラー(401)は HTTP_401 の失敗になる', () async {
      server.kind = FaultKind.status;
      server.status = 401;
      expect(
        () => _gateway(
          _clientTo(server.url),
        ).execute(mode: MrpMode.order, staffId: ''),
        throwsA(isA<MrpFailure>().having((f) => f.code, 'code', 'HTTP_401')),
      );
    });

    test('応答の途中の切断は NETWORK の失敗になる', () async {
      server.kind = FaultKind.dropMidResponse;
      expect(
        () => _gateway(
          _clientTo(server.url),
        ).execute(mode: MrpMode.order, staffId: ''),
        throwsA(isA<MrpFailure>().having((f) => f.code, 'code', 'NETWORK')),
      );
    });

    test('認証ヘッダーが要求に付く', () async {
      await _gateway(
        _clientTo(server.url, headers: {'Authorization': 'Bearer t'}),
      ).execute(mode: MrpMode.order, staffId: '');
      expect(server.requests.first.authorization, 'Bearer t');
    });
  });
}
