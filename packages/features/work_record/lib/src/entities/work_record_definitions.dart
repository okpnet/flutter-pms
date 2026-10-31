// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 作業実績の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> workRecordDefinitions = [
    EntityDefinition(
      key: 'container', isTree: true,
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'invapply',
      fields: [
        FieldDefinition(key: 'register_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'trans_inventory_request_id', kind: FieldKind.reference, required: false, reference: 'invreq'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'invreq',
      fields: [
        FieldDefinition(key: 'register_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'register_plan_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'trans_purchase_rez_id', kind: FieldKind.reference, required: false, reference: 'purrez'),
        FieldDefinition(key: 'trans_product_rez_id', kind: FieldKind.reference, required: false, reference: 'prodrez'),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'trans_resource_plan_id', kind: FieldKind.reference, required: false, reference: 'resplan'),
      ],
    ),
    EntityDefinition(
      key: 'certificate',
      fields: [
        FieldDefinition(key: 'serial', required: false),
        FieldDefinition(key: 'title'),
        FieldDefinition(key: 'class', required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'workrec',
      fields: [
        FieldDefinition(key: 'trans_work_plan_id', kind: FieldKind.reference, reference: 'workplan'),
        FieldDefinition(key: 'nth_time', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'start_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'stop_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'qty', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'wrcert', owner: 'workrec',
      fields: [
        FieldDefinition(key: 'trans_certificate_id', kind: FieldKind.reference, reference: 'certificate'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'mrpvisiter', viewOnly: true,
      fields: [
        FieldDefinition(key: 'item', kind: FieldKind.reference, required: false, reference: 'item', readOnly: true),
        FieldDefinition(key: 'item_count', kind: FieldKind.number, required: false, readOnly: true),
        FieldDefinition(key: 'finished', kind: FieldKind.flag, required: false, readOnly: true),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false, readOnly: true),
      ],
    ),
];
