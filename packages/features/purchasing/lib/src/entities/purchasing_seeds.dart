// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 購買のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> purchasingSeeds = {
    'unrec': [
      EntityRecord(id: '0a6aac0c-0000-4000-8000-000000000001', values: {'decision_date': '2026-10-05', 'deadline': '2026-10-10', 'expected_completion_date': '2026-10-10', 'planned_shipping_date': '2026-10-10', 'remarks': ''}),
    ],
    'unrecdetail': [
      EntityRecord(id: 'a1bcd19d-0000-4000-8000-000000000001', values: {'quantity': '50', 'unit_price': '10', 'price_adjustment': '10', 'fixed_price': '10', 'material_supply': 'はい', 'paid_supply': 'はい', 'deadline': '2026-10-10', 'item_id': '9f3833e6-0000-4000-8000-000000000005', 'remarks': ''}, parentId: '0a6aac0c-0000-4000-8000-000000000001'),
    ],
    'purchase': [
      EntityRecord(id: '95d58f62-0000-4000-8000-000000000001', values: {'stakeholder_id': '9c2cec53-0000-4000-8000-000000000004', 'register_at': '2026-10-06', 'purchase_order_date': '2026-10-20', 'deadline': '2026-10-10', 'remarks': '', 'purchase_amount': '24000', 'received_amount': '120'}),
      EntityRecord(id: '95d58f62-0000-4000-8000-000000000002', values: {'stakeholder_id': '9c2cec53-0000-4000-8000-000000000005', 'register_at': '2026-10-09', 'purchase_order_date': '2026-10-28', 'deadline': '2026-10-11', 'remarks': '', 'purchase_amount': '144000', 'received_amount': '0'}),
    ],
    'purdetail': [
      EntityRecord(id: 'e66a7505-0000-4000-8000-000000000001', values: {'trans_resource_plan_id': '5518c986-0000-4000-8000-000000000001', 'restocking_purchase': 'はい', 'quantity': '2000', 'unit_price': '12', 'price_adjustment': '10', 'fixed_price': '10', 'material_supply': 'はい', 'paid_supply': 'はい', 'period': '2026-10-10', 'item_id': '9f3833e6-0000-4000-8000-000000000005', 'remarks': '', 'cancel_quantity': '0', 'stop': '', 'received_quantity': '', 'remaining_quantity': '', 'open_quantity': '', 'cancel_closed': ''}, parentId: '95d58f62-0000-4000-8000-000000000001'),
      EntityRecord(id: 'e66a7505-0000-4000-8000-000000000002', values: {'trans_resource_plan_id': '5518c986-0000-4000-8000-000000000001', 'restocking_purchase': 'いいえ', 'quantity': '800', 'unit_price': '180', 'price_adjustment': '20', 'fixed_price': '20', 'material_supply': 'いいえ', 'paid_supply': 'いいえ', 'period': '2026-10-11', 'item_id': '9f3833e6-0000-4000-8000-000000000004', 'remarks': '', 'cancel_quantity': '0', 'stop': '', 'received_quantity': '', 'remaining_quantity': '', 'open_quantity': '', 'cancel_closed': ''}, parentId: '95d58f62-0000-4000-8000-000000000002'),
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
