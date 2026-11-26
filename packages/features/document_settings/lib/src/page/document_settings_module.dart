import 'package:feature_shared/feature_shared.dart';
import '../i18n/strings_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'document_settings_destinations.dart';
import 'document_settings_page.dart';
import 'document_settings_paths.dart';

/// 承認スタンプ・PDF の設定をアプリへ組み込む口。メニューは、システムメニュー(管理者のユーザーメニュー)に 1 項目。
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
  List<MenuEntry> menuEntries(WidgetRef ref) => [
    // 文書のメニューには出さず、管理者のユーザーメニューの「システムメニュー」に出す(サイドバーには出ない)
    MenuEntry(
      groupId: systemMenuGroupId,
      groupLabel: systemMenuGroupLabel(ref.watch(localeProvider).languageCode),
      label: ref.watch(documentSettingsStringsProvider).menuLabel,
      destination: const DocumentSettingsDestination(),
    ),
  ];
}
