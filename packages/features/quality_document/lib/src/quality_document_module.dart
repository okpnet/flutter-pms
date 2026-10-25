import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/quality_document_definitions.dart';
import 'entities/quality_document_labels.dart';
import 'entities/quality_document_seeds.dart';
import 'i18n/strings_provider.dart';

/// 品質管理文書をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class QualityDocumentModule extends EntityFeatureModule {
  const QualityDocumentModule();

  @override
  List<EntityDefinition> get definitions => qualityDocumentDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => qualityDocumentSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      QualityDocumentLabels(ref.watch(qualityDocumentStringsProvider));
}
