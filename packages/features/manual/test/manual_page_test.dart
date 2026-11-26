import 'package:feature_shared/feature_shared.dart' show operationsMenuGroupId;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:manual/manual.dart';
import 'package:manual/manual_api.dart';

Widget _app({
  required bool admin,
  InMemoryManualRepository? repo,
  String initial = '/manual',
}) {
  final r = repo ?? InMemoryManualRepository();
  final router = GoRouter(
    initialLocation: initial,
    routes: const ManualModule().routes,
  );
  return ProviderScope(
    overrides: [
      manualRepositoryProvider.overrideWithValue(r),
      manualCanEditProvider.overrideWithValue(admin),
      manualEditorNameProvider.overrideWithValue('テスト管理者'),
    ],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _pump(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1280, 1000));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('閲覧のみ: 目次・本文・被リンクが出て、編集の操作は出ない', (tester) async {
    await _pump(tester, _app(admin: false, initial: '/manual?id=m1'));
    expect(find.text('品質マニュアル'), findsWidgets); // 見出しと目次
    expect(find.byKey(const Key('manual-readonly')), findsOneWidget);
    expect(find.byKey(const Key('manual-edit')), findsNothing);
    expect(find.byKey(const Key('manual-add-child')), findsNothing);
    expect(find.byKey(const Key('manual-history')), findsNothing);
    expect(find.byKey(const Key('manual-toc-add-root')), findsNothing);
    // 子ページ(このページの下)
    expect(find.byKey(const Key('manual-child-m2')), findsOneWidget);
    // 目次から別のページへ
    await tester.tap(find.byKey(const Key('manual-toc-m4')));
    await tester.pumpAndSettle();
    expect(find.text('生産計画の工程ごとに、作業の開始と終了を実績として登録します。', findRichText: true), findsOneWidget);
    // 被リンク: 工程管理へリンクしているページ
    expect(find.byKey(const Key('manual-backlink-m1')), findsOneWidget);
  });

  testWidgets('検索はページ名・本文で絞り込む', (tester) async {
    await _pump(tester, _app(admin: false, initial: '/manual?id=m1'));
    await tester.enterText(find.byKey(const Key('manual-search')), 'コンテナ');
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-toc-m42')), findsOneWidget);
    expect(find.byKey(const Key('manual-toc-m6')), findsNothing);
    await tester.enterText(find.byKey(const Key('manual-search')), '存在しない語');
    await tester.pumpAndSettle();
    expect(find.text('見つかりません。'), findsOneWidget);
  });

  testWidgets('管理者: Markdown で編集して保存すると、改訂が上がる', (tester) async {
    await _pump(tester, _app(admin: true, initial: '/manual?id=m3'));
    await tester.tap(find.byKey(const Key('manual-edit')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Markdown').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-edit-md')), '新しい本文です。');
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-edit-save')));
    await tester.pumpAndSettle();
    expect(find.text('新しい本文です。', findRichText: true), findsOneWidget);
    final meta = tester.widget<Text>(find.byKey(const Key('manual-meta'))).data!;
    expect(meta, contains('改訂 2'));
    expect(meta, contains('テスト管理者'));
  });

  testWidgets('編集: ページ名が空・重複のときは保存できず、理由を示す', (tester) async {
    await _pump(tester, _app(admin: true, initial: '/manual?id=m3'));
    await tester.tap(find.byKey(const Key('manual-edit')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-edit-title')), '');
    await tester.tap(find.byKey(const Key('manual-edit-save')));
    await tester.pumpAndSettle();
    expect(find.text('ページ名を入力してください。'), findsOneWidget);
    await tester.enterText(find.byKey(const Key('manual-edit-title')), '工程管理');
    await tester.tap(find.byKey(const Key('manual-edit-save')));
    await tester.pumpAndSettle();
    expect(find.text('同じ名前のページがあります。'), findsOneWidget);
  });

  testWidgets('編集: 変更があるまま取り消すと確認する。破棄すると閲覧に戻る', (tester) async {
    await _pump(tester, _app(admin: true, initial: '/manual?id=m3'));
    await tester.tap(find.byKey(const Key('manual-edit')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-edit-title')), '別名');
    await tester.tap(find.byKey(const Key('manual-edit-cancel')));
    await tester.pumpAndSettle();
    expect(find.text('変更を破棄しますか'), findsOneWidget);
    await tester.tap(find.text('編集を続ける'));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-edit-title')), findsOneWidget);
    await tester.tap(find.byKey(const Key('manual-edit-cancel')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('破棄する'));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-edit')), findsOneWidget);
    expect(find.text('品質方針と目標'), findsWidgets);
  });

  testWidgets('ビジュアル: ブロックを選んで直し、保存する', (tester) async {
    final repo = InMemoryManualRepository();
    await _pump(tester, _app(admin: true, repo: repo, initial: '/manual?id=m3'));
    await tester.tap(find.byKey(const Key('manual-edit')));
    await tester.pumpAndSettle();
    // 先頭のブロック(## 品質方針)を編集する
    await tester.tap(find.byKey(const Key('manual-chunk-0')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-chunk-field')), '## 方針');
    await tester.tap(find.byKey(const Key('manual-chunk-done')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-edit-save')));
    await tester.pumpAndSettle();
    final page = (await repo.list()).firstWhere((p) => p.id == 'm3');
    expect(page.rev, 2);
    expect(page.md, startsWith('## 方針\n\n- お客様の要求'));
  });

  testWidgets('ビジュアル: 道具バーの表でブロックが増え、Markdown に切り替えても同じ内容', (tester) async {
    final repo = InMemoryManualRepository();
    await _pump(tester, _app(admin: true, repo: repo, initial: '/manual?id=m3'));
    await tester.tap(find.byKey(const Key('manual-edit')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-tool-table')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-chunk-done')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Markdown').last);
    await tester.pumpAndSettle();
    final field = tester.widget<TextField>(find.byKey(const Key('manual-edit-md')));
    expect(field.controller!.text, endsWith('| 項目 | 内容 |\n| --- | --- |\n|  |  |'));
    expect(field.controller!.text, contains('## 品質方針'));
  });

  testWidgets('リンク: 新しいページ名を入れて作成してリンクする(書きながら文書が育つ)', (tester) async {
    final repo = InMemoryManualRepository();
    await _pump(tester, _app(admin: true, repo: repo, initial: '/manual?id=m3'));
    await tester.tap(find.byKey(const Key('manual-edit')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Markdown').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-edit-md')), '参照: ');
    await tester.tap(find.byKey(const Key('manual-tool-link')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-link-query')), '新しい手順');
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-link-create')));
    await tester.pumpAndSettle();
    final field = tester.widget<TextField>(find.byKey(const Key('manual-edit-md')));
    expect(field.controller!.text, '参照: [[新しい手順]]');
    final created = (await repo.list()).firstWhere((p) => p.title == '新しい手順');
    expect(created.parentId, 'm3');
  });

  testWidgets('リンク: 既存のページを検索して選ぶ', (tester) async {
    await _pump(tester, _app(admin: true, initial: '/manual?id=m3'));
    await tester.tap(find.byKey(const Key('manual-edit')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Markdown').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-edit-md')), '');
    await tester.tap(find.byKey(const Key('manual-tool-link')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-link-query')), '用語');
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-link-hit-m7')));
    await tester.pumpAndSettle();
    final field = tester.widget<TextField>(find.byKey(const Key('manual-edit-md')));
    expect(field.controller!.text, '[[用語集]]');
  });

  testWidgets('管理者: 子ページ・ルートを追加できる(ルートは複数)', (tester) async {
    final repo = InMemoryManualRepository();
    await _pump(tester, _app(admin: true, repo: repo, initial: '/manual?id=m3'));
    await tester.tap(find.byKey(const Key('manual-add-child')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-create-name')), '子ページ');
    await tester.tap(find.byKey(const Key('manual-create-ok')));
    await tester.pumpAndSettle();
    // 作成したら、編集の状態で開く
    expect(find.byKey(const Key('manual-edit-title')), findsOneWidget);
    await tester.tap(find.byKey(const Key('manual-edit-cancel')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-toc-add-root')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-create-name')), '第二のマニュアル');
    await tester.tap(find.byKey(const Key('manual-create-ok')));
    await tester.pumpAndSettle();
    final pages = await repo.list();
    expect(pages.firstWhere((p) => p.title == '子ページ').parentId, 'm3');
    expect(pages.where((p) => p.isRoot).map((p) => p.title), ['品質マニュアル', '第二のマニュアル']);
  });

  testWidgets('未作成のリンクは、管理者だけが押して作成できる', (tester) async {
    final repo = InMemoryManualRepository();
    await _pump(tester, _app(admin: true, repo: repo, initial: '/manual?id=m7'));
    // 「棚卸し」は未作成のページへのリンク。文字を押す
    final rich = find.byWidgetPredicate(
      (w) => w is RichText && w.text.toPlainText().contains('未作成の項目: 棚卸し'),
    );
    expect(rich, findsOneWidget);
    // 末尾の文字を押す
    final box = tester.getRect(rich);
    await tester.tapAt(Offset(box.left + 135, box.center.dy));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-create-name')), findsOneWidget);
    await tester.tap(find.byKey(const Key('manual-create-ok')));
    await tester.pumpAndSettle();
    expect((await repo.list()).any((p) => p.title == '棚卸し' && p.parentId == 'm7'), isTrue);
  });

  testWidgets('履歴: 過去の版に戻せる', (tester) async {
    final repo = InMemoryManualRepository();
    await _pump(tester, _app(admin: true, repo: repo, initial: '/manual?id=m3'));
    await tester.tap(find.byKey(const Key('manual-edit')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Markdown').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('manual-edit-md')), '改訂した本文');
    await tester.tap(find.byKey(const Key('manual-edit-save')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-history')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-history-restore-1')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-history-restore-ok')));
    await tester.pumpAndSettle();
    final page = (await repo.list()).firstWhere((p) => p.id == 'm3');
    expect(page.rev, 3);
    expect(page.md, startsWith('## 品質方針'));
  });

  testWidgets('Markdown の書き出し: このページ / 文書全体', (tester) async {
    await _pump(tester, _app(admin: false, initial: '/manual?id=m3'));
    await tester.tap(find.byKey(const Key('manual-markdown')));
    await tester.pumpAndSettle();
    expect(
      tester.widget<SelectableText>(find.byKey(const Key('manual-export-text'))).data,
      startsWith('# 品質方針と目標\n'),
    );
    await tester.tap(find.text('文書全体'));
    await tester.pumpAndSettle();
    final all = tester.widget<SelectableText>(find.byKey(const Key('manual-export-text'))).data!;
    expect(all, contains('# 品質マニュアル'));
    expect(all, contains('## 品質方針と目標'));
  });

  testWidgets('メニューは「文書」(台帳)の 1 項目', (tester) async {
    final repo = InMemoryManualRepository();
    late WidgetRef captured;
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          manualRepositoryProvider.overrideWithValue(repo),
          manualCanEditProvider.overrideWithValue(true),
        ],
        child: Consumer(
          builder: (context, ref, _) {
            captured = ref;
            ref.watch(manualProvider);
            return const SizedBox();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    List<String> labels() =>
        const ManualModule().menuEntries(captured).map((e) => e.label).toList();
    // メニューは「文書」(台帳)の 1 項目。ルートが増えても項目は増えない(ルートごとの入口は台帳にある)
    expect(labels(), ['文書']);
    await captured.read(manualProvider.notifier).create(parentId: null, title: '安全マニュアル');
    await tester.pumpAndSettle();
    expect(labels(), ['文書']);
    final e = const ManualModule().menuEntries(captured).single;
    expect(e.groupId, operationsMenuGroupId);
    expect(e.destination, isA<ManualDestination>().having((d) => d.pageId, 'pageId', isNull));
  });

  test('遷移先はパスに変換でき、他の遷移先は引き受けない', () {
    const m = ManualModule();
    for (final d in manualDestinationSamples) {
      expect(m.locationOf(d), isNotNull);
    }
    expect(m.locationOf(const ManualDestination()), '/manual');
    expect(m.locationOf(const ManualDestination(pageId: 'm1', edit: true)), '/manual?id=m1&edit=1');
  });
}
