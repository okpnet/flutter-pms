// 評価 1(テーマ)・2(ログインユーザー)・5(ファイルのアップロード)・7(権限とメニュー)・11(メニューの漏れ)。
import 'package:auth_files/auth_files.dart' show AuthFilesPaths;
import 'package:feature_shared/feature_shared.dart';
import 'package:app_shell/app_shell.dart' show UserContainer;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:feature_shared/feature_shared.dart'
    show EntityListDestination, TopLevelDestination, commandBusProvider;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:pms_app/contents/_shared/frames/app_main_frame.dart';
import 'package:pms_app/services/access/menu_access.dart';
import 'package:pms_app/services/features/feature_error.dart'
    show featureLocationOf;
import 'package:pms_app/services/features/feature_modules.dart';
import 'package:pms_app/services/session/pocketbase_user_identity.dart';
import 'package:theme_lib/theme_lib.dart';

import 'support/example_harness.dart';

/// アプリの枠(`AppMainFrame`)の要素から、`WidgetRef` を得る(メニューの項目を、実物と同じ方法で集める)。
WidgetRef _refOf(WidgetTester tester) =>
    tester.element(find.byType(AppMainFrame)) as WidgetRef;

/// メニューの項目の遷移先のパス(枠と同じく、メニュー用の包みを外す)。パスを求められないときは null。
String? _pathOf(PageDestination<Object?> destination) {
  final Object target = destination;
  final inner = target is TopLevelDestination ? target.inner : destination;
  try {
    return featureLocationOf(inner);
  } on StateError {
    return null;
  }
}

List<MenuEntry> _menuEntries(WidgetRef ref) => [
  for (final m in featureModules)
    if (m is MenuContributor) ...(m as MenuContributor).menuEntries(ref),
];

