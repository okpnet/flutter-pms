import 'dart:convert';

import 'package:backstage/backstage.dart';
import 'package:backstage/backstage_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pms_app/imports.dart';
import 'package:pms_app/services/router/auth_redirect.dart';
import 'package:pms_app/services/services.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';

void main() {
  test('裏設定の遷移先は、枠の外のルートのパスに解決される(認証前のページとして開ける)', () {
    final container = ProviderContainer(
      overrides: [
        loggerProvider.overrideWithValue(const NoopLoggerProvider()),
        themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
        commandBusProvider.overrideWith(createFeatureCommandBus),
      ],
    );
    addTearDown(container.dispose);
    final navigator = GoRouterDestinationNavigator(
      router: container.read(rootRouterProvider),
      modules: [...featureModules, ...standaloneFeatureModules],
    );
    expect(
      navigator.resolve(const BackstageDestination()),
      BackstagePaths.backstage,
    );
    // ログインしていなくても、裏設定のパスは認証の転送の対象外
    expect(
      authRedirect(
        status: PageSessionStatus.signedOut,
        location: BackstagePaths.backstage,
        loginPath: '/auth/login',
        openPaths: const ['/auth/login', BackstagePaths.backstage],
      ),
      isNull,
    );
  });

  test('枠の外のモジュールに裏設定がある(サイドバーのメニューの項目は持たない)', () {
    expect(standaloneFeatureModules.whereType<BackstageModule>(), hasLength(1));
    expect(featureModules.whereType<BackstageModule>(), isEmpty);
  });

  test('起動時の解決: 接続先・ログのレベルは、起動時の指定 > 保管庫 > アセットの既定値', () async {
    final store = InMemoryBackstageStore(
      jsonEncode({
        'pocketbaseUrl': 'https://stored.example.com',
        'logLevel': 'debug',
      }),
    );
    final boot = await loadBackstageBoot(
      store: store,
      assetJson: jsonEncode({
        'defaults': {
          'pocketbaseUrl': 'https://asset.example.com',
          'graphqlUrl': 'https://asset.example.com/graphql',
          'logLevel': 'info',
        },
      }),
      launch: const BackstageLaunch(logLevel: 'warning'),
    );
    final values = boot.values;
    expect(values.logLevel, 'warning');
    expect(values.pocketbaseUrl, 'https://stored.example.com');
    expect(values.graphqlUrl, 'https://asset.example.com/graphql');
  });

  test('PocketBase を使うか・GraphQL の接続先は、起動時に決めた値(裏設定を保存しても実行中は変わらない)', () async {
    final boot = await loadBackstageBoot(
      store: InMemoryBackstageStore(),
      assetJson: jsonEncode({
        'defaults': {
          'pocketbaseUrl': 'https://pb.example.com',
          'graphqlUrl': 'https://gql.example.com/graphql',
        },
      }),
    );
    final container = ProviderContainer(
      overrides: [
        loggerProvider.overrideWithValue(const NoopLoggerProvider()),
        ...backstageOverrides(boot),
      ],
    );
    addTearDown(container.dispose);
    expect(container.read(pocketbaseEnabledProvider), isTrue);
    expect(container.read(graphqlClientProvider), isNotNull);
    await container
        .read(backstageControllerProvider.notifier)
        .save(
          const BackstageSettings(pocketbaseUrl: 'https://other.example.com'),
        );
    expect(container.read(pocketbaseEnabledProvider), isTrue);
  });

  test('接続先の指定が無ければ、PocketBase にも GraphQL にも接続しない(従来どおり)', () {
    final container = ProviderContainer(
      overrides: [loggerProvider.overrideWithValue(const NoopLoggerProvider())],
    );
    addTearDown(container.dispose);
    expect(container.read(pocketbaseEnabledProvider), isFalse);
    expect(container.read(graphqlClientProvider), isNull);
  });
}
