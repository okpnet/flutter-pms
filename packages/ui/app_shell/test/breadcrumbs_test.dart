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
    // 見出しの前に、同じ行で、左から右へ(縦に並べない)
    final title = tester.getTopLeft(find.byKey(const ValueKey('screenTitle')));
    expect(c < title.dx, isTrue);
    expect(
      (tester.getCenter(find.byKey(const ValueKey('crumb:0'))).dy -
              tester.getCenter(find.byKey(const ValueKey('screenTitle'))).dy)
          .abs(),
      lessThan(20),
    );
    // 区切りの三角は、項目と見出しの間に 3 つ
    expect(find.byKey(const ValueKey('crumbSeparator')), findsNWidgets(3));
    await tester.tap(find.byKey(const ValueKey('crumb:1')));
    expect(log, ['equipment']);
  });

  testWidgets('スマートフォン: 見出しだけ。押すと、下に「ルート ▶ 子 ▶」が開閉する', (tester) async {
    tester.view.physicalSize = const Size(400, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(_app([]));
    expect(find.byKey(const ValueKey('screenBreadcrumb')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('screenTitleToggle')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('screenBreadcrumb')), findsOneWidget);
    // 開いた行は、見出しの下で、最後の項目のあとにも三角が付く
    expect(
      tester.getTopLeft(find.byKey(const ValueKey('crumb:0'))).dy,
      greaterThan(tester.getBottomLeft(find.byKey(const ValueKey('screenTitle'))).dy - 1),
    );
    expect(find.byKey(const ValueKey('crumbSeparator')), findsNWidgets(3));
    await tester.tap(find.byKey(const ValueKey('screenTitleToggle')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('screenBreadcrumb')), findsNothing);
  });
  test('内容の幅: スマートフォンは 95%、それ以外は 90%、上限 1600', () {
    expect(ContentWidth.of(400, screenWidth: 400), closeTo(380, 0.001));
    expect(ContentWidth.of(1000, screenWidth: 1000), closeTo(900, 0.001));
    expect(ContentWidth.of(900, screenWidth: 800), closeTo(810, 0.001));
    expect(ContentWidth.of(3000, screenWidth: 3000), 1600);
  });

  testWidgets('ScreenScaffold: 見出しと本体が、内容の幅で中央に置かれる', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      const MaterialApp(
        home: ScreenScaffold(
          title: 'タイトル',
          body: SizedBox.expand(key: ValueKey('body')),
        ),
      ),
    );
    final body = tester.getRect(find.byKey(const ValueKey('body')));
    expect(body.width, closeTo(1260, 0.01)); // 1400 の 90%
    expect(body.center.dx, closeTo(700, 0.01));
  });
}
