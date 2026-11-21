import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:manual/manual.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

/// 仮のサーバー(通路)。操作の名前で応答し、登録は状態に反映する(サーバーには接続しない)。
class _FakeServer extends Link {
  final List<Request> requests = [];
  int _seq = 0;

  final docs = <Map<String, dynamic>>[];
  final contents = <Map<String, dynamic>>[];
  final texts = <String, Map<String, dynamic>>{}; // 共有テキストの ID → 値
  final history = <Map<String, dynamic>>[];
  final tiers = <Map<String, dynamic>>[
    {'mstrDocumentTierId': 'tier-2', 'tierNumber': 2},
    {'mstrDocumentTierId': 'tier-1', 'tierNumber': 1},
  ];

  _FakeServer() {
    docs.addAll([
      _doc('d1', 'QM', titles: 'ta1', code: 'a'),
      _doc('d2', '子の文書', titles: 'ta2', code: 'b', parent: 'd1'),
    ]);
    contents.addAll([
      _content('c1', 'd1', 'P1', parent: null, text: 't1', seq: 1, code: 'x1'),
      _content('c2', 'd1', 'P2', parent: 'c1', text: 't2', seq: 1, code: 'x2'),
    ]);
    texts['t1'] = _text('t1', 'body1 [[P2]]', 3);
    texts['t2'] = _text('t2', 'see [[P1]]', 1);
    history.addAll([
      for (final r in [1, 2, 3]) {..._text('t1', 'v$r', r), 'historyId': 'h$r'},
    ]);
  }

  static Map<String, dynamic> _label(String name) => {
    'sharedDictionaryBySharedDictionaryNameId': {
      'value': {
        'nodes': [
          {'dictionaryValue': name},
        ],
      },
    },
  };

  static Map<String, dynamic> _user(String name) => {'name': _label(name)};

  static Map<String, dynamic> _doc(String id, String title, {required String titles, required String code, String? parent}) => {
    'mstrDocumentId': id,
    'parent': {
      'nodes': [
        if (parent != null) {'parentMstrDocumentId': parent} else {'parentMstrDocumentId': null},
      ],
    },
    'code': code,
    'titles': titles,
    'labels': _label(title),
    'controlNumber': 'QM-001',
    'revision': 2,
    'updateAt': '2026-11-20T10:00:00',
    'update_user': _user('管理者'),
  };

  static Map<String, dynamic> _content(
    String id,
    String doc,
    String title, {
    required String? parent,
    required String text,
    required int seq,
    required String code,
  }) => {
    'mstrDocumentContentId': id,
    'mstrDocumentId': doc,
    'parent': <String, dynamic>{
      'nodes': <dynamic>[
        {'parentMstrDocumentContentId': parent},
      ],
    },
    'code': code,
    'titles': 'ta-$id',
    'labels': _label(title),
    'contents': text,
    'sequence': seq,
    'revision': 1,
    'updateAt': '2026-11-20T09:00:00',
    'update_user': _user('作成者'),
  };

  static Map<String, dynamic> _text(String id, String value, int rev) => {
    'sharedTextValueId': 'v-$id',
    'sharedTextId': id,
    'sharedLanguageCodeId': 'L',
    'textValue': value,
    'revision': rev,
    'updateAt': '2026-11-21T08:00:00',
    'update_user': _user('編集者'),
  };

