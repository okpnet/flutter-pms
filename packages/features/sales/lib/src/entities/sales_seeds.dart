// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 営業のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> salesSeeds = {
    'order': [
      EntityRecord(id: '732c1097-0000-4000-8000-000000000001', values: {'order_number': 'SO-2610-001', 'customer_order_number': 'ORD-001', 'order_processing_date': '2026-10-02', 'delivery_date': '2026-11-10', 'deadline': '2026-10-10', 'remarks': ''}),
      EntityRecord(id: '732c1097-0000-4000-8000-000000000002', values: {'order_number': 'SO-2610-002', 'customer_order_number': 'ORD-002', 'order_processing_date': '2026-10-08', 'delivery_date': '2026-11-20', 'deadline': '2026-10-11', 'remarks': ''}),
    ],
    'orderdetail': [
      EntityRecord(id: '44b192d6-0000-4000-8000-000000000001', values: {'quantity': '200', 'delivery_date': '2026-10-10', 'deadline': '2026-10-10', 'remarks': '', 'unit_price': '10', 'price_adjustment': '', 'fixed_price': '', 'master_error_count': '0'}, parentId: '732c1097-0000-4000-8000-000000000001'),
      EntityRecord(id: '44b192d6-0000-4000-8000-000000000002', values: {'quantity': '400', 'delivery_date': '2026-10-11', 'deadline': '2026-10-11', 'remarks': '', 'unit_price': '20', 'price_adjustment': '', 'fixed_price': '', 'master_error_count': '0'}, parentId: '732c1097-0000-4000-8000-000000000001'),
      EntityRecord(id: '44b192d6-0000-4000-8000-000000000003', values: {'quantity': '150', 'delivery_date': '2026-10-12', 'deadline': '2026-10-12', 'remarks': '', 'unit_price': '30', 'price_adjustment': '', 'fixed_price': '', 'master_error_count': '0'}, parentId: '732c1097-0000-4000-8000-000000000002'),
    ],
};
