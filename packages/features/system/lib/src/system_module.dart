// 手書き(tools/entity_gen/gen.js は上書きしない): 生成の雛形から、手で書き足している
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/system_definitions.dart';
import 'exchange/exchange_fetch_button.dart';
import 'exchange/exchange_providers.dart';
import 'exchange/exchange_lock_control.dart';
import 'entities/system_labels.dart';
import 'entities/system_seeds.dart';
import 'i18n/strings_provider.dart';

/// システムをアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class SystemModule extends EntityFeatureModule {
  const SystemModule();

  @override
  List<EntityDefinition> get definitions => systemDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => systemSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      SystemLabels(ref.watch(systemStringsProvider));

  @override
  String get menuGroupId => 'system';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      SystemLabels(ref.watch(systemStringsProvider)).menuGroup;

  /// 通貨・為替レートは、システムメニュー(管理者のユーザーメニュー)へ移す。サイドバーには出さない。
  /// 開く権限は、アクセス権(アクセスパス `/e/currency`・`/e/exchangerate`。管理者は常に可)に従う。
  /// 為替レートの登録・変更は管理者だけ(DB も止める)。管理者でない人には、閲覧だけ。
  @override
  bool listCanEdit(WidgetRef ref, String key) =>
      key != 'exchangerate' || ref.watch(exchangeFetchAllowedProvider);

  @override
  List<Widget> listHeaderActions(
    WidgetRef ref,
    String key,
    BuildContext context,
    VoidCallback reload,
  ) => key == 'exchangerate'
      ? [
          ExchangeLockControl(reload: reload),
          ExchangeFetchButton(reload: reload),
        ]
      : const [];

  static const _systemMenu = {'currency', 'exchangerate'};

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) => [
    for (final e in super.menuEntries(ref))
      if (e.destination case EntityListDestination(
        :final entityKey,
      ) when _systemMenu.contains(entityKey))
        MenuEntry(
          groupId: systemMenuGroupId,
          groupLabel: systemMenuGroupLabel(
            ref.watch(localeProvider).languageCode,
          ),
          label: e.label,
          destination: e.destination,
        )
      else
        e,
  ];
}