  String _id(String p) => '$p${++_seq}';

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final op = request.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;
    final v = request.variables;
    Map<String, dynamic> data;
    switch (op) {
      case 'ManualLanguagePageRead':
        data = {
          'allSharedLanguageCodes': {
            'nodes': [
              {'sharedLanguageCodeId': 'L', 'code': 'JA'},
            ],
          },
        };
      case 'ManualDocumentPageRead':
        data = {
          'allMstrDocuments': {'nodes': docs},
        };
      case 'ManualContentPageRead':
        data = {
          'allMstrDocumentContents': {'nodes': contents},
        };
      case 'ManualTextValuePageRead':
        final ids = ((v['filter'] as Map)['sharedTextId'] as Map)['in'] as List;
        data = {
          'allSharedTextValues': {
            'nodes': [
              for (final i in ids)
                if (texts.containsKey(i)) texts[i],
            ],
          },
        };
      case 'ManualTextHistoryPageRead':
        data = {
          'allHistorySharedTextValues': {'nodes': history},
        };
      case 'ManualTierPageRead':
        data = {
          'allMstrDocumentTiers': {'nodes': tiers},
        };
      case 'ManualAppellationSavePageCall':
        final id = (v['pAppellationId'] as String?) ?? _id('ap');
        data = {
          'sharedAppellationSave': {
            'sharedAppellation': {'sharedAppellationsId': id},
          },
        };
      case 'ManualTextSavePageCall':
        final id = (v['pTextId'] as String?) ?? _id('tx');
        final value = (jsonDecode(v['pValues'] as String) as Map)['ja'] as String;
        final old = texts[id];
        texts[id] = _text(id, value, ((old?['revision'] as int?) ?? 0) + 1);
        data = {
          'sharedTextSave': {
            'sharedText': {'sharedTextId': id},
          },
        };
      case 'ManualDocumentPageCreate':
        final id = _id('doc');
        docs.add(_doc(id, 'new', titles: v['titles'] as String, code: v['code'] as String));
        data = {
          'createMstrDocument': {
            'mstrDocument': {'mstrDocumentId': id},
          },
        };
      case 'ManualDocumentTreePageCreate':
        data = {
          'createMstrDocumentTree': {
            'mstrDocumentTree': {'mstrDocumentTreeId': _id('dt')},
          },
        };
      case 'ManualContentPageCreate':
        final id = _id('cnt');
        contents.add(
          _content(id, v['mstrDocumentId'] as String, 'new', parent: null, text: v['contents'] as String, seq: v['sequence'] as int, code: v['code'] as String),
        );
        data = {
          'createMstrDocumentContent': {
            'mstrDocumentContent': {'mstrDocumentContentId': id},
          },
        };
      case 'ManualContentTreePageCreate':
        final c = contents.last;
        (c['parent'] as Map)['nodes'] = [
          {'parentMstrDocumentContentId': v['parentMstrDocumentContentId']},
        ];
        data = {
          'createMstrDocumentContentTree': {
            'mstrDocumentContentTree': {'mstrDocumentContentTreeId': _id('ct')},
          },
        };
      default:
        throw StateError('想定外の操作: $op');
    }
    return Stream.value(Response(data: {'__typename': 'Query', ...data}, response: const {}));
  }

  List<Request> calls(String op) =>
      requests.where((r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value == op).toList();
}

GraphqlManualRepository _repo(_FakeServer s, {bool audit = false}) => GraphqlManualRepository(
  ManualGraphqlClient(
    GraphQLClient(link: s, cache: GraphQLCache()),
    auditUser: audit ? () async => const AuditUser(staffId: 'st1', staffHistoryId: 'sh1') : null,
  ),
);

