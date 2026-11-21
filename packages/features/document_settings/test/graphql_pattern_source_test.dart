import 'package:data_test_harness/data_test_harness.dart';
import 'package:document_settings/document_settings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';

class _FakeLink extends Link {
  final List<Request> requests = [];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final op = request.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;
    final data = op == 'ApprovalPatternStylePageRead'
        ? {
            'allMstrApprovalPatterns': {
              'nodes': [
                {
                  'mstrApprovalPatternId': 'p1',
                  'labels': {
                    'sharedDictionaryBySharedDictionaryNameId': {
                      'value': {
                        'nodes': [
                          {'dictionaryValue': '標準(承認不要)'},
                        ],
                      },
                    },
                  },
                },
                {'mstrApprovalPatternId': 'p2', 'labels': null}, // 名称が無いパターンも一覧に出す(ID で見分ける)
              ],
            },
          }
        : {
            'allSharedLanguageCodes': {
              'nodes': [
                {'sharedLanguageCodeId': 'L', 'code': 'JA'},
              ],
            },
          };
    return Stream.value(Response(data: {'__typename': 'Query', ...data}, response: const {}));
  }
}

void main() {
  test('承認パターンの一覧: 言語コード ja の名称で返す(名称が無ければ空)', () async {
    final link = _FakeLink();
    final list = await GraphqlApprovalPatternSource(GraphQLClient(link: link, cache: GraphQLCache())).list();
    expect(list.map((p) => p.id), ['p1', 'p2']);
    expect(list.first.name, '標準(承認不要)');
    expect(list.last.name, '');
    final query = link.requests.last;
    expect(query.variables['languageCodeId'], 'L');
  });

  serverTest('検証用サーバー(読み取りだけ): 承認パターンの一覧を、名称つきで取得できる', (server) async {
    final list = await GraphqlApprovalPatternSource(server.provider.client).list();
    // 標準の承認パターン(07_dummy.sql の 7。段が 0 件)があれば名称が付く。無い DB でも、取得できる(空)ことを確かめる
    for (final p in list) {
      expect(p.id, isNotEmpty);
    }
  });
}
