// 手書き(tools/entity_gen/gen.js は上書きしない): 監査標準の項目の定義(判定の式)を、生成の定義から差し替えている
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entities/quality_common_definitions.dart';
import 'entities/quality_common_labels.dart';
import 'entities/quality_common_seeds.dart';
import 'i18n/strings_provider.dart';

/// 監査標準の項目(`auditstdcheck`)の定義。設備の点検整備項目と同じ構造で、判定の式は条件(演算子 + 値の JSON。`FieldKind.condition`)。
/// 生成の定義の型・式・引数(`type_class`・`formula_class`・`arg_class`)は、式 `expr` に置き換える(DB の列は取得元が `arg_class` から導く)。
final auditCheckitemDefinition = EntityDefinition(
  key: 'auditstdcheck',
  fields: [
    FieldDefinition(key: 'code', required: false),
    FieldDefinition(key: 'control_code', required: false),
    FieldDefinition(key: 'name'),
    FieldDefinition(key: 'pronunciation', required: false),
    FieldDefinition(key: 'nickname', required: false),
    FieldDefinition(key: 'mstr_audit_std_id', kind: FieldKind.reference, reference: 'auditstd'),
    FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
    FieldDefinition(key: 'expr', kind: FieldKind.condition, required: false),
    FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
  ],
);

/// 品質共通をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class QualityCommonModule extends EntityFeatureModule {
  const QualityCommonModule();

  @override
  List<EntityDefinition> get definitions => [
    for (final d in qualityCommonDefinitions) d.key == 'auditstdcheck' ? auditCheckitemDefinition : d,
  ];

  @override
  Map<String, List<EntityRecord>> get seeds => qualityCommonSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) => _Labels(ref.watch(qualityCommonStringsProvider));

  @override
  String get menuGroupId => operationsMenuGroupId;

  @override
  String menuGroupLabel(WidgetRef ref) =>
      operationsMenuGroupLabel(ref.watch(localeProvider).languageCode);
}

/// 生成された表示名に、手書きの項目の名前(判定の式)を足す。
class _Labels extends QualityCommonLabels {
  // ignore: use_super_parameters
  const _Labels(QualityCommonStrings t) : _strings = t, super(t);

  final QualityCommonStrings _strings;

  @override
  String field(String entityKey, String fieldKey) =>
      entityKey == 'auditstdcheck' && fieldKey == 'expr' ? _strings.checkitem.expr : super.field(entityKey, fieldKey);
}
