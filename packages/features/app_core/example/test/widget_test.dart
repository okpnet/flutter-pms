import 'package:app_core_example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

void main() {
  Future<void> open(WidgetTester tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ExampleApp(
        logger: const NoopLoggerProvider(),
        storage: await seededStorage(),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('AppCore (example)'), findsOneWidget);
  }

  Future<void> go(WidgetTester tester, String label) async {
    await tester.tap(find.text(label));
    await tester.pumpAndSettle();
  }

  Future<void> back(WidgetTester tester) async {
    tester.state<NavigatorState>(find.byType(Navigator).first).pop();
    await tester.pumpAndSettle();
  }

  testWidgets('ブート画面は読み込み中を出す', (tester) async {
    await open(tester);
    await tester.tap(find.text('ブート(読み込み中)'));
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('読み込み中...'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('ダッシュボードは閲覧と編集を切り替えられ、件数の元が無くても開く', (tester) async {
    await open(tester);
    await go(tester, 'ダッシュボード');
    expect(find.text('当日出荷'), findsWidgets);
    await tester.tap(find.byKey(const ValueKey('dashboardEdit')));
    await tester.pumpAndSettle();
    expect(find.text('完了'), findsOneWidget);
    await back(tester);

    await go(tester, '状態の切り替え');
    await tester.tap(find.byKey(const ValueKey('hasSources')));
    await tester.pumpAndSettle();
    await back(tester);
    await go(tester, 'ダッシュボード');
    expect(tester.takeException(), isNull);
    expect(find.text('配置を編集'), findsOneWidget);
  });

  testWidgets('エラー画面は内容の有無で表示が変わる', (tester) async {
    await open(tester);
    await go(tester, 'エラー(内容なし)');
    expect(find.text('アプリケーションでエラーが発生しました'), findsOneWidget);
    expect(find.text('サーバーに接続できません(example)'), findsNothing);
    await back(tester);
    await go(tester, 'エラー(内容あり)');
    expect(find.text('サーバーに接続できません(example)'), findsOneWidget);
  });

  testWidgets('設定画面は使用言語・画面・ユーザー・バージョンを出す', (tester) async {
    await open(tester);
    await go(tester, '設定');
    expect(find.text('使用言語'), findsOneWidget);
    expect(find.text('サイドバーをアイコンだけにする'), findsOneWidget);
    expect(find.text('バージョン情報'), findsOneWidget);
    await tester.tap(find.text('English'));
    await tester.pumpAndSettle();
    expect(find.text('Settings'), findsWidgets);
  });

  testWidgets('ログアウト画面は、失敗しても表示し、ログイン先の有無でボタンが変わる', (tester) async {
    await open(tester);
    await go(tester, 'ログアウト');
    expect(find.text('ログアウトしました。'), findsOneWidget);
    expect(find.text('ログインする(仮)'), findsOneWidget);
    await back(tester);

    await go(tester, '状態の切り替え');
    await tester.tap(find.byKey(const ValueKey('signOutFails')));
    await tester.tap(find.byKey(const ValueKey('hasSignIn')));
    await tester.pumpAndSettle();
    await back(tester);
    await go(tester, 'ログアウト');
    expect(find.text('ログアウトしました。'), findsOneWidget);
    expect(find.text('ログイン画面へ'), findsOneWidget);
  });
}
