// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 資源の実体の定義。キーは model_providers の各モデルパッケージ のビュー(DB の列)に合わせる。
const List<EntityDefinition> resourceDefinitions = [
  EntityDefinition(
    key: 'capability',
    uniqueKeys: [
      ['code'],
    ],
    reverseLists: [ReverseList(entity: 'staffcapability', field: 'capability')],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(
        key: 'detail',
        kind: FieldKind.multiline,
        required: false,
      ),
      FieldDefinition(key: 'reference_value', kind: FieldKind.number),
      FieldDefinition(key: 'max', kind: FieldKind.number, required: false),
      FieldDefinition(key: 'min', kind: FieldKind.number, required: false),
      FieldDefinition(key: 'step', kind: FieldKind.number, required: false),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'license',
    uniqueKeys: [
      ['code'],
    ],
    reverseLists: [ReverseList(entity: 'stafflicense', field: 'license')],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(
        key: 'detail',
        kind: FieldKind.multiline,
        required: false,
      ),
      FieldDefinition(
        key: 'public_license',
        kind: FieldKind.choice,
        options: ['はい', 'いいえ'],
      ),
      FieldDefinition(
        key: 'customer_license',
        kind: FieldKind.choice,
        options: ['はい', 'いいえ'],
      ),
      FieldDefinition(
        key: 'organization_license',
        kind: FieldKind.choice,
        options: ['はい', 'いいえ'],
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'location',
    isTree: true,
    uniqueKeys: [
      ['code'],
    ],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'control_code', required: false),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(
        key: 'use',
        kind: FieldKind.choice,
        options: ['使用中', '使用停止'],
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'equipmentcategory',
    uniqueKeys: [
      ['code'],
    ],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(key: 'start', kind: FieldKind.date, required: false),
      FieldDefinition(key: 'end', kind: FieldKind.date, required: false),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'equipment',
    uniqueKeys: [
      ['code'],
    ],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'control_code', required: false),
      FieldDefinition(key: 'label_code', required: false),
      FieldDefinition(
        key: 'item',
        kind: FieldKind.reference,
        reference: 'item',
        picker: true,
      ),
      FieldDefinition(
        key: 'category',
        kind: FieldKind.reference,
        reference: 'equipmentcategory',
      ),
      FieldDefinition(
        key: 'location',
        kind: FieldKind.reference,
        reference: 'location',
      ),
    ],
  ),
  EntityDefinition(
    key: 'inspectionkind',
    uniqueKeys: [
      ['code'],
    ],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(
        key: 'cycle',
        kind: FieldKind.choice,
        options: ['日', '月', '年'],
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'inspectionitem',
    uniqueKeys: [
      ['code'],
    ],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(
        key: 'kind',
        kind: FieldKind.reference,
        reference: 'inspectionkind',
      ),
    ],
  ),
  EntityDefinition(
    key: 'inspectionformula',
    owner: 'inspectionitem',
    fields: [FieldDefinition(key: 'expr', kind: FieldKind.condition)],
  ),
  EntityDefinition(
    key: 'inspectionoperation',
    uniqueKeys: [
      ['code'],
    ],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(
        key: 'equipment',
        kind: FieldKind.reference,
        reference: 'equipment',
      ),
      FieldDefinition(
        key: 'kind',
        kind: FieldKind.reference,
        reference: 'inspectionkind',
      ),
    ],
  ),
  EntityDefinition(
    key: 'operationline',
    owner: 'inspectionoperation',
    uniqueKeys: [
      ['item'],
    ],
    fields: [
      FieldDefinition(
        key: 'item',
        kind: FieldKind.reference,
        reference: 'inspectionitem',
      ),
      FieldDefinition(key: 'seq', kind: FieldKind.number),
      FieldDefinition(key: 'role', required: false),
    ],
  ),
  EntityDefinition(
    key: 'inspectionschedule',
    uniqueKeys: [
      ['code'],
    ],
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(
        key: 'operation',
        kind: FieldKind.reference,
        reference: 'inspectionoperation',
      ),
    ],
  ),
  EntityDefinition(
    key: 'scheduledetail',
    owner: 'inspectionschedule',
    fields: [
      FieldDefinition(
        key: 'item',
        kind: FieldKind.reference,
        reference: 'inspectionitem',
      ),
      FieldDefinition(key: 'start', kind: FieldKind.date),
      FieldDefinition(key: 'end', kind: FieldKind.date, required: false),
      FieldDefinition(
        key: 'staff',
        kind: FieldKind.reference,
        reference: 'staff',
      ),
    ],
  ),
  EntityDefinition(
    key: 'inspectionresult',
    owner: 'scheduledetail',
    fields: [
      FieldDefinition(key: 'date', kind: FieldKind.date),
      FieldDefinition(
        key: 'staff',
        kind: FieldKind.reference,
        reference: 'staff',
      ),
      FieldDefinition(
        key: 'result',
        kind: FieldKind.choice,
        options: ['合格', '不合格', '要再点検'],
      ),
      FieldDefinition(key: 'value', kind: FieldKind.multiline, required: false),
      FieldDefinition(key: 'note', kind: FieldKind.multiline, required: false),
    ],
  ),
  EntityDefinition(
    key: 'inspectionfile',
    owner: 'inspectionresult',
    fields: [
      FieldDefinition(key: 'fname'),
      FieldDefinition(
        key: 'ftype',
        kind: FieldKind.choice,
        options: ['写真', '帳票'],
      ),
      FieldDefinition(key: 'regdate', kind: FieldKind.date),
    ],
  ),
];
