// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// アクセス管理の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> accessControlDefinitions = [
    EntityDefinition(
      key: 'accesspath',
      fields: [
        FieldDefinition(key: 'name_ja'),
        FieldDefinition(key: 'name_en'),
        FieldDefinition(key: 'usecase_path'),
        FieldDefinition(key: 'symbol', required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'deptaccesspath',
      fields: [
        FieldDefinition(key: 'department', kind: FieldKind.reference, reference: 'department'),
        FieldDefinition(key: 'access_path', kind: FieldKind.reference, reference: 'accesspath'),
        FieldDefinition(key: 'write', kind: FieldKind.flag, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'staffaccesspermission',
      fields: [
        FieldDefinition(key: 'staff', kind: FieldKind.reference, reference: 'staff'),
        FieldDefinition(key: 'access_path', kind: FieldKind.reference, reference: 'accesspath'),
        FieldDefinition(key: 'write', kind: FieldKind.flag, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'effectiveaccesspath', viewOnly: true,
      fields: [
        FieldDefinition(key: 'staff', kind: FieldKind.reference, required: false, reference: 'staff', readOnly: true),
        FieldDefinition(key: 'access_path', kind: FieldKind.reference, required: false, reference: 'accesspath', readOnly: true),
        FieldDefinition(key: 'can_write', kind: FieldKind.flag, required: false, readOnly: true),
        FieldDefinition(key: 'from_department', kind: FieldKind.flag, required: false, readOnly: true),
        FieldDefinition(key: 'from_staff', kind: FieldKind.flag, required: false, readOnly: true),
      ],
    ),
];
