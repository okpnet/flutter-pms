// AccessControlClient の通信テスト。
//
// 1) 検証用サーバー: 固定のアプリ(Product Manufacturing System)を名前で引く(読み取り専用)。
// 2) 代役の通信路: 名前の条件で問い合わせること、見つからないときの例外、覚えた値の再利用。
import 'dart:async';

import 'package:access_control_model/access_control_client.dart';
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';

class _FakeLink extends Link {
  _FakeLink(this.nodes);
  final List<Map<String, dynamic>> nodes;
  final calls = <(String, Map<String, dynamic>)>[];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    final name =
        request.operation.document.definitions
            .whereType<OperationDefinitionNode>()
            .first
            .name
            ?.value ??
        '';
    calls.add((name, Map<String, dynamic>.from(request.variables)));
    return Stream.value(
      Response(
        data: {
          'allInfoApps': {'nodes': nodes},
        },
        response: const {},
      ),
    );
  }
}

AccessControlClient _clientOn(Link link) => AccessControlClient(
  client: GraphQLClient(link: link, cache: GraphQLCache()),
);

void main() {
  group('固定のアプリ(検証用サーバー)', () {
    serverTest('名前でアプリの id を引ける', (server) async {
      final client = AccessControlClient(
        client: GraphQLClient(
          link: HttpLink(server.url),
          cache: GraphQLCache(),
        ),
      );
      try {
        expect(await client.appId(), isNotEmpty);
      } on AccessControlClientException {
        markTestSkipped('アプリ(${AccessControlClient.appName})のダミーデータが無い');
      }
    });
  });

  group('固定のアプリ(代役の通信路)', () {
    test('名前の条件で1件だけ問い合わせ、覚えた id を再利用する', () async {
      final link = _FakeLink([
        {'infoAppId': 'app-1', 'name': AccessControlClient.appName},
      ]);
      final client = _clientOn(link);
      expect(await client.appId(), 'app-1');
      expect(await client.appId(), 'app-1');
      expect(link.calls, hasLength(1));
      final (name, variables) = link.calls.single;
      expect(name, 'AppPageRead');
      expect(variables['first'], 1);
      expect(variables['filter'], {
        'name': {'equalTo': 'Product Manufacturing System'},
      });
    });

    test('見つからないときは例外', () async {
      final client = _clientOn(_FakeLink(const []));
      expect(client.appId(), throwsA(isA<AccessControlClientException>()));
    });
  });
}
