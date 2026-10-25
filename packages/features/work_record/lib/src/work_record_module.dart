import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/work_record_definitions.dart';
import 'entities/work_record_labels.dart';
import 'entities/work_record_seeds.dart';
import 'i18n/strings_provider.dart';

/// 作業実績をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class WorkRecordModule extends EntityFeatureModule {
  const WorkRecordModule();

  @override
  List<EntityDefinition> get definitions => workRecordDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => workRecordSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      WorkRecordLabels(ref.watch(workRecordStringsProvider));

  @override
  String get menuGroupId => 'work_record';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      WorkRecordLabels(ref.watch(workRecordStringsProvider)).menuGroup;
}
