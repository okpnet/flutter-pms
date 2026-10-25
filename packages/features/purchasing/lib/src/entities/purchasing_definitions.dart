// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 購買の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> purchasingDefinitions = [
    EntityDefinition(
      key: 'unrec',
      fields: [
        FieldDefinition(key: 'decision_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'expected_completion_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'planned_shipping_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'unrecdetail', owner: 'unrec',
      fields: [
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'cost', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'purchase',
      fields: [
        FieldDefinition(key: 'register_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'purchase_order_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'purdetail', owner: 'purchase',
      fields: [
        FieldDefinition(key: 'trans_resource_plan_id', kind: FieldKind.reference, required: false, reference: 'resplan'),
        FieldDefinition(key: 'restocking_purchase', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'period', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'purchaserec',
      fields: [
        FieldDefinition(key: 'trans_purchase_detail_id', kind: FieldKind.reference, reference: 'purdetail'),
        FieldDefinition(key: 'receive_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'purchaseline', owner: 'purchaserec',
      fields: [
        FieldDefinition(key: 'item', kind: FieldKind.reference, reference: 'item'),
        FieldDefinition(key: 'qty', kind: FieldKind.number),
        FieldDefinition(key: 'unit', kind: FieldKind.reference, reference: 'unit'),
      ],
    ),
    EntityDefinition(
      key: 'purcert', owner: 'purchaserec',
      fields: [
        FieldDefinition(key: 'trans_certificate_id', kind: FieldKind.reference, reference: 'certificate'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
];
