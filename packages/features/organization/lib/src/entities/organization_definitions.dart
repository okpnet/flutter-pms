// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 会社情報の実体の定義。キーは model_providers の各モデルパッケージ(gql/*.yaml)のビュー(DB の列)に合わせる。
const List<EntityDefinition> organizationDefinitions = [
  EntityDefinition(
    key: 'company',
    fields: [
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(key: 'nickname', required: false),
      FieldDefinition(key: 'ceo'),
      FieldDefinition(key: 'web_page', required: false),
      FieldDefinition(key: 'country_code_2', required: false),
      FieldDefinition(key: 'zip_code', required: false),
      FieldDefinition(key: 'prefecture', required: false),
      FieldDefinition(key: 'city', required: false),
      FieldDefinition(key: 'building', required: false),
      FieldDefinition(key: 'phone', required: false),
      FieldDefinition(key: 'fax_number', required: false),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'provision',
    owner: 'company',
    fields: [
      FieldDefinition(
        key: 'kind',
        kind: FieldKind.choice,
        options: ['製品', 'サービス'],
      ),
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'detail', kind: FieldKind.multiline),
    ],
  ),
  EntityDefinition(
    key: 'position',
    owner: 'company',
    fields: [
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(key: 'priority', kind: FieldKind.number),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'assignment',
    owner: 'position',
    uniqueKeys: [
      ['staff'],
    ],
    fields: [
      FieldDefinition(
        key: 'staff',
        kind: FieldKind.reference,
        reference: 'staff',
      ),
      FieldDefinition(
        key: 'enable',
        kind: FieldKind.choice,
        options: ['はい', 'いいえ'],
      ),
      FieldDefinition(key: 'priority', kind: FieldKind.number, required: false),
      FieldDefinition(
        key: 'office',
        kind: FieldKind.reference,
        required: false,
        reference: 'site',
      ),
      FieldDefinition(
        key: 'department',
        kind: FieldKind.reference,
        required: false,
        reference: 'department',
      ),
    ],
  ),
  EntityDefinition(
    key: 'site',
    uniqueKeys: [
      ['code'],
    ],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(key: 'nickname', required: false),
      FieldDefinition(key: 'country_code_2', required: false),
      FieldDefinition(key: 'zip_code', required: false),
      FieldDefinition(key: 'prefecture', required: false),
      FieldDefinition(key: 'city', required: false),
      FieldDefinition(key: 'building', required: false),
      FieldDefinition(key: 'phone', required: false),
      FieldDefinition(key: 'fax_number', required: false),
    ],
  ),
  EntityDefinition(
    key: 'deptkind',
    uniqueKeys: [
      ['name'],
    ],
    fields: [
      FieldDefinition(key: 'name'),
      FieldDefinition(
        key: 'detail',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'department',
    isTree: true,
    uniqueKeys: [
      ['code'],
    ],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(key: 'nickname', required: false),
      FieldDefinition(
        key: 'site',
        kind: FieldKind.reference,
        required: false,
        reference: 'site',
      ),
    ],
  ),
  EntityDefinition(
    key: 'departmentkind',
    owner: 'department',
    uniqueKeys: [
      ['kind'],
    ],
    fields: [
      FieldDefinition(
        key: 'kind',
        kind: FieldKind.reference,
        reference: 'deptkind',
      ),
    ],
  ),
  EntityDefinition(
    key: 'staff',
    uniqueKeys: [
      ['no'],
    ],
    fields: [
      FieldDefinition(key: 'no'),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(
        key: 'sex',
        kind: FieldKind.choice,
        required: false,
        options: ['男性', '女性', 'その他'],
      ),
      FieldDefinition(key: 'phone', required: false),
      FieldDefinition(key: 'private_phone', required: false),
      FieldDefinition(key: 'symbol', required: false),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'staffcapability',
    owner: 'staff',
    uniqueKeys: [
      ['capability'],
    ],
    fields: [
      FieldDefinition(
        key: 'capability',
        kind: FieldKind.reference,
        reference: 'capability',
      ),
      FieldDefinition(key: 'value', kind: FieldKind.number),
      FieldDefinition(
        key: 'stop',
        kind: FieldKind.choice,
        options: ['はい', 'いいえ'],
      ),
    ],
  ),
  EntityDefinition(
    key: 'stafflicense',
    owner: 'staff',
    uniqueKeys: [
      ['license'],
    ],
    fields: [
      FieldDefinition(
        key: 'license',
        kind: FieldKind.reference,
        reference: 'license',
      ),
      FieldDefinition(key: 'number', required: false),
      FieldDefinition(key: 'acquired', kind: FieldKind.date),
      FieldDefinition(key: 'expires', kind: FieldKind.date, required: false),
      FieldDefinition(
        key: 'abeyance',
        kind: FieldKind.choice,
        options: ['はい', 'いいえ'],
      ),
      FieldDefinition(
        key: 'abeyance_at',
        kind: FieldKind.date,
        required: false,
      ),
      FieldDefinition(
        key: 'revocation',
        kind: FieldKind.choice,
        options: ['はい', 'いいえ'],
      ),
      FieldDefinition(
        key: 'revocation_at',
        kind: FieldKind.date,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'approvalpattern',
    fields: [
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'approver',
    owner: 'approvalpattern',
    fields: [
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(key: 'nickname', required: false),
      FieldDefinition(
        key: 'department',
        kind: FieldKind.reference,
        required: false,
        reference: 'department',
      ),
      FieldDefinition(
        key: 'position',
        kind: FieldKind.reference,
        required: false,
        reference: 'position',
      ),
      FieldDefinition(key: 'priority', kind: FieldKind.number, required: false),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
];
