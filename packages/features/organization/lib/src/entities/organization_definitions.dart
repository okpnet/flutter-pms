// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 会社情報の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> organizationDefinitions = [
    EntityDefinition(
      key: 'company',
      fields: [
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'ceo'),
        FieldDefinition(key: 'ceo_title'),
        FieldDefinition(key: 'web_page', required: false),
        FieldDefinition(key: 'address'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'provision', owner: 'company',
      fields: [
        FieldDefinition(key: 'kind', kind: FieldKind.choice, options: ['製品', 'サービス']),
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline),
      ],
    ),
    EntityDefinition(
      key: 'position', owner: 'company',
      fields: [
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'priority', kind: FieldKind.number),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'assignment', owner: 'position',
      fields: [
        FieldDefinition(key: 'staff', kind: FieldKind.reference, reference: 'staff'),
      ],
    ),
    EntityDefinition(
      key: 'site',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'type', kind: FieldKind.choice, options: ['本社', '工場', '物流', '営業所']),
        FieldDefinition(key: 'address'),
      ],
    ),
    EntityDefinition(
      key: 'deptkind',
      fields: [
        FieldDefinition(key: 'name'),
      ],
    ),
    EntityDefinition(
      key: 'department', isTree: true,
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'site', kind: FieldKind.reference, required: false, reference: 'site'),
      ],
    ),
    EntityDefinition(
      key: 'departmentkind', owner: 'department',
      fields: [
        FieldDefinition(key: 'kind', kind: FieldKind.reference, reference: 'deptkind'),
      ],
    ),
    EntityDefinition(
      key: 'staff',
      fields: [
        FieldDefinition(key: 'no'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'sex', kind: FieldKind.choice, required: false, options: ['男性', '女性', 'その他']),
        FieldDefinition(key: 'phone', required: false),
        FieldDefinition(key: 'private_phone', required: false),
        FieldDefinition(key: 'site', kind: FieldKind.reference, reference: 'site'),
        FieldDefinition(key: 'type', kind: FieldKind.choice, options: ['社員', 'パート', '派遣']),
        FieldDefinition(key: 'dept', kind: FieldKind.reference, required: false, reference: 'department'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'staffcapability', owner: 'staff',
      fields: [
        FieldDefinition(key: 'capability', kind: FieldKind.reference, reference: 'capability'),
        FieldDefinition(key: 'level', kind: FieldKind.choice, options: ['見習い', '一人で作業可', '他者の指導可']),
      ],
    ),
    EntityDefinition(
      key: 'stafflicense', owner: 'staff',
      fields: [
        FieldDefinition(key: 'license', kind: FieldKind.reference, reference: 'license'),
        FieldDefinition(key: 'number', required: false),
        FieldDefinition(key: 'acquired', kind: FieldKind.date),
        FieldDefinition(key: 'expires', kind: FieldKind.date, required: false),
      ],
    ),
    EntityDefinition(
      key: 'approvalpattern',
      fields: [
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'approvalscope', owner: 'approvalpattern',
      fields: [
        FieldDefinition(key: 'step', kind: FieldKind.number),
        FieldDefinition(key: 'position', kind: FieldKind.reference, reference: 'position'),
        FieldDefinition(key: 'department', kind: FieldKind.reference, reference: 'department'),
        FieldDefinition(key: 'include_children', kind: FieldKind.choice, options: ['はい', 'いいえ']),
      ],
    ),
    EntityDefinition(
      key: 'approver', owner: 'approvalscope',
      fields: [
        FieldDefinition(key: 'staff', kind: FieldKind.reference, reference: 'staff'),
        FieldDefinition(key: 'kind', kind: FieldKind.choice, options: ['承認者', '代理承認者']),
        FieldDefinition(key: 'valid_from', kind: FieldKind.date),
        FieldDefinition(key: 'valid_to', kind: FieldKind.date, required: false),
      ],
    ),
];
