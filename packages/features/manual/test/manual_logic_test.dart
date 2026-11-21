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
