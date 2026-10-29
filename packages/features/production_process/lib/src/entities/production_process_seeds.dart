// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 工程のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> productionProcessSeeds = {
    'taskgroup': [
      EntityRecord(id: '11e8b5ff-0000-4000-8000-000000000001', values: {'name': '切削加工', 'desc': ''}),
      EntityRecord(id: '11e8b5ff-0000-4000-8000-000000000002', values: {'name': '組立', 'desc': ''}),
      EntityRecord(id: '11e8b5ff-0000-4000-8000-000000000003', values: {'name': '検査', 'desc': ''}),
    ],
    'task': [
      EntityRecord(id: 'f448886c-0000-4000-8000-000000000001', values: {'code': 'T-100', 'name': '加工', 'pronunciation': 'カコウ', 'nickname': '', 'detail': '', 'class': '10', 'default_time': '10', 'remarks': ''}),
      EntityRecord(id: 'f448886c-0000-4000-8000-000000000002', values: {'code': 'T-110', 'name': '旋削', 'pronunciation': 'センサク', 'nickname': '', 'detail': '', 'class': '20', 'default_time': '20', 'remarks': ''}, parentId: 'f448886c-0000-4000-8000-000000000001'),
      EntityRecord(id: 'f448886c-0000-4000-8000-000000000003', values: {'code': 'T-120', 'name': 'フライス', 'pronunciation': 'フライス', 'nickname': '', 'detail': '', 'class': '30', 'default_time': '30', 'remarks': ''}, parentId: 'f448886c-0000-4000-8000-000000000001'),
      EntityRecord(id: 'f448886c-0000-4000-8000-000000000004', values: {'code': 'T-200', 'name': '組立', 'pronunciation': 'クミタテ', 'nickname': '', 'detail': '', 'class': '40', 'default_time': '40', 'remarks': ''}),
      EntityRecord(id: 'f448886c-0000-4000-8000-000000000005', values: {'code': 'T-210', 'name': '最終検査', 'pronunciation': 'サイシュウケンサ', 'nickname': '', 'detail': '', 'class': '50', 'default_time': '50', 'remarks': ''}, parentId: 'f448886c-0000-4000-8000-000000000004'),
    ],
    'taskres': [
      EntityRecord(id: 'c6bd3dda-0000-4000-8000-000000000001', values: {'info_department_id': '', 'remarks': '', 'priority': ''}, parentId: 'f448886c-0000-4000-8000-000000000002'),
      EntityRecord(id: 'c6bd3dda-0000-4000-8000-000000000002', values: {'info_department_id': '', 'remarks': '', 'priority': ''}, parentId: 'f448886c-0000-4000-8000-000000000003'),
    ],
    'operation': [
      EntityRecord(id: '533e8106-0000-4000-8000-000000000001', values: {'control_code': 'OPE-001', 'name': 'ユニットA製造', 'pronunciation': 'ユニットエーセイゾウ', 'nickname': '', 'detail': '', 'remarks': ''}),
      EntityRecord(id: '533e8106-0000-4000-8000-000000000002', values: {'control_code': 'OPE-002', 'name': '部品加工', 'pronunciation': 'ブヒンカコウ', 'nickname': '', 'detail': '', 'remarks': ''}),
    ],
    'optask': [
      EntityRecord(id: '56249027-0000-4000-8000-000000000001', values: {'task': 'f448886c-0000-4000-8000-000000000002', 'seq': '10'}, parentId: '533e8106-0000-4000-8000-000000000001'),
      EntityRecord(id: '56249027-0000-4000-8000-000000000002', values: {'task': 'f448886c-0000-4000-8000-000000000003', 'seq': '20'}, parentId: '533e8106-0000-4000-8000-000000000001'),
      EntityRecord(id: '56249027-0000-4000-8000-000000000003', values: {'task': 'f448886c-0000-4000-8000-000000000005', 'seq': '30'}, parentId: '533e8106-0000-4000-8000-000000000001'),
      EntityRecord(id: '56249027-0000-4000-8000-000000000004', values: {'task': 'f448886c-0000-4000-8000-000000000002', 'seq': '10'}, parentId: '533e8106-0000-4000-8000-000000000002'),
    ],
    'opapply': [
      EntityRecord(id: '41df26c2-0000-4000-8000-000000000001', values: {'item': '9f3833e6-0000-4000-8000-000000000001'}, parentId: '533e8106-0000-4000-8000-000000000001'),
      EntityRecord(id: '41df26c2-0000-4000-8000-000000000002', values: {'item': '9f3833e6-0000-4000-8000-000000000002'}, parentId: '533e8106-0000-4000-8000-000000000002'),
    ],
};
