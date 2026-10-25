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

  @override
  List<EntityDefinition> get definitions => itemDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => itemSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      ItemLabels(ref.watch(itemStringsProvider));
}
