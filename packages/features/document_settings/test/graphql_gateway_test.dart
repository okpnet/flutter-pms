import 'dart:convert';

import 'package:document_settings/document_settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

/// 問い合わせの名前(`query AppSettingsPageRead` の AppSettingsPageRead)。
String? _opName(Request r) =>
    r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

/// 問い合わせを記録して、決めた応答を返す通路(サーバーには接続しない)。
class _FakeLink extends Link {
  final List<Request> requests = [];
  Map<String, dynamic> Function(Request) respond = (_) => {};

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final root = _opName(request) == 'AppSettingsPageEdit' ? 'Mutation' : 'Query';
    return Stream.value(Response(data: {'__typename': root, ...respond(request)}, response: const {}));
  }
}

GraphQLClient _client(_FakeLink link) => GraphQLClient(link: link, cache: GraphQLCache());

void main() {
  test('読み込み: info_app の設定(JSON)を返し、行の ID を覚える', () async {
    final link = _FakeLink()
      ..respond = (r) => {
            'allInfoApps': {
              '__typename': 'InfoAppsConnection',
              'totalCount': 1,
              'pageInfo': {'__typename': 'PageInfo', 'hasNextPage': false, 'endCursor': null},
              'nodes': [
                {
                  '__typename': 'InfoApp',
                  'infoAppId': '11111111-1111-1111-1111-111111111111',
                  'name': 'Product Manufacturing System',
                  'symbol': 'APP0001',
                  'revision': 3,
                  'settings': {'version': 1, 'stamp': {'opacity': 0.4}},
                  'updateAt': '2026-11-21T00:00:00',
                  'remove': false,
                },
              ],
            },
          };
    final g = GraphqlAppSettingsGateway(_client(link));
    final raw = await g.load();
    expect((raw as Map)['stamp'], {'opacity': 0.4});
    expect(_opName(link.requests.single), 'AppSettingsPageRead');
    expect(link.requests.single.variables['first'], 1);
  });

  test('行が無いときは null(標準の設定になる)', () async {
    final link = _FakeLink()
      ..respond = (_) => {
            'allInfoApps': {
              '__typename': 'InfoAppsConnection',
              'totalCount': 0,
              'pageInfo': {'__typename': 'PageInfo', 'hasNextPage': false, 'endCursor': null},
              'nodes': [],
            },
          };
    expect(await GraphqlAppSettingsGateway(_client(link)).load(), isNull);
  });

  test('保存: 設定と更新者を送る。先に読み込んでいなくても、行の ID を引いてから保存する', () async {
    final link = _FakeLink()
      ..respond = (r) {
        if (_opName(r) == 'AppSettingsPageRead') {
          return {
            'allInfoApps': {
              '__typename': 'InfoAppsConnection',
              'totalCount': 1,
              'pageInfo': {'__typename': 'PageInfo', 'hasNextPage': false, 'endCursor': null},
              'nodes': [
                {
                  '__typename': 'InfoApp',
                  'infoAppId': '11111111-1111-1111-1111-111111111111',
                  'name': 'x',
                  'symbol': 's',
                  'revision': 1,
                  'settings': null,
                  'updateAt': '2026-11-21T00:00:00',
                  'remove': false,
                },
              ],
            },
          };
        }
        return {
          'updateInfoAppByInfoAppId': {
            '__typename': 'UpdateInfoAppPayload',
            'infoApp': {'__typename': 'InfoApp', 'infoAppId': '11111111-1111-1111-1111-111111111111', 'settings': {}},
          },
        };
      };
    final g = GraphqlAppSettingsGateway(
      _client(link),
      auditUser: () async => const AuditUser(staffId: 'staff-1', staffHistoryId: 'hist-1'),
    );
    await g.save({'version': 1, 'stamp': {'opacity': 0.5}});
    expect(link.requests.map(_opName), ['AppSettingsPageRead', 'AppSettingsPageEdit']);
    final v = link.requests.last.variables;
    expect(v['infoAppId'], '11111111-1111-1111-1111-111111111111');
    expect(v['updateUserId'], 'staff-1');
    expect(v['updateUserHistoryId'], 'hist-1');
    // PostGraphile v4 の JSON は文字列で受け取る(pms_graphql の toJsonJson)
    final settings = v['settings'];
    expect(jsonDecode(settings is String ? settings : jsonEncode(settings)), {'version': 1, 'stamp': {'opacity': 0.5}});
  });

  test('通信の失敗は例外のまま投げる', () async {
    final link = _FakeLink()..respond = (_) => throw StateError('boom');
    await expectLater(GraphqlAppSettingsGateway(_client(link)).load(), throwsA(anything));
  });

  test('savedAppSettingsProvider: 保存されている設定を返し、読めないときは標準', () async {
    final g = InMemoryAppSettingsGateway({'version': 1, 'stamp': {'opacity': 0.2}});
    final c = ProviderContainer(overrides: [documentSettingsGatewayProvider.overrideWithValue(g)]);
    addTearDown(c.dispose);
    expect((await c.read(savedAppSettingsProvider.future)).stamp.opacity, 0.2);

    final bad = InMemoryAppSettingsGateway()..failing = true;
    final c2 = ProviderContainer(overrides: [documentSettingsGatewayProvider.overrideWithValue(bad)]);
    addTearDown(c2.dispose);
    expect((await c2.read(savedAppSettingsProvider.future)).stamp.opacity, 0.6);
  });
}
