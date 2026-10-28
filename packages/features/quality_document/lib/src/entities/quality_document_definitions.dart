// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 品質管理文書の実体の定義。キーは model_providers の各モデルパッケージ(gql/*.yaml)のビュー(DB の列)に合わせる。
const List<EntityDefinition> qualityDocumentDefinitions = [
    EntityDefinition(
      key: 'doctier',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'attributive_noun'),
        FieldDefinition(key: 'tier_number', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'doc', isTree: true,
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'control_number'),
        FieldDefinition(key: 'version_code', required: false),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'mstr_document_tier_id', kind: FieldKind.reference, reference: 'doctier'),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'doccontent', isTree: true,
      fields: [
        FieldDefinition(key: 'doc', kind: FieldKind.reference, reference: 'doc'),
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'sequence', kind: FieldKind.number, required: false),
        FieldDefinition(key: 'image_content', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
    EntityDefinition(
      key: 'report',
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'is_default', kind: FieldKind.choice, required: false, options: ['はい', 'いいえ']),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
];
