// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 生産計画のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> productionPlanSeeds = {
    'resplan': [
      EntityRecord(id: '5518c986-0000-4000-8000-000000000001', values: {'trans_order_detail_id': '44b192d6-0000-4000-8000-000000000001', 'trans_unrecognized_detail_id': 'a1bcd19d-0000-4000-8000-000000000001', 'register_at': '2026-10-01', 'quantity': '10', 'inventory_resavation': '10', 'deadline': '2026-10-10', 'remarks': '', 'parent_trans_operations_plan_id': ''}),
      EntityRecord(id: '5518c986-0000-4000-8000-000000000002', values: {'trans_order_detail_id': '44b192d6-0000-4000-8000-000000000001', 'trans_unrecognized_detail_id': 'a1bcd19d-0000-4000-8000-000000000001', 'register_at': '2026-11-01', 'quantity': '20', 'inventory_resavation': '20', 'deadline': '2026-10-11', 'remarks': '', 'parent_trans_operations_plan_id': ''}),
    ],
    'opsplan': [
      EntityRecord(id: 'c32b4dd4-0000-4000-8000-000000000001', values: {'deadline': '2026-11-10', 'remarks': '', 'quantity': ''}, parentId: '5518c986-0000-4000-8000-000000000001'),
      EntityRecord(id: 'c32b4dd4-0000-4000-8000-000000000002', values: {'deadline': '2026-11-05', 'remarks': '', 'quantity': ''}, parentId: '5518c986-0000-4000-8000-000000000001'),
    ],
    'workplan': [
      EntityRecord(id: '92f13413-0000-4000-8000-000000000001', values: {'mstr_task_id': 'f448886c-0000-4000-8000-000000000002', 'interval_plan': '10', 'start_at': '2026-10-21', 'completion_at': '2026-10-25', 'remarks': '', 'sequence': ''}, parentId: 'c32b4dd4-0000-4000-8000-000000000001'),
      EntityRecord(id: '92f13413-0000-4000-8000-000000000002', values: {'mstr_task_id': 'f448886c-0000-4000-8000-000000000004', 'interval_plan': '20', 'start_at': '2026-10-26', 'completion_at': '2026-10-30', 'remarks': '', 'sequence': ''}, parentId: 'c32b4dd4-0000-4000-8000-000000000001'),
    ],
    'prodrez': [
      EntityRecord(id: '1402345d-0000-4000-8000-000000000001', values: {'trans_work_plan_id': '92f13413-0000-4000-8000-000000000001', 'quantity': '200', 'remarks': ''}),
    ],
    'purrez': [
      EntityRecord(id: '95407e7d-0000-4000-8000-000000000001', values: {'trans_purchase_detail_id': 'e66a7505-0000-4000-8000-000000000001', 'quantity': '800', 'remarks': ''}),
    ],
    'mrppending': [
      EntityRecord(id: '1f9d538d-0000-4000-8000-000000000001', values: {'kind': 'PURCHASE_NEW', 'item': '9f3833e6-0000-4000-8000-000000000001', 'quantity': '100', 'need_at': '2026-11-10', 'release_at': '2026-10-30', 'due_at': '2026-11-12', 'late': '1', 'message': '納期が必要日に間に合いません', 'symbol': 'PS-0001'}),
      EntityRecord(id: '1f9d538d-0000-4000-8000-000000000002', values: {'kind': 'PRODUCTION_NEW', 'item': '9f3833e6-0000-4000-8000-000000000002', 'quantity': '20', 'need_at': '2026-11-15', 'release_at': '2026-11-01', 'due_at': '2026-11-14', 'late': '', 'message': '', 'symbol': 'PS-0002'}),
    ],
    'mrppurchase': [
      EntityRecord(id: '09428581-0000-4000-8000-000000000001', values: {'kind': 'PURCHASE_NEW', 'supplier': '9c2cec53-0000-4000-8000-000000000004', 'release_date': '2026-10-30', 'due_date': '2026-11-12', 'line_count': '3', 'amount': '125000', 'late_count': '1', 'pending_count': '2'}),
    ],
    'mrpissue': [
      EntityRecord(id: '5f642559-0000-4000-8000-000000000001', values: {'item': '9f3833e6-0000-4000-8000-000000000003', 'issue_code': 'NO_SUPPLIER', 'severity': 'ERROR', 'message': '仕入先が登録されていません', 'ref_table': 'mstr_item_supplier'}),
    ],
    'mrpcoverage': [
      EntityRecord(id: 'a1f3bde8-0000-4000-8000-000000000001', values: {'item': '9f3833e6-0000-4000-8000-000000000001', 'plan_kind': 'PURCHASE', 'deadline': '2026-11-10', 'quantity': '100', 'reserved_stock': '40', 'reserved_purchase': '50', 'reserved_production': '0', 'shortage': '10'}),
    ],
};
