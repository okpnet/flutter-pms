// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 営業のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> salesSeeds = {
    'order': [
      EntityRecord(id: '732c1097-0000-4000-8000-000000000001', values: {'order_number': 'SO-2610-001', 'customer_order_number': 'ORD-001', 'stakeholder_id': '9c2cec53-0000-4000-8000-000000000001', 'order_processing_date': '2026-10-02', 'delivery_date': '2026-11-10', 'deadline': '2026-10-10', 'remarks': ''}),
      EntityRecord(id: '732c1097-0000-4000-8000-000000000002', values: {'order_number': 'SO-2610-002', 'customer_order_number': 'ORD-002', 'stakeholder_id': '9c2cec53-0000-4000-8000-000000000002', 'order_processing_date': '2026-10-08', 'delivery_date': '2026-11-20', 'deadline': '2026-10-11', 'remarks': ''}),
    ],
    'orderdetail': [
      EntityRecord(id: '44b192d6-0000-4000-8000-000000000001', values: {'item_id': '9f3833e6-0000-4000-8000-000000000001', 'quantity': '200', 'unit_price': '10', 'price_adjustment': '10', 'fixed_price': '10', 'delivery_date': '2026-10-10', 'deadline': '2026-10-10', 'remarks': '', 'customer_property': 'はい', 'master_error_count': '0', 'cancel_quantity': '0', 'stop': '', 'remaining_quantity': '', 'open_quantity': '', 'cancel_closed': '', 'settlement_amount': ''}, parentId: '732c1097-0000-4000-8000-000000000001'),
      EntityRecord(id: '44b192d6-0000-4000-8000-000000000002', values: {'item_id': '9f3833e6-0000-4000-8000-000000000002', 'quantity': '400', 'unit_price': '20', 'price_adjustment': '20', 'fixed_price': '20', 'delivery_date': '2026-10-11', 'deadline': '2026-10-11', 'remarks': '', 'customer_property': 'いいえ', 'master_error_count': '0', 'cancel_quantity': '0', 'stop': '', 'remaining_quantity': '', 'open_quantity': '', 'cancel_closed': '', 'settlement_amount': ''}, parentId: '732c1097-0000-4000-8000-000000000001'),
      EntityRecord(id: '44b192d6-0000-4000-8000-000000000003', values: {'item_id': '9f3833e6-0000-4000-8000-000000000003', 'quantity': '150', 'unit_price': '30', 'price_adjustment': '30', 'fixed_price': '30', 'delivery_date': '2026-10-12', 'deadline': '2026-10-12', 'remarks': '', 'customer_property': 'はい', 'master_error_count': '0', 'cancel_quantity': '0', 'stop': '', 'remaining_quantity': '', 'open_quantity': '', 'cancel_closed': '', 'settlement_amount': ''}, parentId: '732c1097-0000-4000-8000-000000000002'),
    ],
    'shipplan': [
      EntityRecord(id: '546f5b58-0000-4000-8000-000000000001', values: {'order': '732c1097-0000-4000-8000-000000000001', 'date': '2026-11-08', 'carrier': '9c2cec53-0000-4000-8000-000000000004', 'arrival': '2026-11-10', 'done': '', 'wait': ''}),
      EntityRecord(id: '546f5b58-0000-4000-8000-000000000002', values: {'order': '732c1097-0000-4000-8000-000000000001', 'date': '2026-11-12', 'carrier': '9c2cec53-0000-4000-8000-000000000004', 'arrival': '2026-11-14', 'done': '1', 'wait': ''}),
      EntityRecord(id: '546f5b58-0000-4000-8000-000000000003', values: {'order': '732c1097-0000-4000-8000-000000000002', 'date': '2026-11-16', 'carrier': '9c2cec53-0000-4000-8000-000000000004', 'arrival': '2026-11-18', 'done': '', 'wait': ''}),
    ],
    'shipline': [
      EntityRecord(id: 'e3cef8dd-0000-4000-8000-000000000001', values: {'pack': 'bd06615f-0000-4000-8000-000000000001', 'qty': '100', 'item': '9f3833e6-0000-4000-8000-000000000001', 'date': '2026-11-08', 'arrival': '2026-11-09', 'progress': '60'}, parentId: '546f5b58-0000-4000-8000-000000000001'),
      EntityRecord(id: 'e3cef8dd-0000-4000-8000-000000000002', values: {'pack': 'bd06615f-0000-4000-8000-000000000001', 'qty': '50', 'item': '9f3833e6-0000-4000-8000-000000000002', 'date': '2026-11-08', 'arrival': '2026-11-10', 'progress': '20'}, parentId: '546f5b58-0000-4000-8000-000000000001'),
      EntityRecord(id: 'e3cef8dd-0000-4000-8000-000000000003', values: {'pack': 'bd06615f-0000-4000-8000-000000000001', 'qty': '200', 'item': '9f3833e6-0000-4000-8000-000000000002', 'date': '2026-11-12', 'arrival': '2026-11-14', 'progress': '100'}, parentId: '546f5b58-0000-4000-8000-000000000002'),
      EntityRecord(id: 'e3cef8dd-0000-4000-8000-000000000004', values: {'pack': 'bd06615f-0000-4000-8000-000000000001', 'qty': '30', 'item': '9f3833e6-0000-4000-8000-000000000001', 'date': '2026-11-16', 'arrival': '2026-11-18', 'progress': '0'}, parentId: '546f5b58-0000-4000-8000-000000000003'),
    ],
};
