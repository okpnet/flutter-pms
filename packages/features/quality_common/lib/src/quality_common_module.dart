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
    for (final d in qualityCommonDefinitions) _withRelated(d.key == 'auditstdcheck' ? auditCheckitemDefinition : d),
  ];

  /// 異常処置の編集の下に再発防止処置、再発防止処置の下に再発防止監視、リスクの下に割り付け(注文・受注明細・工程)を出す
  /// (追加・編集もできる。別の機能の実体は、キーで引く)。
  static EntityDefinition _withRelated(EntityDefinition d) => switch (d.key) {
    'disposal' => withReverseList(d, const ReverseList(entity: 'recur', field: 'trans_disposal_id', editable: true)),
    'recur' => withReverseList(d, const ReverseList(entity: 'obsprev', field: 'trans_recurrence_prevention_id', editable: true)),
    'risk' => [
      const ReverseList(entity: 'orderrisk', field: 'trans_risk_id', editable: true),
      const ReverseList(entity: 'orderdetailrisk', field: 'risk_id', editable: true),
      const ReverseList(entity: 'taskrisk', field: 'risk_id', editable: true),
    ].fold(d, withReverseList),
    _ => d,
  };

  /// メニューには、親の画面から開く実体(再発防止処置・再発防止監視・監査標準項目)を出さない。
  static const _hiddenFromMenu = {'recur', 'obsprev', 'auditstdcheck'};

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) => [
    for (final e in super.menuEntries(ref))
      if (!(e.destination is EntityListDestination && _hiddenFromMenu.contains((e.destination as EntityListDestination).entityKey))) e,
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
  String reverse(String entityKey, String reverseEntityKey) => switch ('$entityKey.$reverseEntityKey') {
    'disposal.recur' => _strings.related.recur,
    'recur.obsprev' => _strings.related.obsprev,
    'risk.orderrisk' => _strings.related.orderrisk,
    'risk.orderdetailrisk' => _strings.related.orderdetailrisk,
    'risk.taskrisk' => _strings.related.taskrisk,
    _ => super.reverse(entityKey, reverseEntityKey),
  };

  @override
  String field(String entityKey, String fieldKey) =>
      entityKey == 'auditstdcheck' && fieldKey == 'expr' ? _strings.checkitem.expr : super.field(entityKey, fieldKey);
}
