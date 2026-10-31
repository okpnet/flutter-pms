// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 生産計画の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> productionPlanDefinitions = [
    EntityDefinition(
      key: 'resplan',
      fields: [
        FieldDefinition(key: 'trans_order_detail_id', kind: FieldKind.reference, required: false, reference: 'orderdetail'),
        FieldDefinition(key: 'trans_unrecognized_detail_id', kind: FieldKind.reference, required: false, reference: 'unrecdetail'),
        FieldDefinition(key: 'parent_trans_operations_plan_id', kind: FieldKind.reference, required: false, reference: 'opsplan'),
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
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'workplan', owner: 'opsplan',
      fields: [
        FieldDefinition(key: 'mstr_task_id', kind: FieldKind.reference, reference: 'task'),
        FieldDefinition(key: 'sequence', kind: FieldKind.number, required: false),
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
    EntityDefinition(
      key: 'mrppending', viewOnly: true,
      fields: [
        FieldDefinition(key: 'kind', required: false, readOnly: true),
        FieldDefinition(key: 'item', kind: FieldKind.reference, required: false, reference: 'item', readOnly: true),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'need_at', kind: FieldKind.date, required: false, readOnly: true),
        FieldDefinition(key: 'release_at', kind: FieldKind.date, required: false, readOnly: true),
        FieldDefinition(key: 'due_at', kind: FieldKind.date, required: false, readOnly: true),
        FieldDefinition(key: 'late', kind: FieldKind.flag, required: false, readOnly: true),
        FieldDefinition(key: 'message', required: false, readOnly: true),
        FieldDefinition(key: 'symbol', required: false, readOnly: true),
      ],
    ),
    EntityDefinition(
      key: 'mrppurchase', viewOnly: true,
      fields: [
        FieldDefinition(key: 'kind', required: false, readOnly: true),
        FieldDefinition(key: 'supplier', kind: FieldKind.reference, required: false, reference: 'supplier', readOnly: true),
        FieldDefinition(key: 'release_date', kind: FieldKind.date, required: false, readOnly: true),
        FieldDefinition(key: 'due_date', kind: FieldKind.date, required: false, readOnly: true),
        FieldDefinition(key: 'line_count', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'amount', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'late_count', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'pending_count', kind: FieldKind.number, required: false, readOnly: true),
      ],
    ),
    EntityDefinition(
      key: 'mrpissue', viewOnly: true,
      fields: [
        FieldDefinition(key: 'item', kind: FieldKind.reference, required: false, reference: 'item', readOnly: true),
        FieldDefinition(key: 'issue_code', required: false, readOnly: true),
        FieldDefinition(key: 'severity', required: false, readOnly: true),
        FieldDefinition(key: 'message', required: false, readOnly: true),
        FieldDefinition(key: 'ref_table', required: false, readOnly: true),
      ],
    ),
    EntityDefinition(
      key: 'mrpcoverage', viewOnly: true,
      fields: [
        FieldDefinition(key: 'item', kind: FieldKind.reference, required: false, reference: 'item', readOnly: true),
        FieldDefinition(key: 'plan_kind', required: false, readOnly: true),
        FieldDefinition(key: 'deadline', kind: FieldKind.date, required: false, readOnly: true),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'reserved_stock', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'reserved_purchase', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'reserved_production', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'shortage', kind: FieldKind.number, required: false, readOnly: true),
      ],
    ),
];
