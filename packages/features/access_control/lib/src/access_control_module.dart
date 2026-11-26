// 手書き(tools/entity_gen/gen.js は上書きしない): 生成の雛形から、アクセス権の一括設定の画面(ルート・メニュー)を手で書き足している
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/widgets.dart' show ValueKey;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'entities/access_control_definitions.dart';
import 'entities/access_control_labels.dart';
import 'entities/access_control_seeds.dart';
import 'i18n/strings_provider.dart';
import 'page/access_bulk_destination.dart';
import 'page/access_bulk_page.dart';

/// アクセス管理をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class AccessControlModule extends EntityFeatureModule {
  const AccessControlModule();

  @override
  List<EntityDefinition> get definitions => accessControlDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => accessControlSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      AccessControlLabels(ref.watch(accessControlStringsProvider));

  /// アクセス権の一括設定の画面のパス。
  static const bulkPath = '/access-control/bulk';

  @override
  List<RouteBase> get routes => [
    ...super.routes,
    GoRoute(
      path: bulkPath,
      builder: (context, state) => AccessBulkPage(
        key: ValueKey(state.uri.toString()),
        initialScope: state.uri.queryParameters['scope'] ?? 'department',
        initialTargetId: state.uri.queryParameters['id'],
      ),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) => switch (destination) {
    AccessBulkDestination(:final scope, :final targetId) => Uri(
      path: bulkPath,
      queryParameters: {'scope': scope, 'id': ?targetId},
    ).toString(),
    _ => super.locationOf(destination),
  };

  /// メニューは「アクセス権設定」の 1 項目だけ。台帳(アクセスパス・部署・担当者・実効)は、その画面の下の「台帳」から開く
  /// (画面とルートは残る)。
  @override
  List<MenuEntry> menuEntries(WidgetRef ref) => [
    MenuEntry(
      groupId: menuGroupId,
      groupLabel: menuGroupLabel(ref),
      label: ref.watch(accessControlStringsProvider).bulk.title,
      destination: const AccessBulkDestination(),
    ),
  ];

  @override
  String get menuGroupId => 'access_control';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      AccessControlLabels(ref.watch(accessControlStringsProvider)).menuGroup;
}