void main() {
  fileFieldTests();
  group('1. テーマ', () {
    testWidgets('テーマが適用され、選択・モードで変えられる', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('admin', 'admin-pass');
      final before = Theme.of(tester.element(find.byType(AppMainFrame)));

      final manager = h.container.read(themeManagerProvider.notifier);
      // 追加のテーマ(ocean・forest。アプリが起動時に取り込む)
      final failures = await tester.runAsync(
        () => manager.importAssets(ThemeAssets.all),
      );
      // ignore: avoid_print
      print('追加のテーマの取り込み失敗: ${failures?.length}');
      final ids = h.container.read(themeManagerProvider).themes.keys.toList();
      expect(ids.length, greaterThan(1), reason: '選べるテーマが 2 つ以上ある');
      final other = ids.firstWhere(
        (id) => id != h.container.read(themeManagerProvider).activeId,
      );
      manager.select(other);
      await h.settle();
      final after = Theme.of(tester.element(find.byType(AppMainFrame)));
      expect(after.colorScheme.primary, isNot(before.colorScheme.primary));

      manager.setMode(ThemeMode.dark);
      await h.settle();
      expect(
        Theme.of(tester.element(find.byType(AppMainFrame))).brightness,
        Brightness.dark,
      );
    });
  });

  group('2. ログインユーザーの情報', () {
    testWidgets('身元(担当者 ID・管理者か)と表示用の名前を、画面が取り出せる', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('sato', 'sato-pass');
      final identity = h.container.read(userIdentitySourceProvider).current;
      expect(identity?.staffId, 'SATO');
      expect(identity?.isAdmin, isFalse);
      final summary = h.container.read(userSummaryProvider);
      // 画面(枠)に出る名前・役割
      // ignore: avoid_print
      print('userSummary: name=${summary?.name} role=${summary?.role}');
      // 氏名は、認証サーバーの氏名(ユーザーIDではない)。所属は GraphQL に接続しないので空
      expect(summary?.name, '佐藤');
      expect(find.text('佐藤'), findsWidgets);

      // 設定画面に、ユーザーパネル(大)で名前が出る
      await h.go('/settings');
      expect(
        find.byType(UserContainer),
        findsNWidgets(2),
        reason: '枠(中)と設定画面(大)',
      );
      expect(find.text('佐藤'), findsWidgets);
    });

    testWidgets('管理者でログインすると、管理者として身元に出る', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('admin', 'admin-pass');
      expect(
        h.container.read(userIdentitySourceProvider).current?.isAdmin,
        isTrue,
      );
    });
  });

  group('5. ファイルのアップロード(仮想)', () {
    testWidgets('アップロードすると版が増え、履歴に出て、ダウンロードできる', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('admin', 'admin-pass');
      await h.go(AuthFilesPaths.files);
      await tester.enterText(find.byType(TextField).at(0), 'doc1');
      for (var i = 0; i < 2; i++) {
        await tester.tap(find.text('アップロード'));
        await tester.runAsync(
          () => Future<void>.delayed(const Duration(milliseconds: 50)),
        );
        await h.settle();
      }
      expect(h.server.files.map((f) => f.revision), [1, 2]);
      expect(find.textContaining('アップロードしました(版 2)'), findsOneWidget);
      expect(find.text('sample.txt'), findsWidgets);

      await tester.tap(find.byIcon(Icons.download).first);
      await tester.runAsync(
        () => Future<void>.delayed(const Duration(milliseconds: 50)),
      );
      await h.settle();
      expect(h.saver.saved.keys, contains('sample.txt'));
      expect(
        h.saver.saved['sample.txt']!.length,
        12,
        reason: '内容(virtual file)が戻る',
      );
    });

    testWidgets('不正なファイル ID は、通信しないで入力エラー', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('admin', 'admin-pass');
      await h.go(AuthFilesPaths.files);
      await tester.enterText(find.byType(TextField).at(0), '日本語 ID');
      await tester.tap(find.text('アップロード'));
      await h.settle();
      expect(h.server.files, isEmpty);
    });

    testWidgets('接続断のときは、エラーを表示して落ちない', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('admin', 'admin-pass');
      await h.go(AuthFilesPaths.files);
      await tester.enterText(find.byType(TextField).at(0), 'doc1');
      h.server.setOffline(true);
      await tester.tap(find.text('アップロード'));
      await tester.runAsync(
        () => Future<void>.delayed(const Duration(milliseconds: 50)),
      );
      await h.settle();
      expect(h.server.files, isEmpty);
      expect(tester.takeException(), isNull);
    });
  });

  group('7. 権限とメニュー', () {
    testWidgets('一般ユーザー(受注だけ許可)は、許可されたページだけがメニューに出る', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('sato', 'sato-pass');
      final ref = _refOf(tester);
      final access = await h.container.read(
        menuAccessProvider('/dashboard').future,
      );
      final shown = [
        for (final e in _menuEntries(ref))
          if (access.allows(_pathOf(e.destination) ?? '')) e,
      ];
      expect(shown, isNotEmpty);
      for (final e in shown) {
        expect(
          {'/e/order', '/e/orderdetail'},
          contains(_pathOf(e.destination)),
          reason: '${e.groupLabel}/${e.label} は許可されていないのに出ている',
        );
      }
    });

    testWidgets('許可されていないページへ、URL で直接移動すると(現状の記録)', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('sato', 'sato-pass');
      // URL で直接開くと、権限なしの画面へ
      await h.go('/e/item');
      expect(h.location, '/access-denied');
      await h.go('/e/item/new');
      expect(h.location, '/access-denied');
      await h.go('/auth/admin/signups');
      expect(h.location, '/access-denied', reason: '管理者専用');
      // 許可されたページ・選択の画面・ダッシュボードは開く
      await h.go('/e/order');
      expect(h.location, '/e/order');
      await h.go('/e/item/pick');
      expect(h.location, '/e/item/pick');
      await h.go('/dashboard');
      expect(h.location, '/dashboard');
      // 画面には、トップ(ダッシュボード)へ戻るボタンだけがある
      await h.go('/e/item');
      expect(find.text('ダッシュボードへ'), findsOneWidget);
      expect(find.byType(FilledButton), findsOneWidget);
      await tester.tap(find.text('ダッシュボードへ'));
      await tester.runAsync(
        () => Future<void>.delayed(const Duration(milliseconds: 50)),
      );
      await h.settle();
      expect(h.location, '/dashboard');
    });

    testWidgets('メニュー・リンクからの遷移は、遷移の前に止めて、いまの画面にとどまる', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('sato', 'sato-pass');
      await h.go('/e/order');
      await h.container
          .read(commandBusProvider)
          .execute(TopLevelDestination(EntityListDestination('item')));
      await h.settle();
      expect(h.location, '/e/order', reason: '許可の無いページへは遷移しない');
      await h.go('/settings');
      await h.container
          .read(commandBusProvider)
          .execute(TopLevelDestination(EntityListDestination('order')));
      await h.settle();
      expect(h.location, '/e/order', reason: '許可されたページへは遷移できる');
    });
  });

  group('サイドメニューの選択中の強調', () {
    testWidgets('いまのページの項目が強調され(編集画面でも台帳の項目)、別のページでは外れる', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1600, 1000));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final h = await ExampleHarness.start(tester);
      await h.login('admin', 'admin-pass');
      h.container.read(sidebarIconOnlyProvider.notifier).set(false);
      await h.settle();
      // この画面の大きさでは、サイドバーはアイコンだけ(選択中は、アイコンが主色)。広い画面は、選択中の行の背景(ListTile.selected)
      Color primary() =>
          Theme.of(tester.element(find.byType(AppMainFrame))).colorScheme.primary;
      int selectedCount() =>
          tester
              .widgetList<ListTile>(find.byType(ListTile))
              .where((t) => t.selected)
              .length +
          tester
              .widgetList<IconButton>(find.byType(IconButton))
              .where((b) => b.color == primary())
              .length;
      await h.go('/dashboard');
      expect(selectedCount(), 1, reason: 'ダッシュボード');
      await h.go('/e/company');
      expect(selectedCount(), 1, reason: '台帳の項目');
      await h.go('/e/company/new');
      expect(selectedCount(), 1, reason: '新規の画面でも、同じ台帳の項目');
      await h.go('/settings');
      expect(selectedCount(), 0, reason: '設定は、メニューの項目ではない');
    });
  });

  group('11. サイドメニューの項目', () {
    testWidgets('すべての項目が解決でき、重複が無く、開くとエラー画面にならない', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('admin', 'admin-pass');
      final entries = _menuEntries(_refOf(tester));
      expect(entries, isNotEmpty);

      final seen = <String>{};
      final failures = <String>[];
      for (final e in entries) {
        final path = _pathOf(e.destination);
        if (path == null) {
          failures.add(
            'パスを求められない(メニューに出ない): ${e.groupLabel}/${e.label} ${e.destination.runtimeType}',
          );
          continue;
        }
        // 配送区分は、営業・購買のどちらのメニューからも開く(仕様)
        if (!seen.add(path) && path != '/shipping-kinds')
          failures.add('重複: ${e.groupLabel}/${e.label} → $path');
        await h.go(path);
        if (h.location.startsWith('/error')) {
          failures.add('エラー画面: ${e.groupLabel}/${e.label} → $path');
        }
        expect(tester.takeException(), isNull, reason: path);
      }
      // ignore: avoid_print
      print('メニュー項目: ${entries.length} 件');
      expect(failures, isEmpty, reason: failures.join('\n'));
    });

    testWidgets('メニューに出ないルート(画面はあるが入口が無いもの)の記録', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('admin', 'admin-pass');
      final Set<String?> menuPaths = {
        for (final e in _menuEntries(_refOf(tester))) _pathOf(e.destination),
      };
      final routes = <String>{};
      void walk(RouteBase r, String base) {
        if (r is GoRoute) {
          final p = r.path.startsWith('/') ? r.path : '$base/${r.path}';
          routes.add(p);
          for (final c in r.routes) {
            walk(c, p);
          }
        } else {
          for (final c in r.routes) {
            walk(c, base);
          }
        }
      }

      for (final m in [...featureModules, ...standaloneFeatureModules]) {
        for (final r in m.routes) {
          walk(r, '');
        }
      }
      // 台帳の編集・新規・選択(`/:id`・`/new`・`/pick`)と、メニューに出さない操作の実体(`/e/act*`)は除く
      final notInMenu =
          routes
              .where(
                (p) =>
                    !menuPaths.contains(p) &&
                    !p.endsWith('/:id') &&
                    !p.endsWith('/new') &&
                    !p.endsWith('/pick') &&
                    !p.startsWith('/e/act'),
              )
              .toList()
            ..sort();
      // ignore: avoid_print
      print('メニューに出ないルート(${notInMenu.length} 件): ${notInMenu.join(', ')}');
    });
  });
}

