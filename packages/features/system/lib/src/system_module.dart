import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/system_definitions.dart';
import 'entities/system_labels.dart';
import 'entities/system_seeds.dart';
import 'i18n/strings_provider.dart';

/// システムをアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class SystemModule extends EntityFeatureModule {
  const SystemModule();

  @override
  List<EntityDefinition> get definitions => systemDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => systemSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      SystemLabels(ref.watch(systemStringsProvider));
}