void main() {
  test('一覧: ルートの文書(親が NULL のもの)と、文書コンテンツのツリー。親のある文書は出ない', () async {
    final pages = await _repo(_FakeServer()).list();
    expect(pages.map((p) => p.id), ['d1', 'c1', 'c2']);
    final root = pages[0];
    expect(root.isRoot, isTrue);
    expect(root.title, 'QM');
    expect(root.md, '');
    final p1 = pages[1];
    expect(p1.parentId, 'd1'); // ルート直下
    expect(p1.title, 'P1');
    expect(p1.md, 'body1 [[P2]]');
    expect(p1.rev, 3); // 改訂 = 本文の版(DB の履歴の版)
    expect(p1.updatedBy, '編集者');
    expect(p1.history.map((h) => h.rev), [2, 1]); // 現在の版より前の版。新しい順
    expect(p1.history.first.md, 'v2');
    expect(pages[2].parentId, 'c1');
  });

  test('ルートは本文を持たず、管理番号が要る', () {
    final r = _repo(_FakeServer());
    expect(r.rootHasBody, isFalse);
    expect(r.requiresControlNumber, isTrue);
  });

  test('管理者でなければ書けない', () async {
    final r = _repo(_FakeServer());
    expect(
      r.update('c1', title: 'P1', md: 'x', updatedBy: '', isAdmin: false),
      throwsA(isA<ManualException>().having((e) => e.error, 'error', ManualError.notAdmin)),
    );
  });

  test('ルートの作成: 管理番号は利用者が決める(空は断る)。文書階層は階層番号が最小のもの。呼称 → 文書 → ツリーの順', () async {
    final s = _FakeServer();
    final r = _repo(s, audit: true);
    expect(
      r.create(parentId: null, title: '新しい文書', md: '', updatedBy: '', isAdmin: true, controlNumber: ' '),
      throwsA(isA<ManualException>().having((e) => e.error, 'error', ManualError.controlNumberRequired)),
    );
    final page = await r.create(parentId: null, title: '新しい文書', md: '', updatedBy: '', isAdmin: true, controlNumber: 'QM-002');
    expect(page.isRoot, isTrue);
    expect(page.title, 'new'); // 仮のサーバーが返す名称
    final doc = s.calls('ManualDocumentPageCreate').single.variables;
    expect(doc['controlNumber'], 'QM-002');
    expect(doc['mstrDocumentTierId'], 'tier-1');
    expect(doc['updateUserId'], 'st1');
    expect(doc['updateUserHistoryId'], 'sh1');
    expect(doc['code'], isNotEmpty);
    expect(s.calls('ManualDocumentTreePageCreate'), hasLength(1));
    final order = s.requests
        .map((q) => q.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value)
        .where((n) => n!.contains('Save') || n.contains('Create'))
        .toList();
    // 1 回目は管理番号が空で断られ、呼称の登録のあとに止まっている
    expect(order.sublist(order.length - 3), ['ManualAppellationSavePageCall', 'ManualDocumentPageCreate', 'ManualDocumentTreePageCreate']);
  });

  test('子のページの作成: 本文 → 文書コンテンツ(属する文書・並び)→ ツリー(親のページ)', () async {
    final s = _FakeServer();
    final page = await _repo(s).create(parentId: 'c1', title: '孫', md: '# 本文', updatedBy: '', isAdmin: true);
    expect(page.parentId, 'c1');
    final c = s.calls('ManualContentPageCreate').single.variables;
    expect(c['mstrDocumentId'], 'd1'); // 親をたどったルートの文書
    expect(c['sequence'], 2); // 兄弟(c2)の次
    final tree = s.calls('ManualContentTreePageCreate').single.variables;
    expect(tree['parentMstrDocumentContentId'], 'c1');
    final text = s.calls('ManualTextSavePageCall').single.variables;
    expect(text.containsKey('pTextId'), isFalse); // 新しい文章
    expect(jsonDecode(text['pValues'] as String), {'ja': '# 本文'});
  });

  test('ルート直下の子のページ: 親のページはルートの文書で、ツリーの親は付けない', () async {
    final s = _FakeServer();
    await _repo(s).create(parentId: 'd1', title: '章', md: '', updatedBy: '', isAdmin: true);
    expect(s.calls('ManualContentPageCreate').single.variables['mstrDocumentId'], 'd1');
    expect(s.calls('ManualContentTreePageCreate').single.variables.containsKey('parentMstrDocumentContentId'), isFalse);
  });

  test('同じ名前・空の名前は作れない', () async {
    final r = _repo(_FakeServer());
    expect(
      r.create(parentId: 'd1', title: 'P1', md: '', updatedBy: '', isAdmin: true),
      throwsA(isA<ManualException>().having((e) => e.error, 'error', ManualError.titleDuplicate)),
    );
    expect(
      r.create(parentId: 'd1', title: '  ', md: '', updatedBy: '', isAdmin: true),
      throwsA(isA<ManualException>().having((e) => e.error, 'error', ManualError.titleRequired)),
    );
  });

  test('本文の保存: 言語 ja の値だけを、そのページの共有テキストに入れ替える(JSON の文字列)', () async {
    final s = _FakeServer();
    final saved = await _repo(s).update('c1', title: 'P1', md: '新しい本文', updatedBy: '', isAdmin: true);
    final call = s.calls('ManualTextSavePageCall').single.variables;
    expect(call['pTextId'], 't1');
    expect(jsonDecode(call['pValues'] as String), {'ja': '新しい本文'});
    expect(s.calls('ManualAppellationSavePageCall'), isEmpty); // ページ名は変えていない
    expect(saved.md, '新しい本文');
    expect(saved.rev, 4);
  });

  test('変更が無いときは何も書かない', () async {
    final s = _FakeServer();
    await _repo(s).update('c1', title: 'P1', md: 'body1 [[P2]]', updatedBy: '', isAdmin: true);
    expect(s.requests.where((r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name!.value.contains('Save')), isEmpty);
  });

  test('ページ名の変更: 呼称を入れ替え、ほかのページのリンクも追従させる', () async {
    final s = _FakeServer();
    await _repo(s).update('c1', title: 'P1x', md: 'body1 [[P2]]', updatedBy: '', isAdmin: true);
    final name = s.calls('ManualAppellationSavePageCall').single.variables;
    expect(name['pAppellationId'], 'ta-c1');
    expect(jsonDecode(name['pName'] as String), {'ja': 'P1x'});
    // c2 の本文「see [[P1]]」が追従する
    final link = s.calls('ManualTextSavePageCall').single.variables;
    expect(link['pTextId'], 't2');
    expect(jsonDecode(link['pValues'] as String), {'ja': 'see [[P1x]]'});
  });

  test('ルートの文書は、ページ名だけを変える(本文は書かない)', () async {
    final s = _FakeServer();
    await _repo(s).update('d1', title: 'QM2', md: '無視される', updatedBy: '', isAdmin: true);
    expect(s.calls('ManualTextSavePageCall'), isEmpty);
    final name = s.calls('ManualAppellationSavePageCall').single.variables;
    expect(name['pAppellationId'], 'ta1');
  });

  test('履歴の復元: その版の本文を、新しい版として保存する', () async {
    final s = _FakeServer();
    final saved = await _repo(s).restore('c1', 2, updatedBy: '', isAdmin: true);
    expect(jsonDecode(s.calls('ManualTextSavePageCall').single.variables['pValues'] as String), {'ja': 'v2'});
    expect(saved.md, 'v2');
    expect(
      _repo(s).restore('c1', 99, updatedBy: '', isAdmin: true),
      throwsA(isA<ManualException>().having((e) => e.error, 'error', ManualError.notFound)),
    );
  });
}
