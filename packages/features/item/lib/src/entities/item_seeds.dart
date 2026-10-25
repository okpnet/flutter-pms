// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 品目のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> itemSeeds = {
    'itemkind': [
      EntityRecord(id: '6db36508-0000-4000-8000-000000000001', values: {'code': 'PRD', 'name': '製品', 'pronunciation': 'セイヒン', 'nickname': '', 'remarks': ''}),
      EntityRecord(id: '6db36508-0000-4000-8000-000000000002', values: {'code': 'SEM', 'name': '半製品', 'pronunciation': 'ハンセイヒン', 'nickname': '', 'remarks': ''}),
      EntityRecord(id: '6db36508-0000-4000-8000-000000000003', values: {'code': 'MAT', 'name': '原材料', 'pronunciation': 'ゲンザイリョウ', 'nickname': '', 'remarks': ''}),
      EntityRecord(id: '6db36508-0000-4000-8000-000000000004', values: {'code': 'PUR', 'name': '購入部品', 'pronunciation': 'コウニュウブヒン', 'nickname': '', 'remarks': ''}),
    ],
    'hscode': [
      EntityRecord(id: 'aea77409-0000-4000-8000-000000000001', values: {'code': '8466.93', 'mstr_item_id': '9f3833e6-0000-4000-8000-000000000001', 'iso3166_3': '', 'remarks': ''}),
      EntityRecord(id: 'aea77409-0000-4000-8000-000000000002', values: {'code': '7318.15', 'mstr_item_id': '9f3833e6-0000-4000-8000-000000000001', 'iso3166_3': '', 'remarks': ''}),
      EntityRecord(id: 'aea77409-0000-4000-8000-000000000003', values: {'code': '7326.90', 'mstr_item_id': '9f3833e6-0000-4000-8000-000000000001', 'iso3166_3': '', 'remarks': ''}),
    ],
    'item': [
      EntityRecord(id: '9f3833e6-0000-4000-8000-000000000001', values: {'code': 'I-1000', 'identification': 'ITE-001', 'control_code': 'ITE-001', 'label_code': 'ITE-001', 'name': 'ユニットA', 'pronunciation': 'ユニットエー', 'nickname': '', 'mstr_item_kind_id': '6db36508-0000-4000-8000-000000000001', 'detail': '', 'shared_unit_id': 'e8b51a07-0000-4000-8000-000000000004', 'remarks': ''}),
      EntityRecord(id: '9f3833e6-0000-4000-8000-000000000002', values: {'code': 'I-1100', 'identification': 'ITE-002', 'control_code': 'ITE-002', 'label_code': 'ITE-002', 'name': 'ブラケット', 'pronunciation': 'ブラケット', 'nickname': '', 'mstr_item_kind_id': '6db36508-0000-4000-8000-000000000002', 'detail': '', 'shared_unit_id': 'e8b51a07-0000-4000-8000-000000000004', 'remarks': ''}, parentId: '9f3833e6-0000-4000-8000-000000000001'),
      EntityRecord(id: '9f3833e6-0000-4000-8000-000000000003', values: {'code': 'I-1200', 'identification': 'ITE-003', 'control_code': 'ITE-003', 'label_code': 'ITE-003', 'name': 'シャフト', 'pronunciation': 'シャフト', 'nickname': '', 'mstr_item_kind_id': '6db36508-0000-4000-8000-000000000002', 'detail': '', 'shared_unit_id': 'e8b51a07-0000-4000-8000-000000000004', 'remarks': ''}, parentId: '9f3833e6-0000-4000-8000-000000000001'),
      EntityRecord(id: '9f3833e6-0000-4000-8000-000000000004', values: {'code': 'I-1210', 'identification': 'ITE-004', 'control_code': 'ITE-004', 'label_code': 'ITE-004', 'name': '丸棒 SS400', 'pronunciation': 'マルボウ エスエス400', 'nickname': '', 'mstr_item_kind_id': '6db36508-0000-4000-8000-000000000003', 'detail': '', 'shared_unit_id': 'e8b51a07-0000-4000-8000-000000000001', 'remarks': ''}, parentId: '9f3833e6-0000-4000-8000-000000000003'),
      EntityRecord(id: '9f3833e6-0000-4000-8000-000000000005', values: {'code': 'I-1300', 'identification': 'ITE-005', 'control_code': 'ITE-005', 'label_code': 'ITE-005', 'name': 'ボルト M8×20', 'pronunciation': 'ボルト エム8×20', 'nickname': '', 'mstr_item_kind_id': '6db36508-0000-4000-8000-000000000004', 'detail': '', 'shared_unit_id': 'e8b51a07-0000-4000-8000-000000000004', 'remarks': ''}, parentId: '9f3833e6-0000-4000-8000-000000000001'),
    ],
    'itemhs': [
      EntityRecord(id: '00bb7ffb-0000-4000-8000-000000000001', values: {'hs': 'aea77409-0000-4000-8000-000000000001'}, parentId: '9f3833e6-0000-4000-8000-000000000001'),
      EntityRecord(id: '00bb7ffb-0000-4000-8000-000000000002', values: {'hs': 'aea77409-0000-4000-8000-000000000003'}, parentId: '9f3833e6-0000-4000-8000-000000000003'),
      EntityRecord(id: '00bb7ffb-0000-4000-8000-000000000003', values: {'hs': 'aea77409-0000-4000-8000-000000000002'}, parentId: '9f3833e6-0000-4000-8000-000000000005'),
    ],
    'itemsizekind': [
      EntityRecord(id: 'e0debf2d-0000-4000-8000-000000000001', values: {'code': 'ITE-001', 'pronunciation': '', 'nickname': '', 'names': 'サイズ区分名称1', 'shared_unit_id': 'e8b51a07-0000-4000-8000-000000000001', 'remarks': '全長・全幅・全高のうち最大の寸法'}),
      EntityRecord(id: 'e0debf2d-0000-4000-8000-000000000002', values: {'code': 'ITE-002', 'pronunciation': '', 'nickname': '', 'names': 'サイズ区分名称2', 'shared_unit_id': 'e8b51a07-0000-4000-8000-000000000001', 'remarks': ''}),
    ],
    'itemsize': [
      EntityRecord(id: '1f455fe7-0000-4000-8000-000000000001', values: {'mstr_item_size_kind_id': 'e0debf2d-0000-4000-8000-000000000001', 'detail': '', 'remarks': ''}, parentId: '9f3833e6-0000-4000-8000-000000000002'),
      EntityRecord(id: '1f455fe7-0000-4000-8000-000000000002', values: {'mstr_item_size_kind_id': 'e0debf2d-0000-4000-8000-000000000002', 'detail': '', 'remarks': ''}, parentId: '9f3833e6-0000-4000-8000-000000000003'),
    ],
    'itempack': [
      EntityRecord(id: 'bd06615f-0000-4000-8000-000000000001', values: {'label': '木箱', 'w': '450', 'd': '300', 'h': '200', 'unit': 'e8b51a07-0000-4000-8000-000000000003'}, parentId: '9f3833e6-0000-4000-8000-000000000001'),
    ],
    'itemop': [
      EntityRecord(id: '03aeb8c1-0000-4000-8000-000000000001', values: {'control_code': 'ITE-001', 'name': 'ユニットA 標準', 'pronunciation': 'ユニットエー ヒョウジュン', 'nickname': '', 'mstr_operation_id': '533e8106-0000-4000-8000-000000000001', 'detail': '', 'remarks': ''}, parentId: '9f3833e6-0000-4000-8000-000000000001'),
      EntityRecord(id: '03aeb8c1-0000-4000-8000-000000000002', values: {'control_code': 'ITE-002', 'name': 'ブラケット 標準', 'pronunciation': 'ブラケット ヒョウジュン', 'nickname': '', 'mstr_operation_id': '533e8106-0000-4000-8000-000000000002', 'detail': '', 'remarks': ''}, parentId: '9f3833e6-0000-4000-8000-000000000002'),
    ],
    'itemmaker': [
      EntityRecord(id: '18d80eda-0000-4000-8000-000000000001', values: {'maker': '北斗ファスナー', 'partno': 'BF-M8-20'}, parentId: '9f3833e6-0000-4000-8000-000000000005'),
    ],
    'itemoptask': [
      EntityRecord(id: 'c7d34ab0-0000-4000-8000-000000000001', values: {'mstr_item_id': '9f3833e6-0000-4000-8000-000000000001', 'sequence': '10', 'default_interval': '45', 'remarks': ''}, parentId: '03aeb8c1-0000-4000-8000-000000000001'),
      EntityRecord(id: 'c7d34ab0-0000-4000-8000-000000000002', values: {'mstr_item_id': '9f3833e6-0000-4000-8000-000000000001', 'sequence': '20', 'default_interval': '90', 'remarks': ''}, parentId: '03aeb8c1-0000-4000-8000-000000000001'),
      EntityRecord(id: 'c7d34ab0-0000-4000-8000-000000000003', values: {'mstr_item_id': '9f3833e6-0000-4000-8000-000000000001', 'sequence': '30', 'default_interval': '20', 'remarks': ''}, parentId: '03aeb8c1-0000-4000-8000-000000000001'),
    ],
};
