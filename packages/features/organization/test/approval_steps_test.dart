import 'dart:ui' show PointerDeviceKind;

import 'package:baton_lib/baton_lib.dart';
import 'package:feature_shared/feature_shared.dart' show commandBusProvider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:organization/organization.dart';
import 'package:organization/organization_api.dart';

const _departments = [
  ApprovalStepOption(id: 'd1', name: '製造部'),
  ApprovalStepOption(id: 'd2', name: '生産管理部'),
  ApprovalStepOption(id: 'd3', name: '品質保証部'),
];
const _positions = [
  ApprovalStepOption(id: 'x1', name: '工場長'),
  ApprovalStepOption(id: 'x2', name: '部長'),
  ApprovalStepOption(id: 'x3', name: '責任者'),
];

InMemoryApprovalStepsGateway _gateway() => InMemoryApprovalStepsGateway(
  departmentOptions: _departments,
  positionOptions: _positions,
  steps: const [
    ApprovalStep(id: 's1', approvalId: 'a1', priority: 1, departmentId: 'd1', positionId: 'x1'),
    ApprovalStep(id: 's2', approvalId: 'a2', priority: 2, departmentId: 'd2', positionId: 'x2'),
    ApprovalStep(id: 's3', approvalId: 'a3', priority: 3, departmentId: 'd3', positionId: 'x3'),
  ],
);

Widget _app(IApprovalStepsGateway g) {
  final router = GoRouter(
    initialLocation: ApprovalStepsPathsForTest.location,
    routes: const OrganizationModule().routes,
  );
  return ProviderScope(
    overrides: [approvalStepsGatewayProvider.overrideWithValue(g)],
    child: MaterialApp.router(routerConfig: router),
  );
}

/// テスト用の遷移先のパス(`ApprovalStepsDestination` と同じ書式)。
abstract final class ApprovalStepsPathsForTest {
  static const location = '/organization/approval-steps?id=p1&name=%E8%B3%BC%E8%B2%B7%E7%94%B3%E8%AB%8B';
}

Future<void> _open(WidgetTester tester, IApprovalStepsGateway g) async {
  await tester.binding.setSurfaceSize(const Size(1300, 1000));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(_app(g));
  await tester.pumpAndSettle();
}

List<String> _order(WidgetTester tester) {
  final rows = [for (final n in ['製造部', '生産管理部', '品質保証部']) MapEntry(n, tester.getTopLeft(find.text(n)).dy)]
    ..sort((a, b) => a.value.compareTo(b.value));
  return [for (final e in rows) e.key];
}

