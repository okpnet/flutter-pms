import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../i18n/strings_provider.dart';
import 'pages/shipping_kind_edit_page.dart';
import 'pages/shipping_kind_list_page.dart';
import 'pages/shipping_kind_picker_page.dart';
import 'shipping_kind_commands.dart';
import 'shipping_kind_destinations.dart';
import 'shipping_kind_handlers.dart';
import 'shipping_kind_paths.dart';
import 'shipping_kinds_provider.dart';

/// 配送区分をアプリへ組み込むための口。
class ShippingKindModule implements FeatureModule, MenuContributor {
  const ShippingKindModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: ShippingKindPaths.list,
      builder: (context, state) => const ShippingKindListPage(),
      routes: [
        // ':id' より先に置く('pick' / 'new' が id として解釈されないように)
        GoRoute(
          path: ShippingKindPaths.pickSegment,
          builder: (context, state) => const ShippingKindPickerPage(),
        ),
        GoRoute(
          path: ShippingKindPaths.newSegment,
          builder: (context, state) => const ShippingKindEditPage(id: null),
        ),
        GoRoute(
          path: ShippingKindPaths.editSegment,
          builder: (context, state) =>
              ShippingKindEditPage(id: state.pathParameters['id']),
        ),
      ],
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        ShippingKindListDestination() => ShippingKindPaths.list,
        ShippingKindEditDestination(:final id) =>
          id == null ? ShippingKindPaths.create : ShippingKindPaths.edit(id),
        ShippingKindPickerDestination() => ShippingKindPaths.pick,
        _ => null,
      };

  /// 配送区分は、トップメニューの「営業」「購買」のどちらからも開く。
  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    final t = ref.watch(sharedMasterStringsProvider);
    return [
      for (final (id, group) in [
        ('sales', t.menu.sales),
        ('purchasing', t.menu.purchasing),
      ])
        MenuEntry(
          groupId: id,
          groupLabel: group,
          label: t.shippingKind.title,
          destination: const ShippingKindListDestination(),
        ),
    ];
  }

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {
    registry.register<FindShippingKindNameCommand, String?>(
      FindShippingKindNameHandler(ref),
    );
    // 顧客・サプライヤーなど、ほかの実体が配送区分を選ぶ(参照する)ときの選択肢
    ref.read(entityCatalogProvider).registerLookup('shipkind', () async {
      final kinds = await ref
          .read(shippingKindRepositoryProvider)
          .find(take: shippingKindFetchLimit);
      return [for (final k in kinds) EntityOption(k.id, k.name)];
    });
  }
}