// ファイルの項目(`FieldKind.file`)。実体は PocketBase(仮想)にあり、DB には ID だけを持つ。
void fileFieldTests() {
  group('ファイルの項目(点検ファイル)', () {
    testWidgets(
      '編集で選ぶだけでは PocketBase に上げず、名前を押すと選んだファイルを保存できる(上げるのは保存の途中で、取得元が DB の ID で行う)',
      (tester) async {
        final h = await ExampleHarness.start(tester);
        await h.login('admin', 'admin-pass');
        await h.go('/e/inspectionfile/cda6a7cd-0000-4000-8000-000000000001');
        expect(find.byKey(const ValueKey('fileUpload:file')), findsOneWidget);
        expect(find.text('潤滑油量_20261015.jpg'), findsOneWidget);

        await tester.tap(find.byKey(const ValueKey('fileUpload:file')));
        await tester.runAsync(
          () => Future<void>.delayed(const Duration(milliseconds: 80)),
        );
        await h.settle();
        // DB の ID(trans_file_id)は保存のときに決まる。選んだだけの間は、保存先へ上げない
        expect(h.server.files, isEmpty, reason: '選んだだけでは上げない');
        expect(find.text('sample.txt'), findsOneWidget);

        // 名前を押すと、預かっているバイナリを保存する
        await tester.tap(find.byKey(const ValueKey('fileName:file')));
        await tester.runAsync(
          () => Future<void>.delayed(const Duration(milliseconds: 80)),
        );
        await h.settle();
        expect(h.saver.saved.keys, contains('sample.txt'));
      },
    );

    testWidgets('PocketBase に接続できなくても、ファイルを選べる(上げるのは保存のとき)', (tester) async {
      final h = await ExampleHarness.start(tester);
      await h.login('admin', 'admin-pass');
      await h.go('/e/inspectionfile/cda6a7cd-0000-4000-8000-000000000001');
      h.server.setOffline(true);
      await tester.tap(find.byKey(const ValueKey('fileUpload:file')));
      await tester.runAsync(
        () => Future<void>.delayed(const Duration(milliseconds: 80)),
      );
      await h.settle();
      expect(h.server.files, isEmpty);
      expect(find.text('sample.txt'), findsOneWidget);
      expect(find.text('アップロードに失敗しました'), findsNothing);
    });
  });
}
