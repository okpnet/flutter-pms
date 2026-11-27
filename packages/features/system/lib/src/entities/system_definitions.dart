// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// システムの実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> systemDefinitions = [
  EntityDefinition(
    key: 'unit',
    fields: [
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(key: 'nickname', required: false),
      FieldDefinition(
        key: 'detail',
        kind: FieldKind.multiline,
        required: false,
      ),
      FieldDefinition(key: 'symbol', required: false),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'currency',
    fields: [
      FieldDefinition(key: 'code'),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(key: 'nickname', required: false),
      FieldDefinition(key: 'currency_symbol'),
      FieldDefinition(
        key: 'minor_unit',
        kind: FieldKind.number,
        required: false,
      ),
      FieldDefinition(
        key: 'rate_auto',
        kind: FieldKind.choice,
        required: false,
        options: ['はい', 'いいえ'],
      ),
      FieldDefinition(
        key: 'is_base',
        kind: FieldKind.flag,
        required: false,
        readOnly: true,
      ),
      FieldDefinition(
        key: 'latest_rate',
        kind: FieldKind.number,
        required: false,
        readOnly: true,
      ),
      FieldDefinition(
        key: 'latest_rate_date',
        kind: FieldKind.date,
        required: false,
        readOnly: true,
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'exchangerate',
    fields: [
      FieldDefinition(
        key: 'mstr_currency_id',
        kind: FieldKind.reference,
        reference: 'currency',
      ),
      FieldDefinition(key: 'rate_date', kind: FieldKind.date),
      FieldDefinition(key: 'rate', kind: FieldKind.number),
      FieldDefinition(
        key: 'auto_fetched',
        kind: FieldKind.choice,
        required: false,
        options: ['はい', 'いいえ'],
      ),
      FieldDefinition(key: 'source', required: false),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
];
