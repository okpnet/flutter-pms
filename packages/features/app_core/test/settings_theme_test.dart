import 'package:app_core/app_core.dart';
import 'package:app_core/app_core_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';
import 'package:theme_lib/theme_lib.dart';

/// 外部のテーマ(ocean など)の代役。取り込んだものとして登録する。
final _ocean = ThemeDefinition.parse(
  '{"id":"ocean","name":"Ocean","light":{"seedColor":"#00697A"}}',
);

ProviderContainer _container(SettingsStorage storage) {
  final c = ProviderContainer(
    overrides: [
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
      settingsStorageProvider.overrideWithValue(storage),
    ],
  );
  addTearDown(c.dispose);
  c.read(themeManagerProvider.notifier).register(_ocean);
  return c;
}

Future<void> _settle() =>
    Future<void>.delayed(const Duration(milliseconds: 20));

void main() {
  group('保存する形', () {
    test('テーマの識別子と表示モードを書き、読み戻せる。壊れた値は標準', () {
      const model = UserSettingsModel(themeId: 'ocean', themeMode: 'dark');
      expect(UserSettingsModel.fromJson(model.toJson()), model);
      final broken = UserSettingsModel.fromJson({
        'themeId': 5,
        'themeMode': 'sepia',
      });
      expect(broken.themeId, isNull);
      expect(broken.themeMode, 'system');
      // 古い保存(テーマの項目が無い)も読める
      expect(UserSettingsModel.fromJson({}).themeMode, 'system');
    });
  });

  group('保存と復元', () {
    test('変更したテーマと表示モードは保存され、次の起動で復元される', () async {
      final storage = InMemorySettingsStorage();
      final first = _container(storage);
      first.read(userSettingsAutoSaveProvider);
      first.read(themeManagerProvider.notifier)
        ..select('ocean')
        ..setMode(ThemeMode.dark);
      await _settle();

      final second = _container(storage);
      await second
          .read(settingsKeeperProvider)
          .restore(second.read(userSettingsOriginatorProvider));
      final state = second.read(themeManagerProvider);
      expect(state.activeId, 'ocean');
      expect(state.mode, ThemeMode.dark);
    });

    test('保存したテーマが登録されていなければ、既定のまま(表示モードだけ復元)', () async {
      final storage = InMemorySettingsStorage();
      final first = _container(storage);
      first.read(userSettingsAutoSaveProvider);
      first.read(themeManagerProvider.notifier)
        ..select('ocean')
        ..setMode(ThemeMode.light);
      await _settle();

      // 追加のテーマを取り込んでいない起動
      final second = ProviderContainer(
        overrides: [
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
          settingsStorageProvider.overrideWithValue(storage),
        ],
      );
      addTearDown(second.dispose);
      await second
          .read(settingsKeeperProvider)
          .restore(second.read(userSettingsOriginatorProvider));
      final state = second.read(themeManagerProvider);
      expect(state.activeId, 'default');
      expect(state.mode, ThemeMode.light);
    });
  });

  group('設定画面', () {
    Future<ProviderContainer> open(WidgetTester tester) async {
      await tester.binding.setSurfaceSize(const Size(900, 2200));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(
        FeatureHost(
          title: 'AppCore',
          modules: const [AppCoreModule()],
          entries: const [FeatureHostEntry('設定', SettingsDestination())],
          overrides: [
            themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
          ],
          themeOf: (ref) => ref.watch(lightThemeProvider),
          darkThemeOf: (ref) => ref.watch(darkThemeProvider),
          themeModeOf: (ref) => ref.watch(themeModeProvider),
        ),
      );
      await tester.pumpAndSettle();
      final container = ProviderScope.containerOf(
        tester.element(find.byType(Scaffold).first),
      );
      container.read(themeManagerProvider.notifier).register(_ocean);
      await tester.tap(find.text('設定'));
      await tester.pumpAndSettle();
      return container;
    }

    testWidgets('登録されているテーマが並び、選ぶと即時に切り替わる', (tester) async {
      final container = await open(tester);
      expect(find.text('テーマ'), findsOneWidget);
      expect(find.text('Default'), findsOneWidget);
      expect(find.text('Ocean'), findsOneWidget);
      expect(container.read(themeManagerProvider).activeId, 'default');

      await tester.tap(find.text('Ocean'));
      await tester.pumpAndSettle();
      expect(container.read(themeManagerProvider).activeId, 'ocean');
      expect(
        container.read(lightThemeProvider).colorScheme.primary,
        isNot(const Color(0xFF0B6B6F)),
      );
    });

    testWidgets('表示モード(システム・ライト・ダーク)を切り替えられる', (tester) async {
      final container = await open(tester);
      expect(container.read(themeManagerProvider).mode, ThemeMode.system);
      await tester.tap(find.text('ダーク'));
      await tester.pumpAndSettle();
      expect(container.read(themeManagerProvider).mode, ThemeMode.dark);
      await tester.tap(find.text('ライト'));
      await tester.pumpAndSettle();
      expect(container.read(themeManagerProvider).mode, ThemeMode.light);
    });
  });

  testWidgets('ブート画面は画面案の構成(進行中・見出し・説明・進行バー)', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      FeatureHost(
        title: 'AppCore',
        modules: const [AppCoreModule()],
        entries: const [FeatureHostEntry('ブート', BootDestination())],
        overrides: [
          themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
        ],
        themeOf: (ref) => ref.watch(lightThemeProvider),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('ブート'));
    await tester.pump(const Duration(milliseconds: 100));
    expect(find.text('生産管理を起動しています…'), findsOneWidget);
    expect(find.text('データと設定を読み込んでいます。'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });
}
