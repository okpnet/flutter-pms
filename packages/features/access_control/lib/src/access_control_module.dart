import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/access_control_definitions.dart';
import 'entities/access_control_labels.dart';
import 'entities/access_control_seeds.dart';
import 'i18n/strings_provider.dart';

/// アクセス管理をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class AccessControlModule extends EntityFeatureModule {
  const AccessControlModule();

  @override
  List<EntityDefinition> get definitions => accessControlDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => accessControlSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      AccessControlLabels(ref.watch(accessControlStringsProvider));

  @override
  String get menuGroupId => 'access_control';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      AccessControlLabels(ref.watch(accessControlStringsProvider)).menuGroup;
}
