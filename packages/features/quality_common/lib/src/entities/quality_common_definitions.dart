// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 品質共通の実体の定義。キーは model_providers の各モデルパッケージ のビュー(DB の列)に合わせる。
const List<EntityDefinition> qualityCommonDefinitions = [
    EntityDefinition(
      key: 'disposal',
      fields: [
        FieldDefinition(key: 'trans_complaint_id', kind: FieldKind.reference, reference: 'complaint'),
        FieldDefinition(key: 'disposal_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'title'),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'approvals', required: false),
        FieldDefinition(key: 'approval_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'recur',
      fields: [
        FieldDefinition(key: 'trans_disposal_id', kind: FieldKind.reference, reference: 'disposal'),
        FieldDefinition(key: 'occurent_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'approvals', required: false),
        FieldDefinition(key: 'title'),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'obsdisp',
      fields: [
        FieldDefinition(key: 'enable', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'observe_schedule', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'observe_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'obsprev',
      fields: [
        FieldDefinition(key: 'trans_observer_disposal_id', kind: FieldKind.reference, reference: 'obsdisp'),
        FieldDefinition(key: 'trans_recurrence_prevention_id', kind: FieldKind.reference, reference: 'recur'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'risk',
      fields: [
        FieldDefinition(key: 'title'),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'frequency', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'momentous', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'action', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'residual_risk_id', kind: FieldKind.reference, required: false, reference: 'risk'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'prevention', owner: 'risk',
      fields: [
        FieldDefinition(key: 'number', required: false),
        FieldDefinition(key: 'title'),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'preventiondetail', owner: 'prevention',
      fields: [
        FieldDefinition(key: 'number', required: false),
        FieldDefinition(key: 'trans_risk_id', kind: FieldKind.reference, reference: 'risk'),
        FieldDefinition(key: 'info_department_id', kind: FieldKind.reference, reference: 'department'),
        FieldDefinition(key: 'start_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'stop_at', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'title'),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'auditstdcheck',
      fields: [
        FieldDefinition(key: 'code', required: false),
        FieldDefinition(key: 'control_code', required: false),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'mstr_audit_std_id', kind: FieldKind.reference, reference: 'auditstd'),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'type_class', kind: FieldKind.number),
        FieldDefinition(key: 'formula_class', kind: FieldKind.number),
        FieldDefinition(key: 'arg_class', required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
];
