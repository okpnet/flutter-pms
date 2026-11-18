import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/organization_definitions.dart';
import 'entities/organization_labels.dart';
import 'entities/organization_seeds.dart';
import 'i18n/strings_provider.dart';

/// 会社情報をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class OrganizationModule extends EntityFeatureModule {
  const OrganizationModule();

  @override
  List<EntityDefinition> get definitions => organizationDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => organizationSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      OrganizationLabels(ref.watch(organizationStringsProvider));

  @override
  String get menuGroupId => 'organization';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      OrganizationLabels(ref.watch(organizationStringsProvider)).menuGroup;
}
