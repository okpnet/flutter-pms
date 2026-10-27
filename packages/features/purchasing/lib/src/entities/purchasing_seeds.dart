// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 購買のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> purchasingSeeds = {
    'unrec': [
      EntityRecord(id: '0a6aac0c-0000-4000-8000-000000000001', values: {'decision_date': '2026-10-05', 'deadline': '2026-10-10', 'expected_completion_date': '2026-10-10', 'planned_shipping_date': '2026-10-10', 'remarks': ''}),
    ],
    'unrecdetail': [
      EntityRecord(id: 'a1bcd19d-0000-4000-8000-000000000001', values: {'quantity': '50', 'cost': '10', 'deadline': '2026-10-10', 'remarks': ''}, parentId: '0a6aac0c-0000-4000-8000-000000000001'),
    ],
    'purchase': [
      EntityRecord(id: '95d58f62-0000-4000-8000-000000000001', values: {'register_at': '2026-10-06', 'purchase_order_date': '2026-10-20', 'deadline': '2026-10-10', 'remarks': '', 'purchase_amount': '2400000', 'received_amount': '12000'}),
      EntityRecord(id: '95d58f62-0000-4000-8000-000000000002', values: {'register_at': '2026-10-09', 'purchase_order_date': '2026-10-28', 'deadline': '2026-10-11', 'remarks': '', 'purchase_amount': '720000', 'received_amount': '0'}),
    ],
    'purdetail': [
      EntityRecord(id: 'e66a7505-0000-4000-8000-000000000001', values: {'trans_resource_plan_id': '5518c986-0000-4000-8000-000000000001', 'restocking_purchase': 'はい', 'quantity': '2000', 'period': '2026-10-10', 'remarks': '', 'cost': '1200'}, parentId: '95d58f62-0000-4000-8000-000000000001'),
      EntityRecord(id: 'e66a7505-0000-4000-8000-000000000002', values: {'trans_resource_plan_id': '5518c986-0000-4000-8000-000000000001', 'restocking_purchase': 'いいえ', 'quantity': '800', 'period': '2026-10-11', 'remarks': '', 'cost': '900'}, parentId: '95d58f62-0000-4000-8000-000000000002'),
    ],
    'purchaserec': [
      EntityRecord(id: 'fc5493c4-0000-4000-8000-000000000001', values: {'trans_purchase_detail_id': 'e66a7505-0000-4000-8000-000000000001', 'receive_at': '2026-10-19', 'quantity': '10', 'remarks': ''}),
    ],
    'purchaseline': [
      EntityRecord(id: 'a4ab9450-0000-4000-8000-000000000001', values: {'item': '9f3833e6-0000-4000-8000-000000000005', 'qty': '2000', 'unit': 'e8b51a07-0000-4000-8000-000000000004'}, parentId: 'fc5493c4-0000-4000-8000-000000000001'),
    ],
    'purcert': [
      EntityRecord(id: '9943ea36-0000-4000-8000-000000000001', values: {'trans_certificate_id': '45ec6270-0000-4000-8000-000000000001', 'remarks': ''}, parentId: 'fc5493c4-0000-4000-8000-000000000001'),
    ],
};
