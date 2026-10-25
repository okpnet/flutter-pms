import 'dart:ui';

import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';

ProviderContainer _container(SettingsStorage storage) {
  final container = ProviderContainer(
    overrides: [
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      settingsStorageProvider.overrideWithValue(storage),
      userSummaryProvider.overrideWith(
        () => UserSummaryNotifier(const UserSummary(name: '標準', role: '部')),
      ),
    ],
  );
  addTearDown(container.dispose);
  return container;
}

Future<void> _settle() =>
    Future<void>.delayed(const Duration(milliseconds: 20));

void main() {
  test('変更した設定は保存され、次の起動で復元される', () async {
    final storage = InMemorySettingsStorage();
    final first = _container(storage);
    first.read(userSettingsAutoSaveProvider);
    first.read(localeProvider.notifier).set(const Locale('en'));
    first.read(sidebarIconOnlyProvider.notifier).set(true);
    first
        .read(userSummaryProvider.notifier)
        .set(const UserSummary(name: '田中', role: '品質'));
    await _settle();

    final second = _container(storage);
    final restored = await second
        .read(settingsKeeperProvider)
        .restore(second.read(userSettingsOriginatorProvider));
    expect(restored, isTrue);
    expect(second.read(localeProvider).languageCode, 'en');
    expect(second.read(localeFollowsSystemProvider), isFalse);
    expect(second.read(sidebarIconOnlyProvider), isTrue);
    expect(second.read(userSummaryProvider)?.name, '田中');
    expect(second.read(userSummaryProvider)?.role, '品質');
  });

  test('保存が無いときは標準のまま', () async {
    final container = _container(InMemorySettingsStorage());
    final restored = await container
        .read(settingsKeeperProvider)
        .restore(container.read(userSettingsOriginatorProvider));
    expect(restored, isFalse);
    expect(container.read(userSummaryProvider)?.name, '標準');
    expect(container.read(localeFollowsSystemProvider), isTrue);
  });

  test('ログアウトではユーザーを保存しない', () async {
    final storage = InMemorySettingsStorage();
    final container = _container(storage);
    container.read(userSettingsAutoSaveProvider);
    container.read(sidebarIconOnlyProvider.notifier).set(true);
    container.read(userSummaryProvider.notifier).logout();
    await _settle();
    final memento = await storage.read(UserSettingsOriginator.key);
    expect(memento?.values['userName'], '標準');
    expect(memento?.values['sidebarIconOnly'], isTrue);
  });
}
