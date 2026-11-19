import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget _app(List<String> log) => MaterialApp(
  home: ScreenScaffold(
    title: '設備の編集',
    breadcrumbs: [
      const BreadcrumbItem('資源'),
      BreadcrumbItem('設備', onTap: () => log.add('equipment')),
      const BreadcrumbItem('編集'),
    ],
    body: const SizedBox(),
  ),
);

void main() {
  testWidgets('PC: パンくずが左から右へ並び、最後は押せない', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final log = <String>[];
    await tester.pumpWidget(_app(log));
    final a = tester.getTopLeft(find.byKey(const ValueKey('crumb:0'))).dx;
    final b = tester.getTopLeft(find.byKey(const ValueKey('crumb:1'))).dx;
    final c = tester.getTopLeft(find.byKey(const ValueKey('crumb:2'))).dx;
    expect(a < b && b < c, isTrue);
    // 見出しの上(縦に並べない)
    expect(
      tester.getTopLeft(find.byKey(const ValueKey('crumb:0'))).dy,
      lessThan(tester.getTopLeft(find.byKey(const ValueKey('screenTitle'))).dy),
    );
    await tester.tap(find.byKey(const ValueKey('crumb:1')));
    expect(log, ['equipment']);
  });

  testWidgets('スマートフォン: 見出しを押すと、パンくずが開閉する', (tester) async {
    tester.view.physicalSize = const Size(400, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(_app([]));
    expect(find.byKey(const ValueKey('screenBreadcrumb')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('screenTitleToggle')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('screenBreadcrumb')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('screenTitleToggle')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('screenBreadcrumb')), findsNothing);
  });
}
