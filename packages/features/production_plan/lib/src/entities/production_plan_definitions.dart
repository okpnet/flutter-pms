// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 生産計画の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> productionPlanDefinitions = [
    EntityDefinition(
      key: 'resplan',
      fields: [
        FieldDefinition(key: 'trans_order_detail_id', kind: FieldKind.reference, required: false, reference: 'orderdetail'),
        FieldDefinition(key: 'trans_unrecognized_detail_id', kind: FieldKind.reference, required: false, reference: 'unrecdetail'),
        FieldDefinition(key: 'register_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'inventory_resavation', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'opsplan', owner: 'resplan',
      fields: [
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'workplan', owner: 'opsplan',
      fields: [
        FieldDefinition(key: 'mstr_task_id', kind: FieldKind.reference, reference: 'task'),
        FieldDefinition(key: 'interval_plan', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'start_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'completion_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'prodrez',
      fields: [
        FieldDefinition(key: 'trans_work_plan_id', kind: FieldKind.reference, reference: 'workplan'),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'purrez',
      fields: [
        FieldDefinition(key: 'trans_purchase_detail_id', kind: FieldKind.reference, reference: 'purdetail'),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
];
