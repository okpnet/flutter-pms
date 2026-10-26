import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:app_core/app_core_api.dart';
import 'package:pms_app/contents/_models/error/error.dart';
import 'package:pms_app/imports.dart';
import 'package:pms_app/services/services.dart';

void main() {
  test('機能の遷移先がルーターのパスに解決される', () {
    final container = ProviderContainer(
      overrides: [
        loggerProvider.overrideWithValue(const NoopLoggerProvider()),
        themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
        commandBusProvider.overrideWith(createFeatureCommandBus),
      ],
    );
    addTearDown(container.dispose);

    // 配線できる(ハンドラ登録・ナビゲーターの生成で例外にならない)
    expect(container.read(commandBusProvider), isNotNull);

    final navigator = GoRouterDestinationNavigator(
      router: container.read(rootRouterProvider),
      modules: featureModules,
    );
    expect(
      navigator.resolve(const EntityListDestination('item')),
      '/e/item',
    );
    expect(navigator.resolve(const SettingsDestination()), '/settings');
    expect(navigator.resolve(const LogoutDestination()), '/logout');
    expect(
      errorLocationOf(AppError(.standardTimeRelated)),
      startsWith('/error?message='),
    );
  });
}
