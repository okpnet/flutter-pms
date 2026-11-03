// アクセスパスの登録(AccessControlClient.createAccessPath ほか)のテスト。
//
// 代役の通信路で、呼称(辞書・言語別の値・呼称)→ アクセスパスの順序と値、登録済み・公開ページの扱い、
// 実際の access_paths.csv の読み込みを確かめる。登録は検証用サーバーのデータを変えるため、サーバーでは行わない。
import 'dart:async';
import 'dart:io';

import 'package:access_control_model/access_control_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';

/// 操作名ごとの応答を返し、呼び出しを記録する通信路。
class _FakeLink extends Link {
  _FakeLink(this.responses);
  final Map<String, Map<String, dynamic> Function(Map<String, dynamic>)>
  responses;
  final calls = <(String, Map<String, dynamic>)>[];
  var _n = 0;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    final name =
        request.operation.document.definitions
            .whereType<OperationDefinitionNode>()
            .first
            .name
            ?.value ??
        '';
    final vars = Map<String, dynamic>.from(request.variables);
    calls.add((name, vars));
    final make = responses[name];
    if (make == null) throw StateError('想定外の操作: $name');
    return Stream.value(Response(data: make(vars), response: const {}));
  }

  String nextId(String prefix) => '$prefix-${++_n}';
}

_FakeLink _link({List<Map<String, dynamic>> existing = const []}) {
  late final _FakeLink link;
  link = _FakeLink({
    'AppPageRead': (_) => {
      'allInfoApps': {
        'nodes': [
          {'infoAppId': 'app-1'},
        ],
      },
    },
    'LanguageCodePageRead': (_) => {
      'allSharedLanguageCodes': {
        'nodes': [
          {'sharedLanguageCodeId': 'lang-ja', 'code': 'ja'},
          {'sharedLanguageCodeId': 'lang-en', 'code': 'en'},
        ],
      },
    },
    'AccessPathPageRead': (v) {
      final path = (v['filter'] as Map)['usecasePath']['equalTo'];
      return {
        'allInfoAccessPaths': {
          'nodes': [
            for (final e in existing)
              if (e['usecasePath'] == path) e,
          ],
        },
      };
    },
    'DictionaryPageCreate': (_) => {
      'createSharedDictionary': {
        'sharedDictionary': {'sharedDictionaryId': link.nextId('dict')},
      },
    },
    'DictionaryValuePageCreate': (_) => {
      'createSharedDictionaryValue': {
        'sharedDictionaryValue': {
          'sharedDictionaryValueId': link.nextId('val'),
        },
      },
    },
    'AppellationPageCreate': (_) => {
      'createSharedAppellation': {
        'sharedAppellation': {'sharedAppellationsId': 'appellation-1'},
      },
    },
    'AccessPathPageCreate': (_) => {
      'createInfoAccessPath': {
        'infoAccessPath': {'infoAccessPathId': link.nextId('path')},
      },
    },
  });
  return link;
}

AccessControlClient _clientOn(Link link) => AccessControlClient(
  client: GraphQLClient(link: link, cache: GraphQLCache()),
);

