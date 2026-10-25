// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 資源の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> resourceDefinitions = [
    EntityDefinition(
      key: 'capability',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'reference_value', kind: FieldKind.number),
        FieldDefinition(key: 'max', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'min', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'step', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'license',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'public_license', kind: FieldKind.choice, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'customer_license', kind: FieldKind.choice, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'organization_license', kind: FieldKind.choice, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'location', isTree: true,
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'control_code', required: false),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'type', kind: FieldKind.choice, options: ['サイト', 'エリア', '区画', 'ライン', 'その他']),
        FieldDefinition(key: 'use', kind: FieldKind.choice, options: ['使用中', '使用停止']),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'equipmentcategory',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'start', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'end', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'equipment',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'control_code', required: false),
        FieldDefinition(key: 'label_code', required: false),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'category', kind: FieldKind.reference, reference: 'equipmentcategory'),
        FieldDefinition(key: 'location', kind: FieldKind.reference, reference: 'location'),
        FieldDefinition(key: 'installed', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'status', kind: FieldKind.choice, options: ['稼働中', '休止']),
      ],
    ),
    EntityDefinition(
      key: 'inspectionkind',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'cycle', kind: FieldKind.choice, options: ['日', '月', '年']),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'inspectionitem',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'kind', kind: FieldKind.reference, reference: 'inspectionkind'),
        FieldDefinition(key: 'part'),
        FieldDefinition(key: 'criteria', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'inspectionformula', owner: 'inspectionitem',
      fields: [
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'expr'),
        FieldDefinition(key: 'unit', required: false),
        FieldDefinition(key: 'base', required: false),
      ],
    ),
    EntityDefinition(
      key: 'inspectionoperation',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'equipment', kind: FieldKind.reference, reference: 'equipment'),
        FieldDefinition(key: 'kind', kind: FieldKind.reference, reference: 'inspectionkind'),
        FieldDefinition(key: 'cycle', kind: FieldKind.choice, options: ['日', '月', '年']),
      ],
    ),
    EntityDefinition(
      key: 'operationline', owner: 'inspectionoperation',
      fields: [
        FieldDefinition(key: 'item', kind: FieldKind.reference, reference: 'inspectionitem'),
        FieldDefinition(key: 'seq', kind: FieldKind.number),
        FieldDefinition(key: 'role', required: false),
      ],
    ),
    EntityDefinition(
      key: 'inspectionschedule',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'operation', kind: FieldKind.reference, reference: 'inspectionoperation'),
        FieldDefinition(key: 'month'),
        FieldDefinition(key: 'status', kind: FieldKind.choice, options: ['計画', '実施中', '完了']),
      ],
    ),
    EntityDefinition(
      key: 'scheduledetail', owner: 'inspectionschedule',
      fields: [
        FieldDefinition(key: 'item', kind: FieldKind.reference, reference: 'inspectionitem'),
        FieldDefinition(key: 'start', kind: FieldKind.date),
        FieldDefinition(key: 'end', kind: FieldKind.date, required: false),
        FieldDefinition(key: 'staff', kind: FieldKind.reference, reference: 'staff'),
      ],
    ),
    EntityDefinition(
      key: 'inspectionresult', owner: 'scheduledetail',
      fields: [
        FieldDefinition(key: 'date', kind: FieldKind.date),
        FieldDefinition(key: 'staff', kind: FieldKind.reference, reference: 'staff'),
        FieldDefinition(key: 'result', kind: FieldKind.choice, options: ['合格', '不合格', '要再点検']),
        FieldDefinition(key: 'value', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'note', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'inspectionfile', owner: 'inspectionresult',
      fields: [
        FieldDefinition(key: 'fname'),
        FieldDefinition(key: 'ftype', kind: FieldKind.choice, options: ['写真', '帳票']),
        FieldDefinition(key: 'regdate', kind: FieldKind.date),
      ],
    ),
];
