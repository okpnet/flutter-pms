import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:manual/manual.dart';

// 承認の申請(「承認を申請」ボタン)。承認待ち(DB のビューの pending)の文書を、編集の権限がある人だけが申請できる。

const _pendingStep = ApprovalStepInfo(
  approved: false,
  rejected: false,
  pending: true,
  stampLabelJa: '承認待ち',
  stampLabelEn: 'Pending',
  priority: 1,
);

Future<InMemoryManualApprovalSource> _pump(
  WidgetTester tester, {
  required bool canEdit,
  required ManualApproval approval,
}) async {
  final source = InMemoryManualApprovalSource({'m1': approval});
  final router = GoRouter(initialLocation: '/manual?id=m1', routes: const ManualModule().routes);
  await tester.binding.setSurfaceSize(const Size(1280, 1000));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        manualRepositoryProvider.overrideWithValue(InMemoryManualRepository()),
        manualCanEditProvider.overrideWithValue(canEdit),
        manualEditorNameProvider.overrideWithValue('テスト'),
        manualApprovalSourceProvider.overrideWithValue(source),
      ],
      child: MaterialApp.router(routerConfig: router),
    ),
  );
  await tester.pumpAndSettle();
  return source;
}

const _pending = ManualApproval(published: false, pending: true, steps: [_pendingStep]);

void main() {
  const button = Key('manual-request-approval');

  testWidgets('編集の権限がある人には、承認待ちの文書に「承認を申請」を出し、押すと申請する', (tester) async {
    final source = await _pump(tester, canEdit: true, approval: _pending);
    expect(find.byKey(button), findsOneWidget);
    await tester.tap(find.byKey(button));
    await tester.pumpAndSettle();
    expect(source.requested, ['m1']);
    expect(find.textContaining('1 件'), findsOneWidget);
  });

  testWidgets('同じ文書を続けて申請しても、通知を増やさない(冪等)', (tester) async {
    final source = await _pump(tester, canEdit: true, approval: _pending);
    await tester.tap(find.byKey(button));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 5));
    await tester.tap(find.byKey(button));
    await tester.pumpAndSettle();
    expect(source.requested, ['m1']);
    expect(find.textContaining('申請済み'), findsOneWidget);
  });

  testWidgets('編集の権限が無い人には出さない', (tester) async {
    await _pump(tester, canEdit: false, approval: _pending);
    expect(find.byKey(button), findsNothing);
  });

  testWidgets('承認不要・公開済みの文書(承認待ちでない)には出さない', (tester) async {
    await _pump(tester, canEdit: true, approval: ManualApproval.none);
    expect(find.byKey(button), findsNothing);
  });
}
