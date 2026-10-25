import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/shared_master_definitions.dart';
import 'entities/shared_master_labels.dart';
import 'entities/shared_master_seeds.dart';
import 'i18n/strings_provider.dart';

/// 共有マスタ(実体の画面)をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class SharedMasterEntityModule extends EntityFeatureModule {
  const SharedMasterEntityModule();

  @override
  List<EntityDefinition> get definitions => sharedMasterDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => sharedMasterSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      SharedMasterLabels(ref.watch(sharedMasterStringsProvider));
}
