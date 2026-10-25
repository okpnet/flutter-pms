// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 生産計画のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> productionPlanSeeds = {
    'resplan': [
      EntityRecord(id: '5518c986-0000-4000-8000-000000000001', values: {'trans_order_detail_id': '44b192d6-0000-4000-8000-000000000001', 'trans_unrecognized_detail_id': 'a1bcd19d-0000-4000-8000-000000000001', 'register_at': '2026-10-01', 'quantity': '10', 'inventory_resavation': '10', 'deadline': '2026-10-10', 'remarks': ''}),
      EntityRecord(id: '5518c986-0000-4000-8000-000000000002', values: {'trans_order_detail_id': '44b192d6-0000-4000-8000-000000000001', 'trans_unrecognized_detail_id': 'a1bcd19d-0000-4000-8000-000000000001', 'register_at': '2026-11-01', 'quantity': '20', 'inventory_resavation': '20', 'deadline': '2026-10-11', 'remarks': ''}),
    ],
    'opsplan': [
      EntityRecord(id: 'c32b4dd4-0000-4000-8000-000000000001', values: {'deadline': '2026-11-10', 'remarks': ''}, parentId: '5518c986-0000-4000-8000-000000000001'),
      EntityRecord(id: 'c32b4dd4-0000-4000-8000-000000000002', values: {'deadline': '2026-11-05', 'remarks': ''}, parentId: '5518c986-0000-4000-8000-000000000001'),
    ],
    'workplan': [
      EntityRecord(id: '92f13413-0000-4000-8000-000000000001', values: {'mstr_task_id': 'f448886c-0000-4000-8000-000000000002', 'interval_plan': '10', 'start_at': '2026-10-21', 'completion_at': '2026-10-25', 'remarks': ''}, parentId: 'c32b4dd4-0000-4000-8000-000000000001'),
      EntityRecord(id: '92f13413-0000-4000-8000-000000000002', values: {'mstr_task_id': 'f448886c-0000-4000-8000-000000000004', 'interval_plan': '20', 'start_at': '2026-10-26', 'completion_at': '2026-10-30', 'remarks': ''}, parentId: 'c32b4dd4-0000-4000-8000-000000000001'),
    ],
    'prodrez': [
      EntityRecord(id: '1402345d-0000-4000-8000-000000000001', values: {'trans_work_plan_id': '92f13413-0000-4000-8000-000000000001', 'quantity': '200', 'remarks': ''}),
    ],
    'purrez': [
      EntityRecord(id: '95407e7d-0000-4000-8000-000000000001', values: {'trans_purchase_detail_id': 'e66a7505-0000-4000-8000-000000000001', 'quantity': '800', 'remarks': ''}),
    ],
};
