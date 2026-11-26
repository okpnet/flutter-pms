// 監査の計画: 接続なしの見本でも、監査標準・担当者を選べる(空の取得元でドロップダウンが無効になっていた)。
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'support/example_harness.dart';

void main() {
  testWidgets('監査の計画の登録: 監査標準のドロップダウンが有効で、見本の標準を選べる', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    h.router.go('/quality/audit-plan');
    await h.settle();
    final dropdown = find.byKey(const Key('ap-standard'));
    expect(dropdown, findsOneWidget);
    expect(tester.widget<DropdownButtonFormField<String>>(dropdown).onChanged, isNotNull);
    await tester.tap(dropdown);
    await h.settle();
    expect(find.textContaining('内部監査標準').last, findsOneWidget);
    await tester.tap(find.textContaining('内部監査標準').last);
    await h.settle();
    expect(find.textContaining('内部監査標準'), findsWidgets);
  });

  testWidgets('メニュー「監査の計画」は台帳を開く(登録の別メニューは無い)', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    h.router.go('/e/audit');
    await h.settle();
    expect(h.location, '/e/audit');
    expect(find.text('監査計画の登録'), findsNothing);
  });
}
