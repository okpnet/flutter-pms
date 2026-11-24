// 手書き(tools/entity_gen/gen.js は上書きしない)
import 'package:entity_screens/entity_screens.dart';

/// 原価のサンプルデータ(架空の値。メモリ上の取得元・example 用)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> costSeeds = {
  'costunit': [
    EntityRecord(
      id: '9f3833e6-0000-4000-8000-000000000001',
      values: {
        'item': '9f3833e6-0000-4000-8000-000000000001',
        'purchase_cost': '120',
        'production_cost': '80',
        'component_cost': '0',
        'unit_cost': '200',
        'has_supplier': '1',
        'has_components': '',
      },
    ),
    EntityRecord(
      id: '9f3833e6-0000-4000-8000-000000000002',
      values: {
        'item': '9f3833e6-0000-4000-8000-000000000002',
        'purchase_cost': '0',
        'production_cost': '150',
        'component_cost': '320',
        'unit_cost': '470',
        'has_supplier': '',
        'has_components': '1',
      },
    ),
  ],
  'costvaluation': [
    EntityRecord(
      id: '9f3833e6-0000-4000-8000-000000000001',
      values: {
        'item': '9f3833e6-0000-4000-8000-000000000001',
        'quantity': '100',
        'evaluated_quantity': '80',
        'external_quantity': '20',
        'amount': '16000',
      },
    ),
  ],
  'costlot': [
    EntityRecord(
      id: '4bccf346-0000-4000-8000-000000000001',
      values: {
        'symbol': 'VS-0001',
        'item': '9f3833e6-0000-4000-8000-000000000001',
        'quantity': '80',
        'held': '',
        'external_owned': '',
        'transferred': '',
        'evaluated': '1',
        'unit_cost': '200',
        'unit_value': '200',
        'amount': '16000',
      },
    ),
    EntityRecord(
      id: '4bccf346-0000-4000-8000-000000000002',
      values: {
        'symbol': 'VS-0002',
        'item': '9f3833e6-0000-4000-8000-000000000001',
        'quantity': '20',
        'held': '',
        'external_owned': '1',
        'transferred': '',
        'evaluated': '',
        'unit_cost': '200',
        'unit_value': '',
        'amount': '0',
      },
    ),
  ],
  'costwork': [
    EntityRecord(
      id: '4bccf346-0000-4000-8000-0000000000a1',
      values: {
        'symbol': 'WR-0001',
        'item': '9f3833e6-0000-4000-8000-000000000001',
        'quantity': '3',
        'produced_quantity': '3',
        'material_amount': '24800',
        'material_line_count': '1',
        'has_supplied_material': '',
        'process_cost': '75',
        'total_cost': '24875',
        'unit_cost': '8291.67',
      },
    ),
  ],
};
