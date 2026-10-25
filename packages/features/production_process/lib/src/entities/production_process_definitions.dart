// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 工程の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> productionProcessDefinitions = [
    EntityDefinition(
      key: 'taskgroup',
      fields: [
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'desc', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'task', isTree: true,
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'class', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'default_time', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'taskres', owner: 'task',
      fields: [
        FieldDefinition(key: 'info_department_id', kind: FieldKind.reference, required: false, reference: 'department'),
        FieldDefinition(key: 'mstr_stakeholder_id', kind: FieldKind.reference, required: false, reference: 'customer'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'operation',
      fields: [
        FieldDefinition(key: 'control_code', required: false),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'optask', owner: 'operation',
      fields: [
        FieldDefinition(key: 'task', kind: FieldKind.reference, reference: 'task'),
        FieldDefinition(key: 'seq', kind: FieldKind.number),
      ],
    ),
    EntityDefinition(
      key: 'opapply', owner: 'operation',
      fields: [
        FieldDefinition(key: 'item', kind: FieldKind.reference, reference: 'item'),
      ],
    ),
];
