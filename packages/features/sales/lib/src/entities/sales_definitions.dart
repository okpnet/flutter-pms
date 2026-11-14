// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 営業の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> salesDefinitions = [
    EntityDefinition(
      key: 'order',
      fields: [
        FieldDefinition(key: 'order_number'),
        FieldDefinition(key: 'customer_order_number', required: false),
        FieldDefinition(key: 'stakeholder_id', kind: FieldKind.reference, required: false, reference: 'customer'),
        FieldDefinition(key: 'order_processing_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'delivery_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'orderdetail', owner: 'order',
      fields: [
        FieldDefinition(key: 'item_id', kind: FieldKind.reference, reference: 'item'),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'unit_price', kind: FieldKind.number),
        FieldDefinition(key: 'price_adjustment', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'fixed_price', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'master_error_count', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'cancel_quantity', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'stop', kind: FieldKind.flag, required: false, readOnly: true),
        FieldDefinition(key: 'remaining_quantity', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'open_quantity', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'cancel_closed', kind: FieldKind.flag, required: false, readOnly: true),
        FieldDefinition(key: 'settlement_amount', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'delivery_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'customer_property', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
      ],
    ),
    EntityDefinition(
      key: 'shipplan',
      fields: [
        FieldDefinition(key: 'order', kind: FieldKind.reference, reference: 'order'),
        FieldDefinition(key: 'date', kind: FieldKind.date),
        FieldDefinition(key: 'carrier', kind: FieldKind.reference, reference: 'supplier'),
        FieldDefinition(key: 'arrival', kind: FieldKind.date, notBefore: 'date'),
        FieldDefinition(key: 'done', kind: FieldKind.flag, required: false),
        FieldDefinition(key: 'wait', kind: FieldKind.number, required: false, readOnly: true),
      ],
    ),
    EntityDefinition(
      key: 'shipline', owner: 'shipplan',
      fields: [
        FieldDefinition(key: 'pack', kind: FieldKind.reference, reference: 'itempack'),
        FieldDefinition(key: 'qty', kind: FieldKind.number, gt: 0),
        FieldDefinition(key: 'item', kind: FieldKind.reference, reference: 'item'),
        FieldDefinition(key: 'date', kind: FieldKind.date),
        FieldDefinition(key: 'arrival', kind: FieldKind.date, notBefore: 'date'),
        FieldDefinition(key: 'progress', kind: FieldKind.number, ge: 0, le: 100),
      ],
    ),
];
