import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:quality/quality.dart';
import 'package:quality/quality_api.dart';
import 'package:quality/src/page/my_audits_page.dart';

final _now = DateTime(2026, 12, 1, 10);

InMemoryAuditRunGateway _gateway() => InMemoryAuditRunGateway(
  assignments: [
    AuditAssignment(id: 'd-plan', auditName: '内部監査', name: '第1製造棟', teamName: 'チームA', scheduledAt: DateTime(2026, 12, 3, 9)),
    AuditAssignment(id: 'd-late', auditName: '内部監査', name: '倉庫', teamName: 'チームA', scheduledAt: DateTime(2026, 11, 20, 9)),
    AuditAssignment(id: 'd-far', auditName: '内部監査', name: '出荷', teamName: 'チームB', scheduledAt: DateTime(2027, 2, 1, 9)),
    AuditAssignment(
      id: 'd-run',
      auditName: '内部監査',
      name: '品質保証部',
      teamName: 'チームA',
      scheduledAt: DateTime(2026, 11, 30, 9),
      performedDate: DateTime(2026, 11, 30),
    ),
    AuditAssignment(id: 'd-done', auditName: '内部監査', name: '設備', scheduledAt: DateTime(2026, 11, 1), performedDate: DateTime(2026, 11, 1), endedAt: DateTime(2026, 11, 1, 17)),
  ],
  items: {
    'd-run': const [
      AuditItem(id: 'i1', detailId: 'd-run', name: '記録の管理', code: 'A1'),
      AuditItem(id: 'i2', detailId: 'd-run', name: '教育訓練', code: 'A2', value: '3', findings: '一部未実施'),
    ],
  },
);

Widget _app(IAuditRunGateway g, String location) {
  final router = GoRouter(
    initialLocation: location,
    routes: [
      GoRoute(path: '/quality/my-audits', builder: (context, state) => MyAuditsPage(now: _now)),
      ...const QualityModule().routes.where((r) => r is GoRoute && r.path == '/quality/audit-run'),
    ],
  );
  return ProviderScope(
    overrides: [auditRunGatewayProvider.overrideWithValue(g)],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _open(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1000, 1400));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
}

