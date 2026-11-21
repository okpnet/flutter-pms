import 'package:document_settings/document_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

const _standard = ApprovalPatternOption(id: 'b467dcd7-42c1-47bd-9a85-a4121cb2519b', name: '標準(承認不要)');
const _quality = ApprovalPatternOption(id: '11111111-2222-3333-4444-555555555555', name: '品質承認(2 段)');

Widget _app({required InMemoryAppSettingsGateway gateway, required InMemoryApprovalPatternSource patterns, bool admin = true}) {
  final router = GoRouter(initialLocation: DocumentSettingsPaths.home, routes: const DocumentSettingsModule().routes);
  return ProviderScope(
    overrides: [
      documentSettingsGatewayProvider.overrideWithValue(gateway),
      documentSettingsPatternSourceProvider.overrideWithValue(patterns),
      documentSettingsIsAdminProvider.overrideWithValue(admin),
    ],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _open(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1500, 1300));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
  await tester.tap(find.text('承認パターン'));
  await tester.pumpAndSettle();
}

Future<void> _choose(WidgetTester tester, String kind, String label) async {
  await tester.ensureVisible(find.byKey(Key('ds-approval-$kind')));
  await tester.tap(find.byKey(Key('ds-approval-$kind')));
  await tester.pumpAndSettle();
  await tester.tap(find.text(label).last);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('8 つの種類が並び、承認パターンを選んで保存すると、approval.patterns に ID が入る', (tester) async {
    final g = InMemoryAppSettingsGateway();
    await _open(tester, _app(gateway: g, patterns: InMemoryApprovalPatternSource([_standard, _quality])));
    for (final kind in ['document', 'order', 'purchase', 'unrecognized', 'shipping_order', 'complaint', 'disposal', 'recurrence_prevention']) {
      expect(find.byKey(Key('ds-approval-$kind')), findsOneWidget, reason: kind);
    }
    expect(find.byKey(const Key('ds-approval-document-note')), findsOneWidget); // 文書は未設定のとき案内を出す

    await _choose(tester, 'document', '標準(承認不要)');
    await _choose(tester, 'order', '品質承認(2 段)');
    expect(find.byKey(const Key('ds-unsaved')), findsOneWidget);
    expect(find.byKey(const Key('ds-approval-document-note')), findsNothing);

    await tester.tap(find.byKey(const Key('ds-save')));
    await tester.pumpAndSettle();
    final patterns = ((g.value! as Map)['approval'] as Map)['patterns'] as Map;
    expect(patterns['document'], _standard.id);
    expect(patterns['order'], _quality.id);
    expect(patterns['purchase'], isNull);
  });

  testWidgets('「承認不要」を選ぶと、その種類は null(設定しない)になる', (tester) async {
    final g = InMemoryAppSettingsGateway({
      'version': 1,
      'approval': {
        'patterns': {'document': _standard.id, 'order': _quality.id},
      },
    });
    await _open(tester, _app(gateway: g, patterns: InMemoryApprovalPatternSource([_standard, _quality])));
    expect(find.text('品質承認(2 段)'), findsOneWidget); // 設定済みの値が選ばれている
    await _choose(tester, 'order', '承認不要(設定しない)');
    await tester.tap(find.byKey(const Key('ds-save')));
    await tester.pumpAndSettle();
    final patterns = ((g.value! as Map)['approval'] as Map)['patterns'] as Map;
    expect(patterns['order'], isNull);
    expect(patterns['document'], _standard.id); // ほかは変わらない
  });

  testWidgets('一覧に無い ID が設定されていても、消さずに選択肢に残す', (tester) async {
    const gone = '99999999-0000-0000-0000-000000000000';
    final g = InMemoryAppSettingsGateway({
      'version': 1,
      'approval': {
        'patterns': {'purchase': gone},
      },
    });
    await _open(tester, _app(gateway: g, patterns: InMemoryApprovalPatternSource([_standard])));
    expect(find.text('(一覧に無いパターン) $gone'), findsOneWidget);
    await tester.tap(find.byKey(const Key('ds-save'))); // 変更が無くても保存できる(ID は残る)
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ds-unsaved')), findsNothing);
  });

  testWidgets('承認パターンが 1 件も無いとき・読み込みに失敗したときは案内を出す', (tester) async {
    await _open(tester, _app(gateway: InMemoryAppSettingsGateway(), patterns: InMemoryApprovalPatternSource()));
    expect(find.byKey(const Key('ds-approval-empty')), findsOneWidget);
  });

  testWidgets('読み込みの失敗', (tester) async {
    final src = InMemoryApprovalPatternSource()..failing = true;
    await _open(tester, _app(gateway: InMemoryAppSettingsGateway(), patterns: src));
    expect(find.byKey(const Key('ds-approval-error')), findsOneWidget);
    expect(find.byKey(const Key('ds-approval-order')), findsNothing);
  });

  testWidgets('管理者でなければ、選べない', (tester) async {
    await _open(tester, _app(gateway: InMemoryAppSettingsGateway(), patterns: InMemoryApprovalPatternSource([_standard]), admin: false));
    final absorb = tester.widget<AbsorbPointer>(find.ancestor(of: find.byKey(const Key('ds-approval-document')), matching: find.byType(AbsorbPointer)).first);
    expect(absorb.absorbing, isTrue);
  });
}
