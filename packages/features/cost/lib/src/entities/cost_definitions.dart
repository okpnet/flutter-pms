// 手書き(tools/entity_gen/gen.js は上書きしない): 原価は読み取り専用のビューだけで、画面案(tools/open-design)に画面が無い
import 'package:entity_screens/entity_screens.dart';

/// 原価の実体の定義。DB のビュー(`v_item_unit_cost`・`v_item_valuation`・`v_visiter_valuation`)の列に合わせる。
/// すべて読み取り専用(`viewOnly`)。原価・評価額は DB のビューが計算した値で、画面で計算しない。
const List<EntityDefinition> costDefinitions = [
  // 品目別の標準原価(1 行 = 品目)
  EntityDefinition(
    key: 'costunit',
    viewOnly: true,
    compactFlags: true,
    fields: [
      FieldDefinition(key: 'item', kind: FieldKind.reference, required: false, reference: 'item', readOnly: true),
      FieldDefinition(key: 'purchase_cost', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'production_cost', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'component_cost', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'unit_cost', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'has_supplier', kind: FieldKind.flag, required: false, readOnly: true),
      FieldDefinition(key: 'has_components', kind: FieldKind.flag, required: false, readOnly: true),
    ],
  ),
  // 品目別の在庫評価額(1 行 = 品目)
  EntityDefinition(
    key: 'costvaluation',
    viewOnly: true,
    fields: [
      FieldDefinition(key: 'item', kind: FieldKind.reference, required: false, reference: 'item', readOnly: true),
      FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'evaluated_quantity', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'external_quantity', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'amount', kind: FieldKind.number, required: false, readOnly: true),
    ],
  ),
  // ロットの評価額(1 行 = 棚ビジターのロット)
  EntityDefinition(
    key: 'costlot',
    viewOnly: true,
    compactFlags: true,
    fields: [
      FieldDefinition(key: 'symbol', required: false, readOnly: true),
      FieldDefinition(key: 'item', kind: FieldKind.reference, required: false, reference: 'item', readOnly: true),
      FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'held', kind: FieldKind.flag, required: false, readOnly: true),
      FieldDefinition(key: 'external_owned', kind: FieldKind.flag, required: false, readOnly: true),
      FieldDefinition(key: 'transferred', kind: FieldKind.flag, required: false, readOnly: true),
      FieldDefinition(key: 'evaluated', kind: FieldKind.flag, required: false, readOnly: true),
      FieldDefinition(key: 'unit_cost', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'unit_value', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'amount', kind: FieldKind.number, required: false, readOnly: true),
    ],
  ),
];
