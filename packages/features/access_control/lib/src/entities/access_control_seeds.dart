// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// アクセス管理のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> accessControlSeeds = {
    'accesspath': [
      EntityRecord(id: '1a31253c-0000-4000-8000-000000000001', values: {'name_ja': '単位台帳', 'name_en': 'Unit ledger', 'usecase_path': '/e/unit', 'remarks': ''}),
      EntityRecord(id: '1a31253c-0000-4000-8000-000000000002', values: {'name_ja': '品目台帳', 'name_en': 'Item ledger', 'usecase_path': '/e/item', 'remarks': ''}),
      EntityRecord(id: '1a31253c-0000-4000-8000-000000000003', values: {'name_ja': 'アクセスパス', 'name_en': 'Access path', 'usecase_path': '/e/accesspath', 'remarks': ''}),
    ],
    'deptaccesspath': [
      EntityRecord(id: '53b17527-0000-4000-8000-000000000001', values: {'department': 'cf3da547-0000-4000-8000-000000000001', 'access_path': '1a31253c-0000-4000-8000-000000000001', 'write': '1', 'remarks': ''}),
      EntityRecord(id: '53b17527-0000-4000-8000-000000000002', values: {'department': 'cf3da547-0000-4000-8000-000000000001', 'access_path': '1a31253c-0000-4000-8000-000000000002', 'write': '', 'remarks': ''}),
      EntityRecord(id: '53b17527-0000-4000-8000-000000000003', values: {'department': 'cf3da547-0000-4000-8000-000000000002', 'access_path': '1a31253c-0000-4000-8000-000000000002', 'write': '1', 'remarks': ''}),
    ],
    'staffaccesspermission': [
      EntityRecord(id: '0fc63400-0000-4000-8000-000000000001', values: {'staff': '675ca4d1-0000-4000-8000-000000000001', 'access_path': '1a31253c-0000-4000-8000-000000000003', 'write': '1', 'remarks': '管理者に限る'}),
      EntityRecord(id: '0fc63400-0000-4000-8000-000000000002', values: {'staff': '675ca4d1-0000-4000-8000-000000000002', 'access_path': '1a31253c-0000-4000-8000-000000000001', 'write': '', 'remarks': ''}),
    ],
    'effectiveaccesspath': [
      EntityRecord(id: '4bae7b63-0000-4000-8000-000000000001', values: {'staff': '675ca4d1-0000-4000-8000-000000000001', 'access_path': '1a31253c-0000-4000-8000-000000000001', 'can_write': '1', 'from_department': '1', 'from_staff': ''}),
      EntityRecord(id: '4bae7b63-0000-4000-8000-000000000002', values: {'staff': '675ca4d1-0000-4000-8000-000000000001', 'access_path': '1a31253c-0000-4000-8000-000000000003', 'can_write': '1', 'from_department': '', 'from_staff': '1'}),
      EntityRecord(id: '4bae7b63-0000-4000-8000-000000000003', values: {'staff': '675ca4d1-0000-4000-8000-000000000002', 'access_path': '1a31253c-0000-4000-8000-000000000001', 'can_write': '', 'from_department': '', 'from_staff': '1'}),
    ],
};
