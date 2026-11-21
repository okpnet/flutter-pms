import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../i18n/strings_provider.dart';
import 'document_settings_destinations.dart';
import 'document_settings_page.dart';
import 'document_settings_paths.dart';

/// 承認スタンプ・PDF の設定をアプリへ組み込む口。メニューは、グループ「品質管理文書」に 1 項目。
class DocumentSettingsModule implements FeatureModule, MenuContributor {
  const DocumentSettingsModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: DocumentSettingsPaths.home,
      builder: (context, state) => const DocumentSettingsPage(),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) => switch (destination) {
    DocumentSettingsDestination() => DocumentSettingsPaths.home,
    _ => null,
  };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    final s = ref.watch(documentSettingsStringsProvider);
    return [
      MenuEntry(
        groupId: 'quality_document',
        groupLabel: s.menuGroup,
        label: s.menuLabel,
        destination: const DocumentSettingsDestination(),
      ),
    ];
  }
}
