// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 営業の実体の定義。キーは model_providers の各モデルパッケージ のビュー(DB の列)に合わせる。
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
        FieldDefinition(key: 'cost', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'delivery_date', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
];
