import 'package:auth_files_example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

// 波紋(InkSparkle)のシェーダーを使わないテーマ。テストでシェーダーの読み込みを避ける。
ThemeData _plainTheme(Object _) =>
    ThemeData(splashFactory: NoSplash.splashFactory);

Future<void> _open(WidgetTester tester) async {
  await tester.binding.setSurfaceSize(const Size(1200, 900));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    ExampleApp(logger: const NoopLoggerProvider(), themeOf: _plainTheme),
  );
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('example が起動し、ログイン画面を開ける', (tester) async {
    await _open(tester);
    expect(find.text('認証と共有ファイル (example)'), findsOneWidget);
    await tester.tap(find.text('ログイン'));
    await tester.pumpAndSettle();
    expect(find.text('生産管理にサインイン'), findsOneWidget);
    expect(find.text('ユーザーIDまたはEメール'), findsWidgets);
  });

  // 画面名 -> 開いたあとに見える見出し(画面案と同じ文言)
  const screens = {
    'ログアウト(確認から)': 'ログアウトしますか',
    'ログアウト(セッション切れ)': 'セッションが切れました',
    '新規登録': '新規登録',
    'パスワードを忘れた': 'パスワードを忘れた',
    '認証コードの入力': '認証コード',
    '新しいパスワード': '認証コード', // コードが無いと認証コードの入力へ戻る
    '共有ファイル': '共有ファイル',
    '新規登録の管理': '登録申請',
    '再設定依頼の管理': '再設定',
  };
  for (final entry in screens.entries) {
    testWidgets('${entry.key} を開ける', (tester) async {
      await _open(tester);
      await tester.tap(find.text(entry.key));
      await tester.pumpAndSettle();
      expect(find.text('認証と共有ファイル (example)'), findsNothing);
      expect(find.textContaining(entry.value), findsWidgets);
    });
  }

  testWidgets('見本のログイン: パスワードが違えば留まり、合えばダッシュボードへ進む', (tester) async {
    await _open(tester);
    await tester.tap(find.text('ログイン'));
    await tester.pumpAndSettle();
    final fields = find.byType(TextField);
    await tester.enterText(fields.at(0), 'suzuki.ichiro');
    await tester.enterText(fields.at(1), 'wrong');
    await tester.tap(find.widgetWithText(FilledButton, 'ログイン'));
    await tester.pumpAndSettle();
    expect(find.text('生産管理にサインイン'), findsOneWidget);

    await tester.enterText(fields.at(1), examplePassword);
    await tester.tap(find.widgetWithText(FilledButton, 'ログイン'));
    await tester.pumpAndSettle();
    expect(find.text('ログインしました'), findsOneWidget);
  });
}
