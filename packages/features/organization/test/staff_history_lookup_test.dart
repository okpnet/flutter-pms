// 担当者の最新の履歴の ID を引く関数(更新者の履歴の ID)の単体テスト。通信は差し替えた Link で行い、サーバーには接続しない。

import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';

/// 受け取った要求を記録し、決まった応答を返す通信路。
class _FakeLink extends Link {
  _FakeLink(this._respond);

  final Response Function(Request request) _respond;
  final requests = <Request>[];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    return Stream.value(_respond(request));
  }
}

GraphQLClient _client(Link link) =>
    GraphQLClient(link: link, cache: GraphQLCache());

Response _nodes(List<Map<String, Object?>> nodes) => Response(
  data: {
    'allHistoryInfoStaffs': {
      'totalCount': nodes.length,
      'pageInfo': {
        'hasNextPage': false,
        'endCursor': null,
        '__typename': 'PageInfo',
      },
      'nodes': nodes,
      '__typename': 'HistoryInfoStaffsConnection',
    },
    '__typename': 'Query',
  },
  response: const {},
);

void main() {
  test('担当者の履歴を、revision の降順で 1 件だけ読み、その ID を返す', () async {
    final link = _FakeLink(
      (_) => _nodes([
        {
          'historyId': 'h-new',
          'infoStaffId': 's-1',
          'revision': 3,
          '__typename': 'HistoryInfoStaff',
        },
      ]),
    );
    final lookup = staffHistoryLookup(_client(link));

    expect(await lookup('s-1'), 'h-new');

    final vars = link.requests.single.variables;
    expect(vars['first'], 1);
    expect(vars['orderBy'], ['REVISION_DESC']);
    expect(vars['filter'], {
      'infoStaffId': {'equalTo': 's-1'},
    });
  });

  test('履歴が無い担当者は null(更新者を送らない)', () async {
    final lookup = staffHistoryLookup(_client(_FakeLink((_) => _nodes([]))));

    expect(await lookup('s-none'), isNull);
  });

  test('通信の失敗は、そのまま投げる(更新者を欠いたまま保存しない)', () async {
    final lookup = staffHistoryLookup(
      _client(
        _FakeLink(
          (_) => Response(
            errors: const [GraphQLError(message: 'permission denied')],
            response: const {},
          ),
        ),
      ),
    );

    await expectLater(lookup('s-1'), throwsA(isA<OperationException>()));
  });
}
