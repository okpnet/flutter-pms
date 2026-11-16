// 評価 3(ページ遷移)・4(セッション切れ)・9(接続できないときのエラー)。
import 'package:auth_files/auth_files.dart' show AuthFilesPaths;
import 'package:flutter_test/flutter_test.dart';

import 'support/example_harness.dart';

void main() {
  backStackTests();
  testWidgets('起動直後はログインへ。ログインしていないと、どのページもログインへ向く', (tester) async {
    final h = await ExampleHarness.start(tester);
    expect(h.location, AuthFilesPaths.login);

    for (final path in ['/dashboard', '/e/order', '/settings', '/auth/files']) {
      await h.go(path);
      expect(h.location, AuthFilesPaths.login, reason: '$path は未ログインでは開けない');
    }
  });

  testWidgets('ログインするとダッシュボードへ。ログイン後も、ログイン画面を開いたままにしない', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    expect(h.location, '/dashboard');

    // ログイン済みでログインのパスを開く(戻る操作・URL の直接指定)
    await h.go(AuthFilesPaths.login);
    // 現状の記録(評価結果)。ログイン済みなのにログイン画面が開く場合は、指摘になる
    // ignore: avoid_print
    print('ログイン済みでログインのパスを開いたとき: ${h.location}');
  });

  testWidgets('存在しないパスは、エラー画面へ', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    await h.go('/no/such/page');
    expect(h.location, startsWith('/error'));
  });

  testWidgets('間違ったパスワードは、ログインできずログイン画面のまま', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'wrong');
    expect(h.location, AuthFilesPaths.login);
    expect(find.text('ユーザーIDまたはパスワードが正しくありません。'), findsOneWidget);
  });

  testWidgets('セッション切れ: サーバー側で無効にすると、次のページ移動で、切れたことを案内するページへ', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    expect(h.location, '/dashboard');

    h.server.expireSession();
    // 確認は、ページの切り替えで行う(30 秒以内は問い合わせを省くため、時間を進める)
    await tester.pump(const Duration(seconds: 31));
    await h.go('/settings');
    expect(h.location, AuthFilesPaths.logoutWith(sessionExpired: true));
  });

  testWidgets('接続断: ログインはエラーを表示し、画面は落ちない', (tester) async {
    final h = await ExampleHarness.start(tester);
    h.server.setOffline(true);
    await h.login('admin', 'admin-pass');
    expect(h.location, AuthFilesPaths.login);
    expect(find.textContaining('サーバーに接続できませんでした'), findsOneWidget);
  });

  testWidgets('接続断: ログイン済みで通信できなくなっても、ログアウトにはしない(不明として扱う)', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    h.server.setOffline(true);
    await tester.pump(const Duration(seconds: 31));
    await h.go('/settings');
    expect(h.location, '/settings');
  });

  testWidgets('メンテナンス中は、どのページもメンテナンスページ。終わると戻る', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    h.server.setMaintenance(true);
    await tester.pump(const Duration(seconds: 31));
    await h.go('/settings');
    expect(h.location, '/maintenance');
    expect(find.text('メンテナンス中です'), findsOneWidget);

    h.server.setMaintenance(false);
    await tester.tap(find.textContaining('再確認'));
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
    await h.settle();
    expect(h.location, isNot('/maintenance'));
  });
}

// 評価 3 の追加: ログイン後に戻る操作でログイン画面へ戻れるか(異常な遷移)
void backStackTests() {
  testWidgets('ログイン後、戻る操作でログイン画面へ戻れてしまわないか', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    expect(h.location, '/dashboard');
    // ignore: avoid_print
    print('ログイン後に戻れる(canPop): ${h.router.canPop()}');
    if (h.router.canPop()) {
      h.router.pop();
      await h.settle();
      // ignore: avoid_print
      print('戻ったあとのパス: ${h.location}');
    }
  });
}
