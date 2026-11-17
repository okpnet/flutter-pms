// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 計画変更のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> planChangeSeeds = {
    'planchange': [
      EntityRecord(id: '4bccf346-0000-4000-8000-000000000001', values: {'change_at': '2026-11-10', 'symbol': 'CH-0001', 'is_order_detail': '1', 'is_purchase_detail': '', 'is_operations_plan': '', 'is_inventory_request': '', 'is_visiter': '', 'is_shipping_order_detail': '', 'item': '9f3833e6-0000-4000-8000-000000000001', 'is_cancel': '1', 'is_quantity_change': '', 'is_date_change': '', 'is_postpone': '', 'is_advance': '', 'is_stop': '', 'is_resume': '', 'is_discontinue': '', 'is_release': '', 'is_hold': '', 'is_scrap': '', 'is_deliver': '', 'has_settlement': '', 'customer_cause': '1', 'supplier_cause': '', 'quality_cause': '', 'from_mrp': '', 'is_reflected': '', 'is_unreflected': '1', 'is_root': '1', 'cancel_quantity': '5', 'old_quantity': '', 'new_quantity': '', 'old_date': '', 'new_date': '', 'reason': '顧客の都合でキャンセル'}),
      EntityRecord(id: '4bccf346-0000-4000-8000-000000000002', values: {'change_at': '2026-11-10', 'symbol': 'CH-0002', 'is_order_detail': '', 'is_purchase_detail': '', 'is_operations_plan': '1', 'is_inventory_request': '', 'is_visiter': '', 'is_shipping_order_detail': '', 'item': '9f3833e6-0000-4000-8000-000000000001', 'is_cancel': '', 'is_quantity_change': '', 'is_date_change': '', 'is_postpone': '', 'is_advance': '', 'is_stop': '', 'is_resume': '', 'is_discontinue': '1', 'is_release': '', 'is_hold': '', 'is_scrap': '', 'is_deliver': '', 'has_settlement': '', 'customer_cause': '1', 'supplier_cause': '', 'quality_cause': '', 'from_mrp': '', 'is_reflected': '', 'is_unreflected': '', 'is_root': '', 'cancel_quantity': '', 'old_quantity': '', 'new_quantity': '', 'old_date': '', 'new_date': '', 'reason': ''}),
    ],
    'cancelopen': [
      EntityRecord(id: '6ac7b167-0000-4000-8000-000000000001', values: {'symbol': 'CO-0001', 'is_inventory_request': '1', 'is_work_in_process': '', 'is_hold': '', 'is_shipping_order': '', 'is_outsource_order': '', 'is_supply_at_supplier': '', 'is_customer_supply': '', 'cause_cancel': '1', 'cause_stop': '', 'cause_discontinue': '', 'item': '9f3833e6-0000-4000-8000-000000000001', 'quantity': '3', 'since': '2026-11-10'}),
      EntityRecord(id: '6ac7b167-0000-4000-8000-000000000002', values: {'symbol': 'CO-0002', 'is_inventory_request': '', 'is_work_in_process': '1', 'is_hold': '', 'is_shipping_order': '', 'is_outsource_order': '', 'is_supply_at_supplier': '', 'is_customer_supply': '', 'cause_cancel': '', 'cause_stop': '', 'cause_discontinue': '1', 'item': '9f3833e6-0000-4000-8000-000000000002', 'quantity': '5', 'since': '2026-11-11'}),
    ],
    'actreqrelease': [

    ],
    'actreqhold': [

    ],
    'actlotrelease': [

    ],
    'actlothold': [

    ],
    'actlotscrap': [

    ],
    'actlotdeliver': [

    ],
    'actshipcancel': [

    ],
    'actpurcancel': [

    ],
};
