import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/quality_definitions.dart';
import 'entities/quality_labels.dart';
import 'entities/quality_seeds.dart';
import 'i18n/strings_provider.dart';

/// 品質管理をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class QualityModule extends EntityFeatureModule {
  const QualityModule();

  @override
  List<EntityDefinition> get definitions => qualityDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => qualitySeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      QualityLabels(ref.watch(qualityStringsProvider));

  @override
  String get menuGroupId => 'quality';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      QualityLabels(ref.watch(qualityStringsProvider)).menuGroup;
}
