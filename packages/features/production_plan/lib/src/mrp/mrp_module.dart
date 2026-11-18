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

  /// 再MRP の対象の受注明細を渡すクエリ。例: `/mrp?redo=1&od=<id>,<id>`
  static const redoQuery = 'redo';
  static const orderDetailsQuery = 'od';

  /// 遷移先からパスを作る。再MRP・対象の受注明細があれば、クエリに入れる。
  static String locationFor(MrpDestination d) {
    final ids = [for (final id in d.orderDetailIds) if (id.isNotEmpty) id];
    final redo = d.redo || ids.isNotEmpty;
    if (!redo) return path;
    return Uri(
      path: path,
      queryParameters: {
        redoQuery: '1',
        if (ids.isNotEmpty) orderDetailsQuery: ids.join(','),
      },
    ).toString();
  }

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: path,
      builder: (context, state) {
        final od = state.uri.queryParameters[orderDetailsQuery] ?? '';
        final ids = [for (final id in od.split(',')) if (id.isNotEmpty) id];
        return MrpPage(
          initialRedo:
              state.uri.queryParameters[redoQuery] == '1' || ids.isNotEmpty,
          initialOrderDetailIds: ids,
        );
      },
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        final MrpDestination d => locationFor(d),
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
