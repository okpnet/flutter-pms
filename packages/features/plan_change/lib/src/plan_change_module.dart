import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
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

  @override
  String get menuGroupId => 'plan_change';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      PlanChangeLabels(ref.watch(planChangeStringsProvider)).menuGroup;
}
