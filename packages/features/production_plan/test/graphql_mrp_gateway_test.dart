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

/// ビュー v_mrp_suggestion の 1 行。種類・判断は boolean の列(kind・decision は無い)。
Map<String, Object?> _suggestion({
  required int seq,
  bool purchase = true,
  bool supplyRequest = false,
  bool exception = false,
  bool undecided = true,
  bool info = false,
  bool late = false,
}) => {
  '__typename': 'VMrpSuggestion',
  'transMrpSuggestionId': 'aaaaaaaa-0000-0000-0000-00000000000$seq',
  'transMrpRunId': 'bbbbbbbb-0000-0000-0000-000000000001',
  'seq': seq,
  'isPurchase': purchase,
  'isProduction': false,
  'isOutsource': false,
  'isPlan': false,
  'isException': exception,
  'isSupplyRequest': supplyRequest,
  'isNew': purchase || supplyRequest,
  'isChange': false,
  'isCancel': false,
  'isKeep': false,
  'isOption': false,
  'subjectEquipment': exception,
  'subjectStock': false,
  'subjectMaster': false,
  'needUser': undecided,
  'undecided': undecided,
  'adopted': false,
  'rejected': false,
  'isInfo': info,
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
  'allVMrpSuggestions': {
    '__typename': 'VMrpSuggestionsConnection',
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

  group('検証用サーバー(MRP の実行。テストデータを変更する)', () {
    Future<String> japaneseId(GraphQLClient client) async {
      final result = await client.query(
        QueryOptions(
          document: gql(
            r'''query { allSharedLanguageCodes { nodes { sharedLanguageCodeId code } } }''',
          ),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      expect(result.hasException, isFalse, reason: '${result.exception}');
      // DB の値は小文字(ja)。大文字小文字を区別せずに探す。
      final nodes = (result.data!['allSharedLanguageCodes']['nodes'] as List)
          .where((n) => (n['code'] as String).toUpperCase() == 'JA')
          .toList();
      expect(nodes, isNotEmpty, reason: 'language_code JA がありません');
      return nodes.first['sharedLanguageCodeId'] as String;
    }

    Future<String> adminId(GraphQLClient client) async {
      final result = await client.query(
        QueryOptions(
          document: gql(
            r'''query { allInfoStaffs(filter: {code: {equalTo: "ADMIN"}}) { nodes { infoStaffId } } }''',
          ),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      expect(result.hasException, isFalse, reason: '${result.exception}');
      final nodes = result.data!['allInfoStaffs']['nodes'] as List;
      expect(nodes, isNotEmpty, reason: '担当者 ADMIN がありません');
      return nodes.first['infoStaffId'] as String;
    }

    for (final mode in MrpMode.values) {
      serverTest('${mode.name}MRP を実行して提案を受け取る', (server) async {
        // MRP の計算は重く、検証用サーバーの既定の制限時間(20秒)を超えることがある。制限の無い接続を使う。
        final client = _clientTo(server.url, headers: server.provider.headers);
        final gateway = GraphqlMrpGateway(
          client: client,
          languageCodeId: await japaneseId(client),
        );
        final result = await gateway.execute(
          mode: mode,
          staffId: await adminId(client),
        );
        expect(result.mode, mode);
        expect(result.suggestions, isNotEmpty);
        for (final s in result.suggestions) {
          expect(s.itemCode, isNotEmpty, reason: s.message);
        }
      }, timeout: const Timeout(Duration(minutes: 6)));
    }
  });

  group('代役サーバー', () {
    late FaultyGraphqlServer server;

    setUp(() async {
      server = await FaultyGraphqlServer.start();
      server.data = _data([
        _suggestion(seq: 1),
        _suggestion(
          seq: 2,
          purchase: false,
          exception: true,
          undecided: false,
          info: true,
          late: true,
        ),
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
      expect(first.isPurchase, isTrue);
      expect(first.isNew, isTrue);
      expect(first.itemCode, 'M-1001');
      expect(first.itemName, 'SUS304丸棒');
      expect(first.quantity, 2100.5);
      expect(first.allocation, 1500);
      expect(first.undecided, isTrue);
      expect(result.suggestions.last.isInfo, isTrue);
      expect(result.suggestions.last.isException, isTrue);
      expect(result.suggestions.last.subjectEquipment, isTrue);
      expect(result.lateCount, 1);
      // mutation・実行の状態の読み込み・提案の読み込みの3回。
      expect(server.requestCount, 3);
      expect(server.requests.first.body, contains('mrpExecute'));
      expect(server.requests.first.body, contains('"pMode":1'));
      expect(server.requests.first.body, contains('"pAcceptLate":true'));
      expect(server.requests.last.body, contains(_languageId));
    });

    test('支給依頼(SUPPLY_REQUEST。要判断)の提案を受け取る(行が消えない・失敗にならない)', () async {
      server.data = _data([
        _suggestion(seq: 1, purchase: false, supplyRequest: true),
        _suggestion(seq: 2),
      ]);
      final result = await _gateway(
        _clientTo(server.url),
      ).execute(mode: MrpMode.order, staffId: '');
      expect(result.suggestions.length, 2);
      expect(result.suggestions.first.isSupplyRequest, isTrue);
      expect(result.suggestions.first.undecided, isTrue);
      expect(result.suggestions.first.needUser, isTrue);
      expect(result.pendingCount, 2);
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

  group('代役サーバー(手続き: 調査・計算・判断・確定・破棄)', () {
    late FaultyGraphqlServer server;

    Map<String, Object?> runRow({bool committed = false, bool calculated = true}) => {
      '__typename': 'VMrpRun',
      'transMrpRunId': 'bbbbbbbb-0000-0000-0000-000000000001',
      'isCalculated': calculated,
      'isCommitted': committed,
      'isDiscarded': false,
      'isExpired': false,
      'isOrderRun': true,
      'isRerun': false,
      'runAt': '2026-10-30T09:00:00',
      'suggestionCount': 1,
      'pendingCount': 1,
      'lateCount': 0,
      'overloadCount': 0,
    };

    Map<String, Object?> payload(String field, {bool committed = false}) => {
      '__typename': 'Mutation',
      field: {
        '__typename': '${field[0].toUpperCase()}${field.substring(1)}Payload',
        'transMrpRun': {
          '__typename': 'TransMrpRun',
          'transMrpRunId': 'bbbbbbbb-0000-0000-0000-000000000001',
          'runAt': '2026-10-30T09:00:00',
          'status': committed ? 1 : 0,
        },
      },
      'allVMrpRuns': {
        '__typename': 'VMrpRunsConnection',
        'totalCount': 1,
        'pageInfo': {'__typename': 'PageInfo', 'hasNextPage': false, 'endCursor': null},
        'nodes': [runRow(committed: committed, calculated: !committed)],
      },
      'allVMrpSuggestions': {
        '__typename': 'VMrpSuggestionsConnection',
        'totalCount': 1,
        'pageInfo': {'__typename': 'PageInfo', 'hasNextPage': false, 'endCursor': null},
        'nodes': [_suggestion(seq: 1)],
      },
    };

    setUp(() async => server = await FaultyGraphqlServer.start());
    tearDown(() => server.close());

    test('計算だけ(mrpRun)。確定も破棄もしない。結果は確定待ちで、提案の ID を持つ', () async {
      server.data = payload('mrpRun');
      final result = await _gateway(_clientTo(server.url)).calculate(
        mode: MrpMode.redo,
        staffId: 'staff-1',
      );
      expect(server.requests.first.body, contains('mrpRun'));
      expect(server.requests.first.body, isNot(contains('mrpExecute')));
      expect(server.requests.first.body, contains('"pMode":2'));
      expect(result.runId, 'bbbbbbbb-0000-0000-0000-000000000001');
      expect(result.isCommitted, isFalse);
      expect(result.awaitingCommit, isTrue);
      expect(result.executedAt, DateTime.parse('2026-10-30T09:00:00'));
      expect(result.suggestions.single.id, 'aaaaaaaa-0000-0000-0000-000000000001');
    });

    test('採否の変更(mrpSetDecision)。採用は 1、却下は 2。提案の ID を渡す', () async {
      server.data = {
        '__typename': 'Mutation',
        'mrpSetDecision': {'__typename': 'MrpSetDecisionPayload', 'transMrpSuggestions': []},
      };
      final gateway = _gateway(_clientTo(server.url));
      await gateway.decide(
        runId: 'run-1',
        adopt: true,
        staffId: 'staff-1',
        suggestionIds: const ['s-1', 's-2'],
      );
      expect(server.requests.last.body, contains('mrpSetDecision'));
      expect(server.requests.last.body, contains('"pDecision":1'));
      expect(server.requests.last.body, contains('"pRunId":"run-1"'));
      expect(server.requests.last.body, contains('"pSuggestionIds":["s-1","s-2"]'));
      await gateway.decide(runId: 'run-1', adopt: false, staffId: '');
      expect(server.requests.last.body, contains('"pDecision":2'));
      // 空の staffId・提案の ID は送らない(省略 = JWT の担当者・すべての提案)
      expect(server.requests.last.body, isNot(contains('pStaffId')));
      expect(server.requests.last.body, isNot(contains('pSuggestionIds')));
    });

    test('確定(mrpCommit)。force を渡す。確定済みの結果を返す', () async {
      server.data = payload('mrpCommit', committed: true);
      final result = await _gateway(_clientTo(server.url)).commit(
        runId: 'run-1',
        staffId: 'staff-1',
        force: true,
      );
      expect(server.requests.first.body, contains('mrpCommit'));
      expect(server.requests.first.body, contains('"pForce":true'));
      expect(result.isCommitted, isTrue);
      expect(result.awaitingCommit, isFalse);
    });

    test('確定の失敗(MRP01・MRP03)は、サーバーのコードを失敗のコードにする', () {
      for (final code in ['MRP01', 'MRP03']) {
        final failure = GraphqlMrpGateway.failureOf(
          OperationException(
            graphqlErrors: [
              GraphQLError(
                message: '確定できません',
                extensions: {
                  'exception': {'errcode': code},
                },
              ),
            ],
          ),
        );
        expect(failure?.code, code);
      }
    });

    test('破棄(mrpDiscard)', () async {
      server.data = payload('mrpDiscard');
      await _gateway(_clientTo(server.url)).discard(runId: 'run-1', staffId: 'staff-1');
      expect(server.requests.first.body, contains('mrpDiscard'));
      expect(server.requests.first.body, contains('"pRunId":"run-1"'));
    });

    test('確定待ちの実行(openRun)。計算済みの実行を読む。無ければ null', () async {
      server.data = payload('mrpRun');
      final open = await _gateway(_clientTo(server.url)).openRun();
      expect(server.requests.first.body, contains('isCalculated'));
      expect(open?.awaitingCommit, isTrue);
      server.data = {
        '__typename': 'Query',
        'allVMrpRuns': {
          '__typename': 'VMrpRunsConnection',
          'totalCount': 0,
          'pageInfo': {'__typename': 'PageInfo', 'hasNextPage': false, 'endCursor': null},
          'nodes': <Object?>[],
        },
      };
      expect(await _gateway(_clientTo(server.url)).openRun(), isNull);
    });

    test('調査(mrpCheckItems)。不備を機能の型で受け取る。品目を指定できる', () async {
      server.data = {
        '__typename': 'Query',
        'mrpCheckItems': {
          '__typename': 'VMrpMasterIssuesConnection',
          'nodes': [
            {
              '__typename': 'VMrpMasterIssue',
              'issueKey': 'k-1',
              'itemId': 'dddddddd-0000-0000-0000-000000000001',
              'itemCode': 'S-3001',
              'issueCode': 'ROUTING_TASK_REMOVED',
              'severity': 1,
              'message': '工程が削除されています',
              'refTable': 'mstr_item_operation_task',
              'refId': null,
            },
          ],
        },
      };
      final issues = await _gateway(_clientTo(server.url)).check(itemIds: const ['i-1']);
      expect(server.requests.first.body, contains('mrpCheckItems'));
      expect(server.requests.first.body, contains('"pItemIds":["i-1"]'));
      expect(issues.single.itemCode, 'S-3001');
      expect(issues.single.message, '工程が削除されています');
      expect(issues.single.severity, 1);
    });
  });
}
