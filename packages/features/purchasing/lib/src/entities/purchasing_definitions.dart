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
        FieldDefinition(key: 'unit_price', kind: FieldKind.number),
        FieldDefinition(key: 'price_adjustment', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'fixed_price', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'material_supply', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'paid_supply', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'item_id', kind: FieldKind.reference, reference: 'item'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'purchase',
      fields: [
        FieldDefinition(key: 'stakeholder_id', kind: FieldKind.reference, reference: 'supplier'),
        FieldDefinition(key: 'register_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'purchase_order_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'purchase_amount', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'received_amount', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'purdetail', owner: 'purchase', rowActions: [RowAction(key: 'reserve', target: 'stockrez', initialValues: {'purdetail': RowAction.idSource})],
      fields: [
        FieldDefinition(key: 'trans_resource_plan_id', kind: FieldKind.reference, required: false, reference: 'resplan'),
        FieldDefinition(key: 'restocking_purchase', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'unit_price', kind: FieldKind.number),
        FieldDefinition(key: 'price_adjustment', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'fixed_price', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'material_supply', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'paid_supply', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'period', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'item_id', kind: FieldKind.reference, reference: 'item'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'cancel_quantity', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'stop', kind: FieldKind.flag, required: false, readOnly: true),
        FieldDefinition(key: 'received_quantity', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'remaining_quantity', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'open_quantity', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'cancel_closed', kind: FieldKind.flag, required: false, readOnly: true),
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