void main() {
  group('自分の監査', () {
    testWidgets('割り当てられた監査だけが、実施中 → 予定の近い順 → 完了で並び、予定超過・間近に印が付く', (tester) async {
      await _open(tester, _app(_gateway(), '/quality/my-audits'));
      expect(find.byKey(const Key('ma-inprogress')), findsOneWidget);
      expect(find.byKey(const Key('ma-planned')), findsOneWidget);
      expect(find.byKey(const Key('ma-done')), findsOneWidget);
      final y = {for (final id in ['d-run', 'd-late', 'd-plan', 'd-far', 'd-done']) id: tester.getTopLeft(find.byKey(Key('ma-card-$id'))).dy};
      expect(y['d-run']! < y['d-late']!, isTrue); // 実施中が上
      expect(y['d-late']! < y['d-plan']!, isTrue); // 予定の近い順(過ぎたものが先)
      expect(y['d-plan']! < y['d-far']!, isTrue);
      expect(y['d-far']! < y['d-done']!, isTrue); // 完了が最後
      expect(find.descendant(of: find.byKey(const Key('ma-status-d-late')), matching: find.text('予定超過')), findsOneWidget);
      expect(find.descendant(of: find.byKey(const Key('ma-status-d-plan')), matching: find.byIcon(Icons.notifications_active)), findsOneWidget);
      expect(find.descendant(of: find.byKey(const Key('ma-status-d-far')), matching: find.byIcon(Icons.notifications_active)), findsNothing);
      expect(find.text('チーム: チームA'), findsWidgets);
    });

    testWidgets('割り当てが無いときは、その旨。読み込みの失敗も出す', (tester) async {
      await _open(tester, _app(InMemoryAuditRunGateway(), '/quality/my-audits'));
      expect(find.byKey(const Key('ma-empty')), findsOneWidget);
      await _open(tester, _app(InMemoryAuditRunGateway()..failing = true, '/quality/my-audits'));
      expect(find.byKey(const Key('ma-load-failed')), findsOneWidget);
    });
  });

  group('監査の実施(項目と異常の 2 画面)', () {
    testWidgets('項目に値・所見を入れて保存でき、入力済みの印が付く', (tester) async {
      final g = _gateway();
      await _open(tester, _app(g, '/quality/audit-run?id=d-run'));
      expect(find.text('A1  記録の管理'), findsOneWidget);
      expect(find.byKey(const Key('ar-state-i1')), findsOneWidget);
      expect(find.descendant(of: find.byKey(const Key('ar-state-i1')), matching: find.text('未入力')), findsOneWidget);
      expect(find.descendant(of: find.byKey(const Key('ar-state-i2')), matching: find.text('入力済み')), findsOneWidget);
      expect(tester.widget<FilledButton>(find.byKey(const Key('ar-save-i1'))).onPressed, isNull); // 変更が無いと保存できない

      await tester.enterText(find.byKey(const Key('ar-value-i1')), '2');
      await tester.enterText(find.byKey(const Key('ar-findings-i1')), '記録は適切');
      await tester.pump();
      await tester.tap(find.byKey(const Key('ar-save-i1')));
      await tester.pumpAndSettle();
      expect(g.saveCount, 1);
      final saved = (await g.items('d-run')).first;
      expect(saved.value, '2');
      expect(saved.findings, '記録は適切');
      expect(find.descendant(of: find.byKey(const Key('ar-state-i1')), matching: find.text('入力済み')), findsOneWidget);
    });

    testWidgets('「異常を入力」で、その項目を選んだまま異常の画面へ移り、登録して、項目へ戻る(入力は保たれる)', (tester) async {
      final g = _gateway();
      await _open(tester, _app(g, '/quality/audit-run?id=d-run'));
      await tester.enterText(find.byKey(const Key('ar-findings-i2')), '書きかけのコメント');
      await tester.ensureVisible(find.byKey(const Key('ar-enter-complaint-i2')));
      await tester.tap(find.byKey(const Key('ar-enter-complaint-i2')));
      await tester.pumpAndSettle();
      // 異常の画面: 対象の項目は i2
      expect(find.byKey(const Key('ar-complaint-title')), findsOneWidget);
      expect(find.text('A2  教育訓練'), findsWidgets);
      // 題名が空のときは登録しない
      await tester.tap(find.byKey(const Key('ar-register')));
      await tester.pump();
      expect(find.text('題名を入れてください。'), findsOneWidget);
      await tester.enterText(find.byKey(const Key('ar-complaint-title')), '教育訓練の記録なし');
      await tester.enterText(find.byKey(const Key('ar-complaint-details')), '3 名分の記録が無い');
      await tester.tap(find.byKey(const Key('ar-register')));
      await tester.pumpAndSettle();
      final i2 = (await g.items('d-run')).firstWhere((i) => i.id == 'i2');
      expect(i2.complaints.single.title, '教育訓練の記録なし');
      expect(find.text('教育訓練の記録なし'), findsOneWidget); // この項目の異常の一覧

      await tester.tap(find.byKey(const Key('ar-back-to-items')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ar-count-i2')), findsOneWidget); // 項目に「異常 1 件」
      expect(find.text('書きかけのコメント'), findsOneWidget); // 行き来しても、入力中の内容が残る
    });

    testWidgets('ナビで 2 画面を行き来できる。予定の監査は「実施を開始」、実施中は「実施を終了」(結論つき)', (tester) async {
      final g = _gateway();
      await _open(tester, _app(g, '/quality/audit-run?id=d-plan'));
      expect(find.byKey(const Key('ar-start')), findsOneWidget);
      expect(find.byKey(const Key('ar-no-items')), findsOneWidget);
      await tester.tap(find.byKey(const Key('ar-start')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ar-start')), findsNothing);
      expect(find.byKey(const Key('ar-finish')), findsOneWidget);
      await tester.tap(find.descendant(of: find.byKey(const Key('ar-nav')), matching: find.text('異常')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ar-complaint-title')), findsOneWidget);
      await tester.tap(find.descendant(of: find.byKey(const Key('ar-nav')), matching: find.text('項目')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('ar-finish')));
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('ar-conclusion')), '指摘なし');
      await tester.tap(find.byKey(const Key('ar-finish-ok')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ar-done')), findsOneWidget);
      expect((await g.assignment('d-plan'))!.conclusion, '指摘なし');
    });

    testWidgets('終了した監査は、入力できない。失敗は表示する', (tester) async {
      final g = _gateway();
      g.itemsByDetail['d-done'] = const [AuditItem(id: 'x1', detailId: 'd-done', name: '設備点検')];
      await _open(tester, _app(g, '/quality/audit-run?id=d-done'));
      expect(tester.widget<TextField>(find.byKey(const Key('ar-value-x1'))).enabled, isFalse);

      final g2 = _gateway();
      await _open(tester, _app(g2, '/quality/audit-run?id=d-run'));
      await tester.enterText(find.byKey(const Key('ar-value-i1')), '9');
      await tester.pump();
      g2.failing = true;
      await tester.tap(find.byKey(const Key('ar-save-i1')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ar-action-failed')), findsOneWidget);
    });

    testWidgets('存在しない監査は、読み込みの失敗を出す', (tester) async {
      await _open(tester, _app(_gateway(), '/quality/audit-run?id=none'));
      expect(find.byKey(const Key('ar-load-failed')), findsOneWidget);
    });
  });

  test('遷移先は JSON にできる', () {
    expect(const AuditRunDestination('d1').toJson()['detailId'], 'd1');
    expect(auditRunDestinationSamples.length, 3);
  });
}
