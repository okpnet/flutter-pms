import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/production_plan_definitions.dart';
import 'entities/production_plan_labels.dart';
import 'entities/production_plan_seeds.dart';
import 'i18n/strings_provider.dart';

/// 生産計画(実体の画面)をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class ProductionPlanEntityModule extends EntityFeatureModule {
  const ProductionPlanEntityModule();

  @override
  List<EntityDefinition> get definitions => productionPlanDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => productionPlanSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      ProductionPlanLabels(ref.watch(productionPlanStringsProvider));

  @override
  String get menuGroupId => 'production_plan';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      ProductionPlanLabels(ref.watch(productionPlanStringsProvider)).menuGroup;
}
