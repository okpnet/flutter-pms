import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/quality_common_definitions.dart';
import 'entities/quality_common_labels.dart';
import 'entities/quality_common_seeds.dart';
import 'i18n/strings_provider.dart';

/// 品質共通をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class QualityCommonModule extends EntityFeatureModule {
  const QualityCommonModule();

  @override
  List<EntityDefinition> get definitions => qualityCommonDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => qualityCommonSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      QualityCommonLabels(ref.watch(qualityCommonStringsProvider));

  @override
  String get menuGroupId => 'quality_common';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      QualityCommonLabels(ref.watch(qualityCommonStringsProvider)).menuGroup;
}
