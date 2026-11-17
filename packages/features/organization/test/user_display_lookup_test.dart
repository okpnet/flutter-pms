// ログインユーザーの表示用の情報(氏名・所属の部署名)を引く関数の単体テスト。通信は差し替えた Link で行い、サーバーには接続しない。

import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';

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

const _languages = {
  'allSharedLanguageCodes': {
    'nodes': [
      {'sharedLanguageCodeId': 'lang-ja', 'code': 'ja'},
    ],
  },
};

Response _assigns(List<Map<String, Object?>> nodes) => Response(
  data: {
    'allInfoAssigns': {
      'totalCount': nodes.length,
      'pageInfo': {
        'hasNextPage': false,
        'endCursor': null,
        '__typename': 'PageInfo',
      },
      'nodes': nodes,
      '__typename': 'InfoAssignsConnection',
    },
    '__typename': 'Query',
  },
  response: const {},
);

void main() {
  test('割当が無い担当者は、氏名・所属とも空(表示はユーザーIDなど既定に任せる)', () async {
    final link = _FakeLink((r) {
      if (!r.variables.containsKey('first')) {
        return Response(data: _languages, response: const {});
      }
      return _assigns(const []);
    });
    final lookup = userDisplayLookup(_client(link));

    final d = await lookup('s-none');

    expect(d.name, isEmpty);
    expect(d.department, isEmpty);
    // 有効な割当のうち優先順位が最も高い 1 件だけを読む
    final assign = link.requests.last.variables;
    expect(assign['first'], 1);
    expect(assign['orderBy'], ['PRIORITY_ASC']);
    expect(assign['filter'], {
      'infoStaffId': {'equalTo': 's-none'},
      'enable': {'equalTo': true},
    });
    expect(assign['languageCodeId'], 'lang-ja');
  });

  test('通信の失敗は、そのまま投げる(呼び出し側が既定の表示にする)', () async {
    final link = _FakeLink((r) {
      if (!r.variables.containsKey('first')) {
        return Response(data: _languages, response: const {});
      }
      return Response(
        errors: const [GraphQLError(message: 'boom')],
        response: const {},
      );
    });
    final lookup = userDisplayLookup(_client(link));

    expect(() => lookup('s-1'), throwsA(isA<OperationException>()));
  });
}