void main() {
  embeddedMain();
  testWidgets('承認の段が順位の順に並び、承認パターンの名称が出る', (tester) async {
    await _open(tester, _gateway());
    expect(find.byKey(const Key('as-pattern')), findsOneWidget);
    expect(find.text('承認パターン: 購買申請'), findsOneWidget);
    expect(_order(tester), ['製造部', '生産管理部', '品質保証部']);
    expect(find.text('第1段階'), findsOneWidget);
    expect(find.text('第3段階'), findsOneWidget);
    expect(find.text('工場長'), findsOneWidget);
  });

  testWidgets('段が無いときは案内を出す', (tester) async {
    final g = InMemoryApprovalStepsGateway(departmentOptions: _departments, positionOptions: _positions);
    await _open(tester, g);
    expect(find.byKey(const Key('as-empty')), findsOneWidget);
  });

  testWidgets('読み込みに失敗したときは、その旨を出す', (tester) async {
    final g = _gateway()..failing = true;
    await _open(tester, g);
    expect(find.byKey(const Key('as-load-failed')), findsOneWidget);
  });

  testWidgets(
    '行をドラッグして並べ替えると、順位が付け替わって保存される',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      final g = _gateway();
      await _open(tester, g);
      final top = tester.getTopLeft(find.text('製造部'));
      final gesture = await tester.startGesture(tester.getCenter(find.text('品質保証部')), kind: PointerDeviceKind.mouse);
      await gesture.moveBy(const Offset(0, -20));
      await gesture.moveTo(Offset(top.dx + 5, top.dy + 1));
      await tester.pump();
      await gesture.up();
      await tester.pumpAndSettle();
      expect(g.reorderCount, 1);
      expect([for (final s in await g.load('p1')) s.id], ['s3', 's1', 's2']);
      expect([for (final s in await g.load('p1')) s.priority], [1, 2, 3]);
      expect(_order(tester), ['品質保証部', '製造部', '生産管理部']);
    },
  );

  testWidgets(
    '並べ替えの保存に失敗したときは、元の並びに戻して知らせる',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      final g = _WriteFails(departmentOptions: _departments, positionOptions: _positions, steps: _gateway().steps);
      await _open(tester, g);
      final top = tester.getTopLeft(find.text('製造部'));
      final gesture = await tester.startGesture(tester.getCenter(find.text('品質保証部')), kind: PointerDeviceKind.mouse);
      await gesture.moveBy(const Offset(0, -20));
      await gesture.moveTo(Offset(top.dx + 5, top.dy + 1));
      await tester.pump();
      await gesture.up();
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('as-action-failed')), findsOneWidget);
      expect(_order(tester), ['製造部', '生産管理部', '品質保証部']);
    },
  );

  testWidgets('段を追加すると、最後の順位で足される(役職は必須)', (tester) async {
    final g = _gateway();
    await _open(tester, g);
    await tester.tap(find.byKey(const Key('as-add')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('as-save')));
    await tester.pumpAndSettle();
    expect(find.text('役職を選んでください。'), findsOneWidget);
    await tester.tap(find.byKey(const Key('as-position')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('責任者').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('as-save')));
    await tester.pumpAndSettle();
    final steps = await g.load('p1');
    expect(steps.length, 4);
    expect(steps.last.priority, 4);
    expect(steps.last.positionId, 'x3');
    expect(steps.last.departmentId, isNull);
  });

  testWidgets('行を開いて、部署・役職を変えられる', (tester) async {
    final g = _gateway();
    await _open(tester, g);
    await tester.tap(find.text('製造部'));
    await tester.pump(const Duration(milliseconds: 60));
    await tester.tap(find.text('製造部'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('as-department')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('品質保証部').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('as-save')));
    await tester.pumpAndSettle();
    final s1 = (await g.load('p1')).firstWhere((s) => s.id == 's1');
    expect(s1.departmentId, 'd3');
    expect(s1.positionId, 'x1');
  });

  testWidgets('段の削除は、確認のあとに行われる', (tester) async {
    final g = _gateway();
    await _open(tester, g);
    await tester.tap(find.text('生産管理部'));
    await tester.pump(const Duration(milliseconds: 60));
    await tester.tap(find.text('生産管理部'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('as-delete')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('as-delete-confirm')), findsOneWidget);
    expect((await g.load('p1')).length, 3);
    await tester.tap(find.byKey(const Key('as-delete')));
    await tester.pumpAndSettle();
    expect([for (final s in await g.load('p1')) s.id], ['s1', 's3']);
  });

  test('順位の振り直しは、1 から連番にして、変わらない段はそのまま', () {
    const a = ApprovalStep(id: 'a', approvalId: 'a', priority: 1);
    const b = ApprovalStep(id: 'b', approvalId: 'b', priority: 5);
    const c = ApprovalStep(id: 'c', approvalId: 'c', priority: 9);
    final out = renumberSteps([c, a, b]);
    expect([for (final s in out) '${s.id}${s.priority}'], ['c1', 'a2', 'b3']);
    expect([for (final s in renumberSteps([a, b])) s.priority], [1, 2]);
  });

  test('ApprovalStepsDestination は JSON にできる', () {
    expect(const ApprovalStepsDestination('p1', patternName: '購買').toJson()['patternId'], 'p1');
  });
}

/// 書き込み(並べ替え)だけが失敗する取得元。
class _WriteFails extends InMemoryApprovalStepsGateway {
  _WriteFails({super.steps, super.departmentOptions, super.positionOptions});

  @override
  Future<void> reorder(List<ApprovalStep> ordered) async => throw StateError('reorder failed');
}

void embeddedMain() {
  testWidgets('承認パターンの編集画面の下に、承認の段(子の表)が出る。新規のときは出ない', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1300, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    Future<void> open(String location) async {
      final router = GoRouter(initialLocation: location, routes: const OrganizationModule().routes);
      final container = ProviderContainer(overrides: [approvalStepsGatewayProvider.overrideWithValue(_gateway()), commandBusProvider.overrideWithValue(_NoBus())]);
      addTearDown(container.dispose);
      // 実体を登録簿へ登録する(アプリが起動時に行う)
      container.read(Provider<void>((ref) => const OrganizationModule().registerHandlers(CommandHandlerRegistry(), ref)));
      await tester.pumpWidget(UncontrolledProviderScope(container: container, child: MaterialApp.router(routerConfig: router)));
      await tester.pumpAndSettle();
    }

    await open('/e/approvalpattern/c1404734-0000-4000-8000-000000000001');
    expect(find.text('承認の段'), findsWidgets);
    expect(find.byKey(const Key('as-add')), findsOneWidget);
    expect(find.text('製造部'), findsOneWidget);

    await open('/e/approvalpattern/new');
    expect(find.byKey(const Key('as-add')), findsNothing);
  });
}

class _NoBus implements CommandBus {
  @override
  Future<R> execute<R>(ActionCommand<R> command) async => throw UnimplementedError('$command');
}
