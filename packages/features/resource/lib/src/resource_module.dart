import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/resource_definitions.dart';
import 'entities/resource_labels.dart';
import 'entities/resource_seeds.dart';
import 'i18n/strings_provider.dart';

/// 資源をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class ResourceModule extends EntityFeatureModule {
  const ResourceModule();

  @override
  List<EntityDefinition> get definitions => resourceDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => resourceSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      ResourceLabels(ref.watch(resourceStringsProvider));
}
