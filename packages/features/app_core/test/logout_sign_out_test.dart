import 'package:app_core/app_core.dart';
import 'package:app_core/app_core_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';

/// 波紋のシェーダーを使わないテーマ(テストでシェーダーの読み込みを避ける)。
ThemeData _plain(WidgetRef ref) =>
    ThemeData(splashFactory: NoSplash.splashFactory);

Future<void> _open(WidgetTester tester, List<Override> overrides) async {
  await tester.binding.setSurfaceSize(const Size(1000, 800));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    FeatureHost(
      title: 'AppCore',
      modules: const [AppCoreModule()],
      entries: const [FeatureHostEntry('ログアウト', LogoutDestination())],
      overrides: overrides,
      themeOf: _plain,
    ),
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text('ログアウト'));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('ログアウト画面を開くと、ログアウトの実体を1回だけ実行する', (tester) async {
    var calls = 0;
    await _open(tester, [
      signOutProvider.overrideWith(
        (ref) =>
            () async => calls++,
      ),
    ]);
    expect(find.text('ログアウトしました。'), findsOneWidget);
    expect(calls, 1);
    await tester.pump(const Duration(seconds: 1));
    expect(calls, 1, reason: '再描画では実行しない');
  });

  testWidgets('実体が失敗しても、画面は表示される(ログアウトで止めない)', (tester) async {
    await _open(tester, [
      signOutProvider.overrideWith(
        (ref) =>
            () async => throw StateError('x'),
      ),
    ]);
    expect(find.text('ログアウトしました。'), findsOneWidget);
  });

  testWidgets('既定(差し込み無し)は何もせず、仮のログインで標準のユーザーに戻す', (tester) async {
    await _open(tester, const []);
    expect(find.text('ログインする(仮)'), findsOneWidget);
    expect(find.text('ログイン画面へ'), findsNothing);
  });

  testWidgets('ログイン画面の遷移先があれば、ボタンはそこへ進む', (tester) async {
    // ログイン画面の代わりに、見分けやすいエラー画面を遷移先にする。
    await _open(tester, [
      signInDestinationProvider.overrideWithValue(const ErrorDestination()),
    ]);
    expect(find.text('ログインする(仮)'), findsNothing);
    await tester.tap(find.text('ログイン画面へ'));
    await tester.pumpAndSettle();
    expect(find.text('アプリケーションでエラーが発生しました'), findsOneWidget);
    expect(find.text('ログアウトしました。'), findsNothing);
  });
}
