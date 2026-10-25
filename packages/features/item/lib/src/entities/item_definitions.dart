// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 品目の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> itemDefinitions = [
    EntityDefinition(
      key: 'itemkind',
      fields: [
        FieldDefinition(key: 'code', required: false),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'hscode',
      fields: [
        FieldDefinition(key: 'code', required: false),
        FieldDefinition(key: 'mstr_item_id', kind: FieldKind.reference, reference: 'item'),
        FieldDefinition(key: 'iso3166_3', required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'item', isTree: true,
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'identification', required: false),
        FieldDefinition(key: 'control_code', required: false),
        FieldDefinition(key: 'label_code', required: false),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'mstr_item_kind_id', kind: FieldKind.reference, reference: 'itemkind'),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'shared_unit_id', kind: FieldKind.reference, required: false, reference: 'unit'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'itemhs', owner: 'item',
      fields: [
        FieldDefinition(key: 'hs', kind: FieldKind.reference, reference: 'hscode'),
      ],
    ),
    EntityDefinition(
      key: 'itemsizekind',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'names'),
        FieldDefinition(key: 'shared_unit_id', kind: FieldKind.reference, reference: 'unit'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'itemsize', owner: 'item',
      fields: [
        FieldDefinition(key: 'mstr_item_size_kind_id', kind: FieldKind.reference, reference: 'itemsizekind'),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'itempack', owner: 'item',
      fields: [
        FieldDefinition(key: 'label'),
        FieldDefinition(key: 'w', kind: FieldKind.number),
        FieldDefinition(key: 'd', kind: FieldKind.number),
        FieldDefinition(key: 'h', kind: FieldKind.number),
        FieldDefinition(key: 'unit', kind: FieldKind.reference, reference: 'unit'),
      ],
    ),
    EntityDefinition(
      key: 'itemop', owner: 'item',
      fields: [
        FieldDefinition(key: 'control_code', required: false),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'mstr_operation_id', kind: FieldKind.reference, reference: 'operation'),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'itemmaker', owner: 'item',
      fields: [
        FieldDefinition(key: 'maker'),
        FieldDefinition(key: 'partno'),
      ],
    ),
    EntityDefinition(
      key: 'itemoptask', owner: 'itemop',
      fields: [
        FieldDefinition(key: 'mstr_item_id', kind: FieldKind.reference, reference: 'item'),
        FieldDefinition(key: 'sequence', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'default_interval', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
];