void main() {
  test('アクセスパスの登録は、辞書 → 言語別の値 → 呼称 → アクセスパスの順に登録する', () async {
    final link = _link();
    final id = await _clientOn(
      link,
    ).createAccessPath(usecasePath: '/e/unit', nameJa: '単位', nameEn: 'Unit');
    expect(id, startsWith('path-'));

    final names = link.calls.map((c) => c.$1).toList();
    expect(names.where((n) => n.endsWith('Create')).toList(), [
      'DictionaryPageCreate',
      'DictionaryValuePageCreate',
      'DictionaryValuePageCreate', // 名前
      'DictionaryPageCreate',
      'DictionaryValuePageCreate',
      'DictionaryValuePageCreate', // 読み
      'DictionaryPageCreate',
      'DictionaryValuePageCreate',
      'DictionaryValuePageCreate', // 略称
      'AppellationPageCreate',
      'AccessPathPageCreate',
    ]);

    final values = link.calls
        .where((c) => c.$1 == 'DictionaryValuePageCreate')
        .map((c) => c.$2)
        .toList();
    expect(values[0], {
      'sharedLanguageCodeId': 'lang-ja',
      'sharedDictionaryId': 'dict-1',
      'dictionaryValue': '単位',
    });
    expect(values[1]['sharedLanguageCodeId'], 'lang-en');
    expect(values[1]['dictionaryValue'], 'Unit');
    expect(values[2]['dictionaryValue'], ''); // 読みは空で作る

    final appellation = link.calls
        .firstWhere((c) => c.$1 == 'AppellationPageCreate')
        .$2;
    expect(appellation['sharedDictionaryNameId'], 'dict-1');
    expect(appellation['sharedDictionaryPronunciationId'], isNot('dict-1'));

    final path = link.calls.last.$2;
    expect(path['infoAppId'], 'app-1'); // 固定のアプリを埋め込む
    expect(path['names'], 'appellation-1');
    expect(path['usecasePath'], '/e/unit');
    expect(path.containsKey('symbol'), isFalse); // symbol は DB のトリガーが付ける(送らない)
  });

  test('registerMissingAccessPaths は、公開ページと登録済みを飛ばし、重複させない', () async {
    final link = _link(
      existing: [
        {'infoAccessPathId': 'path-old', 'usecasePath': '/e/unit'},
      ],
    );
    final created = await _clientOn(link).registerMissingAccessPaths(const [
      AccessPathSeed(
        usecasePath: '/login',
        nameJa: 'ログイン',
        nameEn: 'Log in',
        isPublic: true,
      ),
      AccessPathSeed(usecasePath: '/e/unit', nameJa: '単位', nameEn: 'Unit'),
      AccessPathSeed(usecasePath: '/e/item', nameJa: '品目', nameEn: 'Item'),
    ]);
    expect(created, ['/e/item']);
    expect(
      link.calls.where((c) => c.$1 == 'AccessPathPageCreate'),
      hasLength(1),
    );
    expect(
      link.calls.any(
        (c) =>
            c.$1 == 'AccessPathPageRead' &&
            (c.$2['filter'] as Map)['usecasePath']['equalTo'] == '/login',
      ),
      isFalse,
    );
  });

  test('言語コード(ja・en)が無いときは例外', () async {
    final link = _FakeLink({
      'AppPageRead': (_) => {
        'allInfoApps': {
          'nodes': [
            {'infoAppId': 'app-1'},
          ],
        },
      },
      'LanguageCodePageRead': (_) => {
        'allSharedLanguageCodes': {
          'nodes': [
            {'sharedLanguageCodeId': 'lang-ja', 'code': 'ja'},
          ],
        },
      },
    });
    expect(
      _clientOn(
        link,
      ).createAccessPath(usecasePath: '/x', nameJa: 'あ', nameEn: 'a'),
      throwsA(isA<AccessControlClientException>()),
    );
  });

  group('access_paths.csv', () {
    test('引用符と改行・BOM を読める', () {
      final seeds = AccessPathSeed.parseCsv(
        '﻿usecase_path,name_ja,name_en,feature,public\r\n'
        '/e/a,"あ,い","He said ""hi""",f,false\r\n'
        '/login,ログイン,Log in,f,true\r\n',
      );
      expect(seeds, hasLength(2));
      expect(seeds[0].nameJa, 'あ,い');
      expect(seeds[0].nameEn, 'He said "hi"');
      expect(seeds[0].isPublic, isFalse);

      expect(seeds[1].isPublic, isTrue);
    });

    test('pms_app の access_paths.csv を読め、パス・名前(ja・en)がそろっている', () {
      final file = File('../../../apps/pms_app/doc/contents/access_paths.csv');
      if (!file.existsSync()) return markTestSkipped('access_paths.csv が無い');
      final seeds = AccessPathSeed.parseCsv(file.readAsStringSync());
      expect(seeds, isNotEmpty);
      final paths = <String>{};
      for (final s in seeds) {
        expect(s.usecasePath, startsWith('/'), reason: s.usecasePath);
        expect(s.nameJa, isNotEmpty, reason: s.usecasePath);
        expect(s.nameEn, isNotEmpty, reason: s.usecasePath);
        expect(
          paths.add(s.usecasePath),
          isTrue,
          reason: '重複: ${s.usecasePath}',
        );
      }
    });
  });
}
