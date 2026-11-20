import 'package:flutter/widgets.dart' show TextEditingValue, TextSelection;
import 'package:flutter_test/flutter_test.dart';
import 'package:manual/manual.dart';

ManualPageRecord _page(
  String id,
  String? parent,
  int order,
  String title,
  String md,
) => ManualPageRecord(
  id: id,
  parentId: parent,
  order: order,
  title: title,
  md: md,
  rev: 1,
  updatedBy: '鈴木',
  updatedAt: DateTime(2026, 11, 20),
);

void main() {
  group('ManualMarkdown', () {
    test('ブロック: 見出し・段落・箇条書き・番号付き・引用・コード・表・区切り線', () {
      final blocks = ManualMarkdown.parse(
        '## 見出し\n\n本文1\n本文2\n\n- a\n- b\n\n1. x\n2. y\n\n> 引用\n\n```\ncode\n\nmore\n```\n\n| A | B |\n| --- | --- |\n| 1 | 2 |\n\n---\n',
      );
      expect(blocks[0], isA<MdHeading>().having((h) => h.level, 'level', 2));
      expect(blocks[1], isA<MdParagraph>().having((p) => p.text, 'text', '本文1\n本文2'));
      expect(blocks[2], isA<MdList>().having((l) => l.ordered, 'ordered', false));
      expect(blocks[3], isA<MdList>().having((l) => l.ordered, 'ordered', true));
      expect(blocks[4], isA<MdQuote>());
      expect(blocks[5], isA<MdCode>().having((c) => c.text, 'text', 'code\n\nmore'));
      expect(
        blocks[6],
        isA<MdTable>()
            .having((t) => t.header, 'header', ['A', 'B'])
            .having((t) => t.rows, 'rows', [
              ['1', '2'],
            ]),
      );
      expect(blocks[7], isA<MdRule>());
      expect(blocks, hasLength(8));
    });

    test('インライン: 太字・斜体・コード・ページへのリンク・外部リンク', () {
      final n = ManualMarkdown.inlines(
        'a **b** *c* `d` [[ページ]] [[ページ|表示]] [e](https://example.com/x)',
      );
      expect(n.whereType<MdBold>(), hasLength(1));
      expect(n.whereType<MdItalic>(), hasLength(1));
      expect(n.whereType<MdInlineCode>().single.text, 'd');
      final links = n.whereType<MdWikiLink>().toList();
      expect(links.map((l) => '${l.target}/${l.label}'), ['ページ/ページ', 'ページ/表示']);
      expect(n.whereType<MdExternalLink>().single.url, 'https://example.com/x');
    });

    test('HTML は解釈しない(文字のまま)', () {
      final n = ManualMarkdown.inlines('<script>x</script>');
      expect(n.single, isA<MdText>());
    });

    test('wikiLinks は重複を除いて出現順、renameLink は表示文字を残す', () {
      const md = '[[A]] [[B|b]] [[A|a]]';
      expect(ManualMarkdown.wikiLinks(md), ['A', 'B']);
      expect(ManualMarkdown.renameLink(md, 'A', 'Z'), '[[Z]] [[B|b]] [[Z|a]]');
    });
  });

  group('ManualWiki', () {
    final wiki = ManualWiki([
      _page('r1', null, 1, '品質', '[[工程]] と [[未作成]]'),
      _page('r2', null, 2, '安全', '本文'),
      _page('c1', 'r1', 1, '工程', '## a\n\n## b\n\n### c\n\n[[品質]]'),
      _page('c2', 'r1', 2, '検査', '内容'),
      _page('g1', 'c1', 1, '開始', '[[工程]]'),
    ]);

    test('ルートは複数。子は order 順', () {
      expect(wiki.roots.map((p) => p.id), ['r1', 'r2']);
      expect(wiki.childrenOf('r1').map((p) => p.id), ['c1', 'c2']);
    });

    test('番号はルートごとに 1 から', () {
      expect(wiki.numbering, {
        'r1': '1',
        'c1': '1.1',
        'g1': '1.1.1',
        'c2': '1.2',
        'r2': '2',
      });
    });

    test('祖先・部分木・被リンク', () {
      expect(wiki.ancestorsOf('g1').map((p) => p.id), ['r1', 'c1']);
      expect(wiki.subtreeOf('r1').map((p) => p.id), ['r1', 'c1', 'g1', 'c2']);
      expect(wiki.backlinksOf('c1').map((p) => p.id), ['r1', 'g1']);
    });

    test('検索はページ名・本文(空は全件)', () {
      expect(wiki.search('検査').map((p) => p.id), ['c2']);
      expect(wiki.search('未作成').map((p) => p.id), ['r1']);
      expect(wiki.search(''), hasLength(5));
    });

    test('見出しは H2・H3 だけ(通し番号は全見出し)', () {
      final h = ManualWiki.headingsOf('# t\n\n## a\n\n### b\n\n#### c\n\n## d');
      expect(h.map((e) => '${e.level}:${e.text}:${e.index}'), ['2:a:1', '3:b:2', '2:d:4']);
    });

    test('ページ名の重複・空', () {
      expect(wiki.isTitleFree('新規'), isTrue);
      expect(wiki.isTitleFree('工程'), isFalse);
      expect(wiki.isTitleFree('工程', exceptId: 'c1'), isTrue);
      expect(wiki.isTitleFree('  '), isFalse);
    });

    test('1 ページの書き出し: H1 とリンクは文字だけ', () {
      final out = wiki.exportPage('r1');
      expect(out, startsWith('# 品質\n'));
      expect(out, contains('工程 と 未作成'));
      expect(out, isNot(contains('[[')));
    });

    test('文書全体の書き出し: 階層を合わせ、範囲内のリンクは文書内リンクに', () {
      final out = wiki.exportAll();
      expect(out, contains('# 品質'));
      expect(out, contains('## 工程'));
      expect(out, contains('### 開始'));
      expect(out, contains('# 安全'));
      // 工程の本文の H2 は、工程(H2)の下の H3 になる
      expect(out, contains('### a'));
      expect(out, contains('[工程](#c1)'));
      expect(out, contains('<a id="c1"></a>'));
      // 範囲内に無いページ(未作成)は文字だけ
      expect(out, contains('と 未作成'));
      expect(out, isNot(contains('[[')));
    });
  });

  group('ManualMdEdit', () {
    TextEditingValue v(String t, int a, int b) =>
        TextEditingValue(text: t, selection: TextSelection(baseOffset: a, extentOffset: b));

    test('wrap: 選択を囲む / 選択なしはひな形', () {
      final a = ManualMdEdit.wrap(v('abc', 1, 2), '**', '**');
      expect(a.text, 'a**b**c');
      final b = ManualMdEdit.wrap(v('', 0, 0), '**', '**', placeholder: '太字');
      expect(b.text, '**太字**');
      expect(b.selection.textInside(b.text), '太字');
    });

    test('prefixLines: 行頭の記号・番号付き', () {
      expect(ManualMdEdit.prefixLines(v('a\nb', 0, 3), '- ').text, '- a\n- b');
      expect(ManualMdEdit.prefixLines(v('a\nb', 0, 3), '', numbered: true).text, '1. a\n2. b');
      expect(ManualMdEdit.prefixLines(v('x\ny', 3, 3), '## ').text, 'x\n## y');
    });

    test('insertBlock は前後を空行で区切る', () {
      expect(ManualMdEdit.insertBlock(v('abc', 3, 3), '---').text, 'abc\n\n---\n');
    });

    test('insertPageLink: 選択した文字は表示文字になる', () {
      expect(ManualMdEdit.insertPageLink(v('x 表示 y', 2, 4), '工程').text, 'x [[工程|表示]] y');
      expect(ManualMdEdit.insertPageLink(v('', 0, 0), '工程').text, '[[工程]]');
    });

    test('chunks / join は、コードの中の空行で分けず、空行 1 つに整える', () {
      final c = ManualMdEdit.chunks('a\n\n\n\n```\nx\n\ny\n```\n\n- 1\n- 2');
      expect(c, ['a', '```\nx\n\ny\n```', '- 1\n- 2']);
      expect(ManualMdEdit.join(c), 'a\n\n```\nx\n\ny\n```\n\n- 1\n- 2');
    });
  });

  group('InMemoryManualRepository', () {
    late InMemoryManualRepository repo;
    var tick = 0;
    setUp(() {
      tick = 0;
      repo = InMemoryManualRepository(
        initial: [_page('a', null, 1, 'A', 'x'), _page('b', 'a', 1, 'B', '[[A]]')],
        clock: () => DateTime(2026, 11, 20, 0, 0, tick++),
      );
    });

    Future<ManualException> failure(Future<Object?> f) async {
      try {
        await f;
      } on ManualException catch (e) {
        return e;
      }
      fail('例外が出ませんでした');
    }

    test('管理者でなければ作成・更新・復元できない', () async {
      expect(
        (await failure(repo.create(parentId: null, title: 'N', md: '', updatedBy: 'u', isAdmin: false))).error,
        ManualError.notAdmin,
      );
      expect(
        (await failure(repo.update('a', title: 'A', md: 'y', updatedBy: 'u', isAdmin: false))).error,
        ManualError.notAdmin,
      );
    });

    test('ルートを複数作れる。名前は必須・重複不可', () async {
      final r = await repo.create(parentId: null, title: '新ルート', md: '', updatedBy: 'u', isAdmin: true);
      expect(r.isRoot, isTrue);
      expect((await repo.list()).where((p) => p.isRoot), hasLength(2));
      expect(
        (await failure(repo.create(parentId: null, title: ' ', md: '', updatedBy: 'u', isAdmin: true))).error,
        ManualError.titleRequired,
      );
      expect(
        (await failure(repo.create(parentId: 'a', title: 'B', md: '', updatedBy: 'u', isAdmin: true))).error,
        ManualError.titleDuplicate,
      );
    });

    test('保存: 変更があれば改訂を上げ、直前の版を履歴へ。変更なしは何もしない', () async {
      final same = await repo.update('a', title: 'A', md: 'x', updatedBy: 'u', isAdmin: true);
      expect(same.rev, 1);
      final saved = await repo.update('a', title: 'A', md: 'y', updatedBy: 'u2', isAdmin: true);
      expect(saved.rev, 2);
      expect(saved.updatedBy, 'u2');
      expect(saved.history.single.md, 'x');
    });

    test('履歴は最新 10 件まで', () async {
      for (var i = 0; i < 12; i++) {
        await repo.update('a', title: 'A', md: 'v$i', updatedBy: 'u', isAdmin: true);
      }
      final a = (await repo.list()).firstWhere((p) => p.id == 'a');
      expect(a.rev, 13);
      expect(a.history, hasLength(ManualPageRecord.maxHistory));
      expect(a.history.first.rev, 12);
    });

    test('ページ名を変えると、ほかのページのリンクが追従する(改訂は上げない)', () async {
      await repo.update('a', title: 'AA', md: 'x', updatedBy: 'u', isAdmin: true);
      final b = (await repo.list()).firstWhere((p) => p.id == 'b');
      expect(b.md, '[[AA]]');
      expect(b.rev, 1);
    });

    test('復元: 戻す前の版も履歴に残る', () async {
      await repo.update('a', title: 'A', md: 'y', updatedBy: 'u', isAdmin: true);
      final restored = await repo.restore('a', 1, updatedBy: 'u', isAdmin: true);
      expect(restored.md, 'x');
      expect(restored.rev, 3);
      expect(restored.history.map((h) => h.md), ['y', 'x']);
      expect(
        (await failure(repo.restore('a', 99, updatedBy: 'u', isAdmin: true))).error,
        ManualError.notFound,
      );
    });
  });
}
