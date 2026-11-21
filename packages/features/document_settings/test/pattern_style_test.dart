import 'dart:convert';

import 'package:document_settings/document_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

const _a = ApprovalPatternOption(id: 'p-a', name: '標準(承認不要)');
const _b = ApprovalPatternOption(
  id: 'p-b',
  name: '品質承認(2 段)',
  stampStyle: {
    'position': {'anchor': 'bottomLeft'},
    'layer': 'foreground',
  },
);

Widget _app(InMemoryApprovalPatternSource patterns, {bool admin = true}) {
  final router = GoRouter(initialLocation: DocumentSettingsPaths.home, routes: const DocumentSettingsModule().routes);
  return ProviderScope(
    overrides: [
      documentSettingsGatewayProvider.overrideWithValue(InMemoryAppSettingsGateway()),
      documentSettingsPatternSourceProvider.overrideWithValue(patterns),
      documentSettingsIsAdminProvider.overrideWithValue(admin),
    ],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _open(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1500, 1500));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
  await tester.tap(find.text('パターン別のスタンプ'));
  await tester.pumpAndSettle();
}

Future<void> _tap(WidgetTester tester, String key) async {
  await tester.ensureVisible(find.byKey(Key(key)));
  await tester.tap(find.byKey(Key(key)));
  await tester.pumpAndSettle();
}

/// タブのプレビュー(標準に重ねた結果)の、1 つ目のスタンプの位置。
Offset _stamp(WidgetTester tester) =>
    tester.getTopLeft(find.descendant(of: find.byKey(const Key('ds-pstyle-preview')), matching: find.byKey(const Key('stamp-preview-0'))));

Offset _page(WidgetTester tester) => tester.getCenter(find.descendant(of: find.byKey(const Key('ds-pstyle-preview')), matching: find.byKey(const Key('page-preview'))));

void main() {
  testWidgets('パターンを選ぶと保存済みの様式が入り、標準のパターンは「標準の様式を使う」になる', (tester) async {
    await _open(tester, _app(InMemoryApprovalPatternSource([_a, _b])));
    // 先頭のパターン = 様式なし
    expect(find.byKey(const Key('ds-pstyle-using-standard')), findsOneWidget);
    expect(find.byKey(const Key('ds-pstyle-json')), findsNothing);

    await tester.tap(find.byKey(const Key('ds-pstyle-pattern-p-a')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('品質承認(2 段)').last);
    await tester.pumpAndSettle();
    final text = tester.widget<TextField>(find.byKey(const Key('ds-pstyle-json'))).controller!.text;
    expect(jsonDecode(text), {
      'position': {'anchor': 'bottomLeft'},
      'layer': 'foreground',
    });
    // 標準は右上。このパターンは左下 → プレビューは用紙の下半分
    expect(_stamp(tester).dy, greaterThan(_page(tester).dy));
  });

  testWidgets('専用の様式を書いて保存すると、パターンの様式になる(標準に重ねたプレビューが動く)', (tester) async {
    final src = InMemoryApprovalPatternSource([_a, _b]);
    await _open(tester, _app(src));
    final before = _stamp(tester); // 標準(右上)
    await _tap(tester, 'ds-pstyle-standard'); // 専用の様式を持つ
    expect(find.byKey(const Key('ds-pstyle-json')), findsOneWidget);
    await tester.enterText(find.byKey(const Key('ds-pstyle-json')), jsonEncode({'position': {'anchor': 'bottomLeft'}}));
    await tester.pumpAndSettle();
    expect(_stamp(tester).dx, lessThan(before.dx)); // 左へ動いた
    await _tap(tester, 'ds-pstyle-save');
    expect(find.byKey(const Key('ds-pstyle-saved')), findsOneWidget);
    expect(src.saved.single.$1, 'p-a');
    expect(src.saved.single.$2, {
      'position': {'anchor': 'bottomLeft'},
    });
    // 保存後に取り直しても、このパターンの様式として残る
    expect(find.byKey(const Key('ds-pstyle-json')), findsOneWidget);
  });

  testWidgets('「標準の様式を使う」にして保存すると、様式は NULL になる', (tester) async {
    final src = InMemoryApprovalPatternSource([_b]);
    await _open(tester, _app(src));
    expect(find.byKey(const Key('ds-pstyle-json')), findsOneWidget); // _b は専用の様式を持つ
    await _tap(tester, 'ds-pstyle-standard');
    await _tap(tester, 'ds-pstyle-save');
    expect(src.saved.single.$1, 'p-b');
    expect(src.saved.single.$2, isNull);
    expect(src.options.single.stampStyle, isNull);
  });

  testWidgets('スキーマの誤り・読めない JSON・オブジェクト以外は、場所つきで示して保存しない', (tester) async {
    final src = InMemoryApprovalPatternSource([_a]);
    await _open(tester, _app(src));
    await _tap(tester, 'ds-pstyle-standard');
    await tester.enterText(find.byKey(const Key('ds-pstyle-json')), jsonEncode({'position': {'anchor': 'middle'}, 'opacty': 1}));
    await _tap(tester, 'ds-pstyle-save');
    expect(find.byKey(const Key('ds-pstyle-issues')), findsOneWidget);
    expect(find.textContaining('/position/anchor'), findsOneWidget);
    expect(src.saved, isEmpty);

    await tester.enterText(find.byKey(const Key('ds-pstyle-json')), '{ broken');
    await _tap(tester, 'ds-pstyle-save');
    expect(find.text('JSON として読めません。'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('ds-pstyle-json')), '[1]');
    await _tap(tester, 'ds-pstyle-save');
    expect(find.text('様式は JSON のオブジェクトで書きます。'), findsOneWidget);
    expect(src.saved, isEmpty);
  });

  testWidgets('保存に失敗したら案内を出す(管理者でないときの DB の拒否など)', (tester) async {
    final src = InMemoryApprovalPatternSource([_a]);
    await _open(tester, _app(src));
    src.failing = true;
    await _tap(tester, 'ds-pstyle-save');
    expect(find.byKey(const Key('ds-pstyle-save-failed')), findsOneWidget);
  });

  testWidgets('「保存済みに戻す」は、入力を保存済みの様式に戻す', (tester) async {
    await _open(tester, _app(InMemoryApprovalPatternSource([_b])));
    await tester.enterText(find.byKey(const Key('ds-pstyle-json')), '{"opacity": 0.1}');
    await tester.pumpAndSettle();
    await _tap(tester, 'ds-pstyle-revert');
    final text = tester.widget<TextField>(find.byKey(const Key('ds-pstyle-json'))).controller!.text;
    expect(jsonDecode(text)['layer'], 'foreground');
  });

  testWidgets('パターンが無い・読み込みの失敗は案内、管理者でなければ操作できない', (tester) async {
    await _open(tester, _app(InMemoryApprovalPatternSource()));
    expect(find.byKey(const Key('ds-pstyle-empty')), findsOneWidget);
    await _open(tester, _app(InMemoryApprovalPatternSource()..failing = true));
    expect(find.byKey(const Key('ds-pstyle-error')), findsOneWidget);

    await _open(tester, _app(InMemoryApprovalPatternSource([_a]), admin: false));
    final absorb = tester.widget<AbsorbPointer>(find.ancestor(of: find.byKey(const Key('ds-pstyle-save')), matching: find.byType(AbsorbPointer)).first);
    expect(absorb.absorbing, isTrue);
  });
}
