import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:manual/manual.dart';

// 文書の台帳(`/manual`。id が無いとき)。状態の文字は DB のビューの値、読めない文書は出さない、承認待ちは編集者には編集の状態で開く。

const _step = ApprovalStepInfo(
  approved: false,
  rejected: false,
  pending: true,
  stampLabelJa: '承認待ち',
  stampLabelEn: 'Pending',
  priority: 1,
);

Future<GoRouter> _pump(
  WidgetTester tester, {
  required bool canEdit,
  Map<String, ManualApproval> approvals = const {},
}) async {
  final router = GoRouter(initialLocation: '/manual', routes: const ManualModule().routes);
  await tester.binding.setSurfaceSize(const Size(1280, 1000));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        manualRepositoryProvider.overrideWithValue(InMemoryManualRepository()),
        manualCanEditProvider.overrideWithValue(canEdit),
        manualEditorNameProvider.overrideWithValue('テスト'),
        manualApprovalSourceProvider.overrideWithValue(InMemoryManualApprovalSource(approvals)),
      ],
      child: MaterialApp.router(routerConfig: router),
    ),
  );
  await tester.pumpAndSettle();
  return router;
}

void main() {
  testWidgets('台帳に、ルートの文書の管理番号・名称・状態を出す(状態の文字はビューの値)', (tester) async {
    await _pump(
      tester,
      canEdit: false,
      approvals: {
        'm1': const ManualApproval(published: true, statusLabel: '公開', controlNumber: 'QM-001', versionCode: 'A'),
      },
    );
    expect(find.byKey(const Key('manual-ledger-header')), findsOneWidget);
    expect(find.byKey(const Key('manual-ledger-row-m1')), findsOneWidget);
    expect(find.text('QM-001'), findsOneWidget);
    expect(find.byKey(const Key('manual-ledger-status-m1')), findsOneWidget);
    expect(find.text('公開'), findsOneWidget);
    // 子ページは台帳に出ない
    expect(find.byKey(const Key('manual-ledger-row-m3')), findsNothing);
  });

  testWidgets('読めない文書は、編集の権限が無い人には出さない', (tester) async {
    await _pump(
      tester,
      canEdit: false,
      approvals: {'m1': const ManualApproval(published: false, pending: true, readable: false)},
    );
    expect(find.byKey(const Key('manual-ledger-row-m1')), findsNothing);
  });

  testWidgets('「新規」は編集の権限がある人だけ', (tester) async {
    await _pump(tester, canEdit: false);
    expect(find.byKey(const Key('manual-ledger-add')), findsNothing);
  });

  testWidgets('編集の権限がある人には「新規」が出る', (tester) async {
    await _pump(tester, canEdit: true);
    expect(find.byKey(const Key('manual-ledger-add')), findsOneWidget);
  });

  testWidgets('行を押すと閲覧へ。編集者が承認待ちを開くときは編集の状態で開く', (tester) async {
    final router = await _pump(tester, canEdit: false);
    await tester.tap(find.byKey(const Key('manual-ledger-row-m1')));
    await tester.pumpAndSettle();
    expect(router.state.uri.toString(), '/manual?id=m1');

    final router2 = await _pump(
      tester,
      canEdit: true,
      approvals: {'m1': const ManualApproval(published: false, pending: true, steps: [_step])},
    );
    await tester.tap(find.byKey(const Key('manual-ledger-row-m1')));
    await tester.pumpAndSettle();
    expect(router2.state.uri.toString(), '/manual?id=m1&edit=1');
  });
}
