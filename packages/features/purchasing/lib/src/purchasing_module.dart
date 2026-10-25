import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/purchasing_definitions.dart';
import 'entities/purchasing_labels.dart';
import 'entities/purchasing_seeds.dart';
import 'i18n/strings_provider.dart';

/// 購買をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class PurchasingModule extends EntityFeatureModule {
  const PurchasingModule();

  @override
  List<EntityDefinition> get definitions => purchasingDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => purchasingSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      PurchasingLabels(ref.watch(purchasingStringsProvider));

  @override
  String get menuGroupId => 'purchasing';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      PurchasingLabels(ref.watch(purchasingStringsProvider)).menuGroup;
}
