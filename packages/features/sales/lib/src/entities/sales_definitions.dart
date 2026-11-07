// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 営業の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> salesDefinitions = [
    EntityDefinition(
      key: 'order',
      fields: [
        FieldDefinition(key: 'order_number'),
        FieldDefinition(key: 'customer_order_number', required: false),
        FieldDefinition(key: 'order_processing_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'delivery_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'orderdetail', owner: 'order',
      fields: [
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'unit_price', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'price_adjustment', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'fixed_price', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'master_error_count', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'delivery_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
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
