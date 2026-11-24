// 手書き(tools/entity_gen/gen.js は上書きしない)
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/cost_definitions.dart';
import 'entities/cost_labels.dart';
import 'entities/cost_seeds.dart';
import 'i18n/strings_provider.dart';

/// 原価をアプリへ組み込むための口(読み取り専用の台帳)。
///
/// 台帳の画面は実体の定義から作る([EntityFeatureModule])。取得元はサンプル(メモリ上)で、GraphQL 版は
/// `costRepositories` を差し替える。メニューは、機能のグループではなく、それぞれの業務のグループに置く:
/// 標準原価の一覧 = 品目(`item`)、在庫評価額の一覧・ロットの評価額 = 作業実績(`work_record`)。
class CostModule extends EntityFeatureModule {
  const CostModule();

  /// 標準原価の一覧を置くグループ(品目)。
  static const itemGroupId = 'item';

  /// 在庫評価額の一覧・ロットの評価額を置くグループ(作業実績)。
  static const workRecordGroupId = 'work_record';

  @override
  List<EntityDefinition> get definitions => costDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => costSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) {
    final t = ref.watch(costStringsProvider);
    return ExtraFieldLabels(CostLabels(t), {'costvaluation.lots': t.lotsAction.costvaluation});
  }

  /// 在庫評価額の行の操作「ロットを見る」: その品目のロットの評価額を開く(品目で絞る)。
  @override
  Future<bool> handleRowAction(WidgetRef ref, RowAction action, EntityRecord record) async {
    if (action.key != 'lots') return false;
    // 在庫評価額の行の id は品目の ID
    await ref.read(commandBusProvider).execute(EntityListDestination('costlot', filter: {'item': record.id}));
    return true;
  }

  @override
  String get menuGroupId => workRecordGroupId;

  @override
  String menuGroupLabel(WidgetRef ref) => CostLabels(ref.watch(costStringsProvider)).menuGroupOf(workRecordGroupId);

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    final labels = CostLabels(ref.watch(costStringsProvider));
    MenuEntry entry(String groupId, String key) => MenuEntry(
      groupId: groupId,
      groupLabel: labels.menuGroupOf(groupId),
      label: labels.entity(key),
      destination: EntityListDestination(key),
    );
    return [
      entry(itemGroupId, 'costunit'),
      entry(workRecordGroupId, 'costvaluation'),
      entry(workRecordGroupId, 'costlot'),
      entry(workRecordGroupId, 'costwork'),
    ];
  }
}
