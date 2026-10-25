import 'package:system/system.dart';
import 'package:item/item.dart';
import 'package:production_process/production_process.dart';
import 'package:purchasing/purchasing.dart';
import 'package:production_plan/production_plan.dart';
import 'package:work_record/work_record.dart';
import 'package:quality_common/quality_common.dart';
import 'package:quality_document/quality_document.dart';
import 'package:quality/quality.dart';
import 'package:resource/resource.dart';
import 'package:organization/organization.dart';
import 'package:sales/sales.dart';
import 'package:shared_master/shared_master.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';

import 'home_page.dart';

/// 組み込む機能の一覧。機能を追加したらここに1行足す。
const List<FeatureModule> featureModules = [
  SalesModule(),
  SharedMasterModule(),
  SystemModule(),
  ItemModule(),
  ProductionProcessModule(),
  PurchasingModule(),
  ProductionPlanModule(),
  WorkRecordModule(),
  QualityCommonModule(),
  QualityDocumentModule(),
  QualityModule(),
  ResourceModule(),
  OrganizationModule(),
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
/// loggerProvider(logger_provider)は非同期生成のため main.dart で別に override する。
final appOverrides = [
  commandBusProvider.overrideWith((ref) {
    final registry = CommandHandlerRegistry();
    for (final module in featureModules) {
      module.registerHandlers(registry, ref);
    }
    return DefaultCommandBus(
      handlers: registry,
      logger: ref.watch(loggerProvider),
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
