import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'customer/customer_module.dart';
import 'sales_entity_module.dart';

/// 営業機能をアプリへ組み込むための口。区分(顧客台帳など)のモジュールを束ねる。
///
/// パターン: Composite(同じ [FeatureModule] の窓口で区分のモジュールを1つに見せる)
class SalesModule implements FeatureModule {
  const SalesModule();

  static const List<FeatureModule> _parts = [
    CustomerModule(),
    SalesEntityModule(),
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
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {
    for (final p in _parts) {
      p.registerHandlers(registry, ref);
    }
  }
}
