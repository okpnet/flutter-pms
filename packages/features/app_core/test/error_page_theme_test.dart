import 'package:app_core/app_core.dart';
import 'package:app_core/app_core_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

void main() {
  /// 画面案(`tools/open-design` の `#/error`)の構成と、既定テーマ(theme_lib)の配色で描かれる。
  Future<void> pumpError(WidgetTester tester, {ThemeMode mode = .light}) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      FeatureHost(
        title: 'AppCore',
        modules: const [AppCoreModule()],
        entries: const [
          FeatureHostEntry('エラー', ErrorDestination(message: '接続できません')),
        ],
        overrides: [
          themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
        ],
        themeOf: (ref) => ref.watch(lightThemeProvider),
        darkThemeOf: (ref) => ref.watch(darkThemeProvider),
        themeModeOf: (ref) => mode,
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('エラー'));
    await tester.pumpAndSettle();
  }

  BoxDecoration circleDecoration(WidgetTester tester) {
    final circle = tester
        .widgetList<Container>(find.byType(Container))
        .firstWhere(
          (c) =>
              c.decoration is BoxDecoration &&
              (c.decoration! as BoxDecoration).shape == BoxShape.circle,
        );
    return circle.decoration! as BoxDecoration;
  }

  testWidgets('エラー画面: 丸いアイコンは danger-soft の地、背景は画面案の bg(ライト)', (tester) async {
    await pumpError(tester);
    expect(find.text('アプリケーションでエラーが発生しました'), findsOneWidget);
    expect(find.text('接続できません'), findsOneWidget);
    expect(circleDecoration(tester).color, const Color(0xFFFBE3E1));
    final icon = tester.widget<Icon>(find.byIcon(Icons.error_outline));
    expect(icon.color, const Color(0xFFB3261E));
    expect(
      Theme.of(
        tester.element(find.byType(Scaffold).first),
      ).scaffoldBackgroundColor,
      const Color(0xFFF2F5F6),
    );
  });

  testWidgets('エラー画面: ダークでは、独立に調整したダークの配色', (tester) async {
    await pumpError(tester, mode: ThemeMode.dark);
    expect(circleDecoration(tester).color, const Color(0xFF4A1F1D));
    final icon = tester.widget<Icon>(find.byIcon(Icons.error_outline));
    expect(icon.color, const Color(0xFFFF8A80));
  });
}
