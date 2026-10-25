import 'package:app_core/app_core.dart';
import 'package:app_core/app_core_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const module = AppCoreModule();

  test('見本の遷移先はすべてパスに変換できる(登録漏れ検出)', () {
    for (final d in appCoreDestinationSamples) {
      expect(module.locationOf(d), isNotNull, reason: '$d');
    }
    expect(module.locationOf(const SettingsDestination()), '/settings');
    expect(module.locationOf(const ErrorDestination()), '/error');
    expect(
      module.locationOf(const ErrorDestination(message: 'a b')),
      '/error?message=a+b',
    );
  });

  Future<ProviderContainer> pumpHost(
    WidgetTester tester,
    List<FeatureHostEntry> entries,
  ) async {
    late ProviderContainer container;
    await tester.pumpWidget(
      FeatureHost(
        title: 'AppCore',
        modules: const [AppCoreModule()],
        entries: entries,
        overrides: const [],
      ),
    );
    await tester.pumpAndSettle();
    container = ProviderScope.containerOf(
      tester.element(find.byType(Scaffold).first),
    );
    return container;
  }

  testWidgets('設定: 使用言語を切り替えると localeProvider が変わる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final container = await pumpHost(tester, const [
      FeatureHostEntry('設定', SettingsDestination()),
    ]);
    await tester.tap(find.text('設定'));
    await tester.pumpAndSettle();
    expect(find.text('使用言語'), findsOneWidget);
    expect(find.text('アプリケーションのバージョン'), findsOneWidget);

    await tester.tap(find.text('English'));
    await tester.pumpAndSettle();
    expect(container.read(localeProvider).languageCode, 'en');
    // 文字列も英語になる
    expect(find.text('Language'), findsOneWidget);

    await tester.tap(find.text('日本語'));
    await tester.pumpAndSettle();
    expect(container.read(localeProvider).languageCode, 'ja');
  });

  testWidgets('設定: サイドバーをアイコンだけにする設定を切り替えられる', (tester) async {
    final container = await pumpHost(tester, const [
      FeatureHostEntry('設定', SettingsDestination()),
    ]);
    await tester.tap(find.text('設定'));
    await tester.pumpAndSettle();
    expect(container.read(sidebarIconOnlyProvider), isFalse);
    await tester.tap(find.byType(Switch));
    await tester.pumpAndSettle();
    expect(container.read(sidebarIconOnlyProvider), isTrue);
  });

  testWidgets('エラー画面: 内容を表示する', (tester) async {
    await pumpHost(tester, const [
      FeatureHostEntry('エラー', ErrorDestination(message: '接続できません')),
    ]);
    await tester.tap(find.text('エラー'));
    await tester.pumpAndSettle();
    expect(find.text('アプリケーションでエラーが発生しました'), findsOneWidget);
    expect(find.text('接続できません'), findsOneWidget);
  });
}
