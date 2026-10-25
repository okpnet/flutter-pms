// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 作業実績のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> workRecordSeeds = {
    'container': [
      EntityRecord(id: '8daff178-0000-4000-8000-000000000001', values: {'code': 'CN-01', 'name': '第1製造棟 ラック', 'remarks': ''}),
      EntityRecord(id: '8daff178-0000-4000-8000-000000000002', values: {'code': 'CN-011', 'name': 'ラック A段', 'remarks': ''}, parentId: '8daff178-0000-4000-8000-000000000001'),
      EntityRecord(id: '8daff178-0000-4000-8000-000000000003', values: {'code': 'CN-012', 'name': 'ラック B段', 'remarks': ''}, parentId: '8daff178-0000-4000-8000-000000000001'),
    ],
    'invapply': [
      EntityRecord(id: '720e007c-0000-4000-8000-000000000001', values: {'register_at': '2026-10-20', 'trans_inventory_request_id': '032334d0-0000-4000-8000-000000000001', 'remarks': ''}),
    ],
    'invreq': [
      EntityRecord(id: '032334d0-0000-4000-8000-000000000001', values: {'register_at': '2026-10-19', 'register_plan_at': '2026-10-10', 'trans_purchase_rez_id': '95407e7d-0000-4000-8000-000000000001', 'trans_product_rez_id': '1402345d-0000-4000-8000-000000000001', 'quantity': '300', 'remarks': ''}),
    ],
    'certificate': [
      EntityRecord(id: '45ec6270-0000-4000-8000-000000000001', values: {'serial': 'CT-2610-01', 'title': '丸棒 SS400 ミルシート', 'class': '', 'remarks': ''}),
    ],
    'workrec': [
      EntityRecord(id: '777d341e-0000-4000-8000-000000000001', values: {'trans_work_plan_id': '92f13413-0000-4000-8000-000000000001', 'nth_time': '40', 'start_at': '2026-10-21', 'stop_at': '2026-10-10', 'qty': '10', 'remarks': ''}),
    ],
    'wrcert': [
      EntityRecord(id: '9ec8860e-0000-4000-8000-000000000001', values: {'trans_certificate_id': '45ec6270-0000-4000-8000-000000000001', 'remarks': ''}, parentId: '777d341e-0000-4000-8000-000000000001'),
    ],
};
