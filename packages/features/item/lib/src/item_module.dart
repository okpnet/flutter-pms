// 手書き(tools/entity_gen/gen.js は上書きしない): 生成の雛形から、行の操作「原価を見る」を手で書き足している
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/item_definitions.dart';
import 'entities/item_labels.dart';
import 'entities/item_seeds.dart';
import 'i18n/strings_provider.dart';

/// 品目をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class ItemModule extends EntityFeatureModule {
  const ItemModule();

  static const _costAction = RowAction(key: 'cost', target: '');

  /// item の台帳に、行の操作「原価を見る」(原価の標準原価の一覧を、その品目で絞って開く。機能同士はキーだけで引く)を足す。
  @override
  List<EntityDefinition> get definitions => [
    for (final d in itemDefinitions) d.key == 'item' ? withRowAction(d, _costAction) : d,
  ];

  @override
  Future<bool> handleRowAction(WidgetRef ref, RowAction action, EntityRecord record) async {
    if (action.key != 'cost') return false;
    await ref.read(commandBusProvider).execute(EntityListDestination('costunit', filter: {'item': record.id}));
    return true;
  }

  @override
  Map<String, List<EntityRecord>> get seeds => itemSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) {
    final t = ref.watch(itemStringsProvider);
    return ExtraFieldLabels(ItemLabels(t), {'item.cost': t.costAction.item});
  }

  @override
  String get menuGroupId => 'item';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      ItemLabels(ref.watch(itemStringsProvider)).menuGroup;

  @override
  String menuGroupLabelFor(WidgetRef ref, String groupId) => switch (groupId) {
    'purchasing' => ItemLabels(
      ref.watch(itemStringsProvider),
    ).menuGroupOf(groupId),
    _ => groupId,
  };
}
