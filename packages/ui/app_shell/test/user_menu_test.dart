import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget _app(List<String> log, int tick) => MaterialApp(
  home: MultiMainFrame(
    title: '生産管理 $tick',
    menu: const AppMenu(topItems: [], groups: []),
    user: const AppUser(name: '鈴木 一郎', role: '生産管理部'),
    userActions: [
      UserMenuAction(label: '設定', onSelected: () => log.add('settings')),
    ],
    body: const Center(child: Text('本文')),
  ),
);

void main() {
  testWidgets('メニューを開いている間に枠が再構築されても、選択が実行される', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final log = <String>[];
    await tester.pumpWidget(_app(log, 0));
    await tester.tap(find.byType(PopupMenuButton<UserMenuAction>));
    await tester.pumpAndSettle();
    await tester.pumpWidget(_app(log, 1)); // 権限の取得などで枠が再構築される
    await tester.pumpAndSettle();
    await tester.tap(find.text('設定'));
    await tester.pumpAndSettle();
    expect(log, ['settings']);
  });

  testWidgets('メニューは担当者の直下(右側)に出る', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(_app([], 0));
    await tester.tap(find.byType(PopupMenuButton<UserMenuAction>));
    await tester.pumpAndSettle();
    final button = tester.getRect(find.byType(PopupMenuButton<UserMenuAction>));
    final item = tester.getRect(find.text('設定'));
    expect(item.left, greaterThan(700));
    expect(item.top, greaterThanOrEqualTo(button.bottom));
  });
}
