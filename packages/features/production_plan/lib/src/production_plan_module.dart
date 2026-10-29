import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'mrp/mrp_module.dart';
import 'production_plan_entity_module.dart';

/// 生産計画をアプリへ組み込むための口。実体の画面(資材計画ほか)と、資材所要計算(MRP)を束ねる。
///
/// パターン: Composite(同じ [FeatureModule] の窓口で区分のモジュールを1つに見せる)
class ProductionPlanModule implements FeatureModule, MenuContributor {
  const ProductionPlanModule();

  static const List<FeatureModule> _parts = [
    ProductionPlanEntityModule(),
    MrpModule(),
  ];

  @override
  List<RouteBase> get routes => [for (final p in _parts) ...p.routes];

  @override
  String? locationOf(PageDestination<Object?> destination) {
    for (final p in _parts) {
      final location = p.locationOf(destination);
      if (location != null) return location;
    }
    return null;
  }

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) => [
    for (final p in _parts)
      if (p is MenuContributor) ...(p as MenuContributor).menuEntries(ref),
  ];

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {
    for (final p in _parts) {
      p.registerHandlers(registry, ref);
    }
  }
}
