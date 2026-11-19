import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'entities/work_record_definitions.dart';
import 'entities/work_record_labels.dart';
import 'entities/work_record_seeds.dart';
import 'i18n/strings_provider.dart';
import 'register/register_destinations.dart';
import 'register/register_page.dart';

/// 作業実績をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
///
/// 手書きの画面: 実績登録(`/wr`。メニューの先頭。[WorkRegisterDestination])。生成(`tools/entity_gen/gen.js`)で
/// このファイルが上書きされたら、`git checkout` で戻す(手書きの部分は下の 3 つ: routes・locationOf・menuEntries)。
class WorkRecordModule extends EntityFeatureModule {
  const WorkRecordModule();

  /// 実績登録の画面のパス。
  static const registerPath = '/wr';

  @override
  List<EntityDefinition> get definitions => workRecordDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => workRecordSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      WorkRecordLabels(ref.watch(workRecordStringsProvider));

  @override
  String get menuGroupId => 'work_record';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      WorkRecordLabels(ref.watch(workRecordStringsProvider)).menuGroup;

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: registerPath,
      builder: (context, state) => Consumer(
        builder: (context, ref, _) => WorkRegisterPage(
          scope: entityScope(ref),
          initialPlanId: state.uri.queryParameters['plan'],
        ),
      ),
    ),
    ...super.routes,
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        WorkRegisterDestination(:final planId) => planId == null || planId.isEmpty
            ? registerPath
            : Uri(path: registerPath, queryParameters: {'plan': planId})
                  .toString(),
        _ => super.locationOf(destination),
      };

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) => [
    MenuEntry(
      groupId: menuGroupId,
      groupLabel: menuGroupLabel(ref),
      label: ref.watch(workRecordStringsProvider).register.title,
      destination: const WorkRegisterDestination(),
    ),
    ...super.menuEntries(ref),
  ];
}
