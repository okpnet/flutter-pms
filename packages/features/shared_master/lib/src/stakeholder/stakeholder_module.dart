import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../i18n/strings_provider.dart';
import '../shared_master_entity_module.dart';
import 'stakeholder_destinations.dart';

/// 利害関係者(顧客・外部供給者)と担当者の画面。台帳・編集は実体の定義から作る。
///
/// 営業のメニューは顧客台帳、購買のメニューは外部供給者台帳として、同じ実体を役割で絞って開く。
/// ほかの実体が顧客(`customer`)・外部供給者(`supplier`)を参照するときの選択肢は、
/// 同じ取得元から役割で絞って登録簿に登録する。
class StakeholderModule extends SharedMasterEntityModule {
  const StakeholderModule();

  static const _aliases = {
    'customer': 'is_customer',
    'supplier': 'is_supplier',
  };

  /// 顧客・外部供給者の選択は、利害関係者の台帳を役割で絞って開く(台帳の画面をそのまま使う)。
  @override
  Map<String, PickAlias> get pickAliases => {
    for (final MapEntry(key: alias, value: flag) in _aliases.entries)
      alias: PickAlias(stakeholderEntityKey, filter: {flag: stakeholderRoleOn}),
  };

  @override
  String? pickTitle(WidgetRef ref, String key) {
    final t = ref.watch(sharedMasterStringsProvider).stakeholder;
    return switch (key) {
      'customer' => t.customerPick,
      'supplier' => t.supplierPick,
      _ => null,
    };
  }

  @override
  String? listTitle(
    WidgetRef ref,
    String entityKey,
    Map<String, String> filter,
  ) {
    final t = ref.watch(sharedMasterStringsProvider).stakeholder;
    if (filter.containsKey('is_customer')) return t.customerLedger;
    if (filter.containsKey('is_supplier')) return t.supplierLedger;
    return null;
  }

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    final t = ref.watch(sharedMasterStringsProvider);
    return [
      MenuEntry(
        groupId: 'sales',
        groupLabel: t.menu.sales,
        label: t.stakeholder.customerLedger,
        destination: customerLedgerDestination,
      ),
      MenuEntry(
        groupId: 'purchasing',
        groupLabel: t.menu.purchasing,
        label: t.stakeholder.supplierLedger,
        destination: supplierLedgerDestination,
      ),
    ];
  }

  @override
  void registerLookups(EntityCatalog catalog, Ref ref) {
    for (final MapEntry(key: alias, value: flag) in _aliases.entries) {
      catalog.registerLookup(alias, () async {
        final repository = catalog.repository(stakeholderEntityKey);
        if (repository == null) return const [];
        final records = await repository.find(take: 100000);
        return [
          for (final r in records)
            if (r.valueOf(flag) == stakeholderRoleOn)
              EntityOption(
                r.id,
                EntityCatalog.displayLabel(repository.definition, r),
              ),
        ];
      }, backing: stakeholderEntityKey);
    }
  }
}
