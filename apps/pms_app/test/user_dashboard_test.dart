import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pms_app/services/dashboard/dashboard_overrides.dart';
import 'package:settings_keeper/settings_keeper.dart';

Future<void> _settle() =>
    Future<void>.delayed(const Duration(milliseconds: 30));

void main() {
  test('ユーザーごとに配置を持ち、ログインしたユーザーの配置を読み出す', () async {
    final storage = InMemorySettingsStorage();
    ProviderContainer container() {
      final c = ProviderContainer(
        overrides: [
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          settingsStorageProvider.overrideWithValue(storage),
          ...dashboardOverrides(),
        ],
      );
      addTearDown(c.dispose);
      c.read(userDashboardProvider);
      return c;
    }

    final first = container();
    first
        .read(userSummaryProvider.notifier)
        .set(const UserSummary(name: 'yamada'));
    await _settle();
    // 保存が無いユーザーは初期の配置
    expect(
      first.read(dashboardContainersProvider).length,
      defaultDashboardLayout().length,
    );
    // yamada が配置を変える(先頭を削除)
    final head = first.read(dashboardContainersProvider).first;
    await first
        .read(dashboardContainersProvider.notifier)
        .removeContainer(head.id);

    // 別のユーザーは影響を受けず、初期の配置
    first
        .read(userSummaryProvider.notifier)
        .set(const UserSummary(name: 'tanaka'));
    await _settle();
    expect(
      first.read(dashboardContainersProvider).length,
      defaultDashboardLayout().length,
    );

    // 次の起動で yamada が入ると、変えた配置が戻る
    final second = container();
    second
        .read(userSummaryProvider.notifier)
        .set(const UserSummary(name: 'yamada'));
    await _settle();
    expect(
      second.read(dashboardContainersProvider).length,
      defaultDashboardLayout().length - 1,
    );
  });
}
