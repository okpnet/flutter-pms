// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// システムの実体の定義。キーは model_providers の各モデルパッケージ のビュー(DB の列)に合わせる。
const List<EntityDefinition> systemDefinitions = [
    EntityDefinition(
      key: 'unit',
      fields: [
        FieldDefinition(key: 'name'),
        FieldDefinition(key: 'pronunciation', required: false),
        FieldDefinition(key: 'nickname', required: false),
        FieldDefinition(key: 'detail', kind: FieldKind.multiline, required: false),
        FieldDefinition(key: 'symbol', required: false),
        FieldDefinition(key: 'remarks', kind: FieldKind.multiline, required: false),
      ],
    ),
];
