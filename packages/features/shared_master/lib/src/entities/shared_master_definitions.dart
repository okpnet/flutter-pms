// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 共有マスタの実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> sharedMasterDefinitions = [
    EntityDefinition(
      key: 'stakeholder', uniqueKeys: [['code']], reverseLists: [ReverseList(entity: 'itemsupplier', field: 'supplier'), ReverseList(entity: 'audit', field: 'mstr_stakeholder_id')],
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'control_code', required: false),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'is_customer', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'is_supplier', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'is_logistics', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'mail', required: false),
        FieldDefinition(key: 'mstr_shipping_kind_id', kind: FieldKind.reference, required: false, reference: 'shipkind'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'contact', owner: 'stakeholder',
      fields: [
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'dept', required: false),
        FieldDefinition(key: 'tel', required: false),
        FieldDefinition(key: 'mail', required: false),
      ],
    ),
];
