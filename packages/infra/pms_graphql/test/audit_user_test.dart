import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';
import 'package:flutter_test/flutter_test.dart';

/// 履歴の ID の問い合わせに、決まった応答を返す偽の通信(呼ばれた回数を数える)。
class _FakeLink extends Link {
  _FakeLink(this.nodes);

  final List<Map<String, Object?>> nodes;
  int calls = 0;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    calls++;
    return Stream.value(
      Response(
        data: {
          'allHistoryInfoStaffs': {'nodes': nodes},
        },
        response: const {},
      ),
    );
  }
}

GraphQLClient _client(Link link) =>
    GraphQLClient(link: link, cache: GraphQLCache());

void main() {
  group('AuditUserResolver(更新者)', () {
    test('ログイン中の担当者の ID から、最新の履歴の ID を引く', () async {
      final link = _FakeLink([
        {'historyId': 'h-latest'},
      ]);
      final resolver = AuditUserResolver(
        client: _client(link),
        staffId: () => 's1',
      );
      final user = await resolver();
      expect(user?.staffId, 's1');
      expect(user?.staffHistoryId, 'h-latest');
    });

    test('同じ担当者は、履歴の ID を取り直さない。担当者が変わったときだけ引く', () async {
      final link = _FakeLink([
        {'historyId': 'h'},
      ]);
      var staff = 's1';
      final resolver = AuditUserResolver(
        client: _client(link),
        staffId: () => staff,
      );
      await resolver();
      await resolver();
      expect(link.calls, 1);
      staff = 's2';
      final changed = await resolver();
      expect(changed?.staffId, 's2');
      expect(link.calls, 2);
    });

    test('ログインしていない(担当者が分からない)ときは、通信せず null', () async {
      final link = _FakeLink(const []);
      final resolver = AuditUserResolver(
        client: _client(link),
        staffId: () => null,
      );
      expect(await resolver(), isNull);
      final empty = AuditUserResolver(client: _client(link), staffId: () => '');
      expect(await empty(), isNull);
      expect(link.calls, 0);
    });

    test('担当者の履歴が無いときは null', () async {
      final link = _FakeLink(const []);
      final resolver = AuditUserResolver(
        client: _client(link),
        staffId: () => 's1',
      );
      expect(await resolver(), isNull);
    });
  });
}
