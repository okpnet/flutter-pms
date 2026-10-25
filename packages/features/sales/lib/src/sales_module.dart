import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/sales_definitions.dart';
import 'entities/sales_labels.dart';
import 'entities/sales_seeds.dart';
import 'i18n/strings_provider.dart';

/// 営業をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class SalesModule extends EntityFeatureModule {
  const SalesModule();

  @override
  List<EntityDefinition> get definitions => salesDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => salesSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      SalesLabels(ref.watch(salesStringsProvider));

  @override
  String get menuGroupId => 'sales';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      SalesLabels(ref.watch(salesStringsProvider)).menuGroup;
}
