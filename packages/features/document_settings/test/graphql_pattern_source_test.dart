import 'dart:convert';

import 'package:data_test_harness/data_test_harness.dart';
import 'package:document_settings/document_settings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

Map<String, dynamic> _labels(String v) => {
  'sharedDictionaryBySharedDictionaryNameId': {
    'value': {
      'nodes': [
        {'dictionaryValue': v},
      ],
    },
  },
};

class _FakeLink extends Link {
  final List<Request> requests = [];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final data = switch (_op(request)) {
      'ApprovalPatternStylePageRead' => {
        'allMstrApprovalPatterns': {
          'nodes': [
            {'mstrApprovalPatternId': 'p1', 'labels': _labels('標準(承認不要)'), 'stampStyle': null},
            {
              'mstrApprovalPatternId': 'p2',
              'labels': null, // 名称が無いパターンも一覧に出す(ID で見分ける)
              'stampStyle': {
                'position': {'anchor': 'bottomLeft'},
              },
            },
            {'mstrApprovalPatternId': 'p3', 'labels': _labels('文字列の様式'), 'stampStyle': '{"opacity":0.3}'},
            {'mstrApprovalPatternId': 'p4', 'labels': _labels('壊れた様式'), 'stampStyle': '{ broken'},
            {'mstrApprovalPatternId': 'p5', 'labels': _labels('配列の様式'), 'stampStyle': [1]},
          ],
        },
      },
      'ApprovalPatternStylePageEdit' => {
        'updateMstrApprovalPatternByMstrApprovalPatternId': {
          'mstrApprovalPattern': {'mstrApprovalPatternId': 'p1', 'stampStyle': null},
        },
      },
      _ => {
        'allSharedLanguageCodes': {
          'nodes': [
            {'sharedLanguageCodeId': 'L', 'code': 'JA'},
          ],
        },
      },
    };
    return Stream.value(Response(data: {'__typename': 'Query', ...data}, response: const {}));
  }
}

GraphqlApprovalPatternSource _source(_FakeLink l, {bool audit = false}) => GraphqlApprovalPatternSource(
  GraphQLClient(link: l, cache: GraphQLCache()),
  auditUser: audit ? () async => const AuditUser(staffId: 'st1', staffHistoryId: 'sh1') : null,
);

void main() {
  test('承認パターンの一覧: 言語コード ja の名称と、スタンプの様式(JSON のオブジェクト・JSON の文字列。それ以外は標準)で返す', () async {
    final link = _FakeLink();
    final list = await _source(link).list();
    expect(list.map((p) => p.id), ['p1', 'p2', 'p3', 'p4', 'p5']);
    expect(list[0].name, '標準(承認不要)');
    expect(list[0].stampStyle, isNull);
    expect(list[1].name, '');
    expect(list[1].stampStyle, {
      'position': {'anchor': 'bottomLeft'},
    });
    expect(list[2].stampStyle, {'opacity': 0.3}); // JSON の文字列も読める
    expect(list[3].stampStyle, isNull); // 壊れた様式は標準
    expect(list[4].stampStyle, isNull); // オブジェクトでない様式は標準
    expect(link.requests.firstWhere((r) => _op(r) == 'ApprovalPatternStylePageRead').variables['languageCodeId'], 'L');
  });

  test('様式の保存: JSON の文字列で渡す(PostGraphile v4)。更新者つき', () async {
    final link = _FakeLink();
    await _source(link, audit: true).saveStampStyle('p1', {
      'layer': 'foreground',
    });
    final v = link.requests.singleWhere((r) => _op(r) == 'ApprovalPatternStylePageEdit').variables;
    expect(v['mstrApprovalPatternId'], 'p1');
    expect(jsonDecode(v['stampStyle'] as String), {'layer': 'foreground'});
    expect(v['updateUserId'], 'st1');
    expect(v['updateUserHistoryId'], 'sh1');
  });

  test('様式を標準に戻す(null): キーを残したまま null を送る(省略すると変わらないため)', () async {
    final link = _FakeLink();
    await _source(link).saveStampStyle('p1', null);
    final v = link.requests.singleWhere((r) => _op(r) == 'ApprovalPatternStylePageEdit').variables;
    expect(v.containsKey('stampStyle'), isTrue);
    expect(v['stampStyle'], isNull);
    expect(v.containsKey('updateUserId'), isFalse); // 更新者が無ければ送らない
  });

  serverTest('検証用サーバー(読み取りだけ): 承認パターンの一覧を、名称・様式つきで取得できる', (server) async {
    final list = await GraphqlApprovalPatternSource(server.provider.client).list();
    // 標準の承認パターン(07_dummy.sql の 7。段が 0 件)があれば名称が付く。無い DB でも、取得できる(空)ことを確かめる
    for (final p in list) {
      expect(p.id, isNotEmpty);
    }
  });

  serverTest('変更する: 様式を保存して読み直し、標準(NULL)に戻して元の状態にする(管理者の資格情報)', (server) async {
    final source = GraphqlApprovalPatternSource(server.provider.client);
    final patterns = await source.list();
    if (patterns.isEmpty) {
      markTestSkipped('承認パターンが無いため、書き込みのテストを中止した');
      return;
    }
    final target = patterns.first;
    final original = target.stampStyle;
    try {
      await source.saveStampStyle(target.id, {
        'position': {'anchor': 'bottomLeft'},
        'layer': 'foreground',
      });
      final after = (await source.list()).firstWhere((p) => p.id == target.id);
      expect(after.stampStyle, {
        'position': {'anchor': 'bottomLeft'},
        'layer': 'foreground',
      });
      await source.saveStampStyle(target.id, null);
      expect((await source.list()).firstWhere((p) => p.id == target.id).stampStyle, isNull);
    } finally {
      await source.saveStampStyle(target.id, original); // 元の値に戻す
    }
  });
}
