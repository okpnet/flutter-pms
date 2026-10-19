import 'package:customer/customer.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'go_router_destination_navigator.dart';
import 'home_page.dart';

/// 組み込む機能の一覧。機能を追加したらここに1行足す。
const List<FeatureModule> featureModules = [
  CustomerModule(),
];

/// 各機能のルートを束ねた GoRouter。
final routerProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      for (final module in featureModules) ...module.routes,
    ],
  );
  ref.onDispose(router.dispose);
  return router;
});

/// アプリが差し込む実体(「宣言はライブラリ、実体はアプリ」)。
final appOverrides = [
  commandBusProvider.overrideWith((ref) {
    final registry = CommandHandlerRegistry();
    for (final module in featureModules) {
      module.registerHandlers(registry, ref);
    }
    return DefaultCommandBus(
      handlers: registry,
      navigator: GoRouterDestinationNavigator(
        router: ref.watch(routerProvider),
        modules: featureModules,
      ),
      // middlewares: [権限チェック, 監査ログ など],
    );
  }),
];

class PmsApp extends ConsumerWidget {
  const PmsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'PMS',
      routerConfig: ref.watch(routerProvider),
    );
  }
}
