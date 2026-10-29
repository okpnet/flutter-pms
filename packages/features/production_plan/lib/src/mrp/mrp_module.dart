import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../entities/production_plan_labels.dart';
import '../i18n/strings_provider.dart';
import 'mrp_destinations.dart';
import 'mrp_page.dart';

/// 資材所要計算(MRP)をアプリへ組み込むための口。「生産計画」メニューの項目として出す。
class MrpModule implements FeatureModule, MenuContributor {
  const MrpModule();

  static const path = '/mrp';

  @override
  List<RouteBase> get routes => [
    GoRoute(path: path, builder: (context, state) => const MrpPage()),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        MrpDestination() => path,
        _ => null,
      };

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    final strings = ref.watch(productionPlanStringsProvider);
    return [
      MenuEntry(
        groupId: 'production_plan',
        groupLabel: ProductionPlanLabels(strings).menuGroup,
        label: strings.mrp.menu,
        destination: const MrpDestination(),
      ),
    ];
  }

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}
