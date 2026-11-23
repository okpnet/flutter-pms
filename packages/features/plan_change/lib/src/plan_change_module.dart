// 手書き(tools/entity_gen/gen.js は上書きしない): 生成の雛形から、手で書き足している
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:production_plan/production_plan_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/plan_change_definitions.dart';
import 'entities/plan_change_labels.dart';
import 'entities/plan_change_seeds.dart';
import 'i18n/strings_provider.dart';

/// 計画変更をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class PlanChangeModule extends EntityFeatureModule {
  const PlanChangeModule();

  @override
  List<EntityDefinition> get definitions => planChangeDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => planChangeSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      PlanChangeLabels(ref.watch(planChangeStringsProvider));

  /// 履歴の「未反映」の行(台帳の上部のメニューで選ぶ「再MRPへ」)は、その行の最上位の受注明細を対象にして、
  /// 資材所要計算(再MRP)の画面へ進む(`production_plan` の契約の遷移先)。最上位の受注明細が無い行は、何もしない。
  @override
  Future<bool> handleRowAction(
    WidgetRef ref,
    RowAction action,
    EntityRecord record,
  ) async {
    if (action.key != remrpActionKey) return false;
    final orderDetailId = record.valueOf('root_order_detail');
    if (orderDetailId.isEmpty) return true;
    await ref
        .read(commandBusProvider)
        .execute(MrpDestination(redo: true, orderDetailIds: [orderDetailId]));
    return true;
  }

  /// 再MRPへ進む行の操作のキー。
  static const remrpActionKey = 'do_remrp';

  @override
  String get menuGroupId => 'plan_change';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      PlanChangeLabels(ref.watch(planChangeStringsProvider)).menuGroup;
}
