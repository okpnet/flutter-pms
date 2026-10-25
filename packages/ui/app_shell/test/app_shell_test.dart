import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

AppMenu _menu(List<String> selected) => AppMenu(
  topItems: [
    AppMenuItem(
      id: 'home',
      label: 'ダッシュボード',
      icon: Icons.home,
      onSelected: () => selected.add('home'),
    ),
  ],
  groups: [
    AppMenuGroup(
      id: 'system',
      label: 'システム',
      icon: Icons.storage,
      items: [
        AppMenuItem(
          id: 'unit',
          label: '単位',
          selected: true,
          onSelected: () => selected.add('unit'),
        ),
      ],
    ),
  ],
);

Widget _frame({
  required List<String> selected,
  AppUser? user = const AppUser(name: '鈴木 一郎', role: '生産管理部'),
  bool iconOnly = false,
  List<UserMenuAction> actions = const [],
}) => MaterialApp(
  home: MultiMainFrame(
    title: '生産管理',
    menu: _menu(selected),
    user: user,
    userActions: actions,
    sidebarIconOnly: iconOnly,
    body: const Center(child: Text('本文')),
  ),
);

Future<void> _size(WidgetTester tester, double width) async {
  tester.view.physicalSize = Size(width, 900);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
}

void main() {
  testWidgets('PC: 通常のサイドバー(項目名つき)とユーザーを表示する', (tester) async {
    await _size(tester, 1400);
    final selected = <String>[];
    await tester.pumpWidget(_frame(selected: selected));
    expect(find.text('生産管理'), findsOneWidget);
    expect(find.text('ダッシュボード'), findsOneWidget);
    expect(find.text('システム'), findsOneWidget);
    // 選択中の項目があるグループは開いている
    expect(find.text('単位'), findsOneWidget);
    expect(find.text('鈴木 一郎'), findsOneWidget);
    expect(find.text('生産管理部'), findsOneWidget);
    expect(find.byIcon(Icons.menu), findsNothing);

    await tester.tap(find.text('単位'));
    expect(selected, ['unit']);
  });

  testWidgets('タブレット: アイコンだけのサイドバー', (tester) async {
    await _size(tester, 900);
    await tester.pumpWidget(_frame(selected: []));
    expect(find.text('ダッシュボード'), findsNothing);
    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.byIcon(Icons.storage), findsOneWidget);
    expect(find.byIcon(Icons.menu), findsNothing);
  });

  testWidgets('設定でアイコンだけにできる(PC)', (tester) async {
    await _size(tester, 1400);
    await tester.pumpWidget(_frame(selected: [], iconOnly: true));
    expect(find.text('ダッシュボード'), findsNothing);
    expect(find.byIcon(Icons.home), findsOneWidget);
  });

  testWidgets('モバイル: サイドバーを隠し、ハンバーガーで同じメニューを開く', (tester) async {
    await _size(tester, 400);
    final selected = <String>[];
    await tester.pumpWidget(_frame(selected: selected));
    expect(find.text('ダッシュボード'), findsNothing);
    expect(find.byIcon(Icons.menu), findsOneWidget);
    // モバイルではユーザー名を隠し、顔写真(頭文字)だけを表示する
    expect(find.text('鈴木 一郎'), findsNothing);

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();
    expect(find.text('ダッシュボード'), findsOneWidget);
    await tester.tap(find.text('ダッシュボード'));
    await tester.pumpAndSettle();
    expect(selected, ['home']);
    // 項目を選ぶと閉じる
    expect(find.text('ダッシュボード'), findsNothing);
  });

  testWidgets('ログインしていない(ユーザーが無い)ときは、メニューもユーザーも出さない', (tester) async {
    await _size(tester, 1400);
    await tester.pumpWidget(_frame(selected: [], user: null));
    expect(find.text('生産管理'), findsOneWidget);
    expect(find.text('ダッシュボード'), findsNothing);
    expect(find.text('鈴木 一郎'), findsNothing);
    expect(find.text('本文'), findsOneWidget);
  });

  testWidgets('ユーザーメニューから設定などを選べる', (tester) async {
    await _size(tester, 1400);
    final done = <String>[];
    await tester.pumpWidget(
      _frame(
        selected: [],
        actions: [
          UserMenuAction(
            label: '設定',
            icon: Icons.settings,
            onSelected: () => done.add('settings'),
          ),
        ],
      ),
    );
    await tester.tap(find.text('鈴木 一郎'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('設定'));
    await tester.pumpAndSettle();
    expect(done, ['settings']);
  });

  testWidgets('シングルメインフレームはサイドバーを持たない', (tester) async {
    await _size(tester, 1400);
    await tester.pumpWidget(
      const MaterialApp(
        home: SingleMainFrame(title: '生産管理', body: Text('ログイン')),
      ),
    );
    expect(find.text('ログイン'), findsOneWidget);
    expect(find.byType(SideBar), findsNothing);
  });
}
