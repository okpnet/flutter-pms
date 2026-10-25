import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'shipping_kind/shipping_kind_module.dart';
import 'stakeholder/stakeholder_module.dart';

/// 共有マスタをアプリへ組み込むための口。区分(配送区分・利害関係者など)のモジュールを束ねる。
///
/// パターン: Composite(同じ [FeatureModule] の窓口で区分のモジュールを1つに見せる)
class SharedMasterModule implements FeatureModule, MenuContributor {
  const SharedMasterModule();

  static const List<FeatureModule> _parts = [
    ShippingKindModule(),
    StakeholderModule(),
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
