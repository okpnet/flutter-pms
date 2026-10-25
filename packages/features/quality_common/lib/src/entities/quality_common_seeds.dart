// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 品質共通のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> qualityCommonSeeds = {
    'disposal': [
      EntityRecord(id: '1040ae7a-0000-4000-8000-000000000001', values: {'trans_complaint_id': '67abbefa-0000-4000-8000-000000000001', 'disposal_at': '2026-10-12', 'title': '寸法不良品の選別', 'detail': '', 'approvals': '', 'approval_at': '2026-10-10', 'remarks': ''}),
    ],
    'recur': [
      EntityRecord(id: '38621a72-0000-4000-8000-000000000001', values: {'trans_disposal_id': '1040ae7a-0000-4000-8000-000000000001', 'occurent_at': '2026-10-14', 'approvals': '', 'title': '測定手順の見直し', 'detail': '', 'remarks': ''}),
    ],
    'obsdisp': [
      EntityRecord(id: 'abef6b75-0000-4000-8000-000000000001', values: {'enable': 'はい', 'observe_schedule': '2026-10-20', 'observe_at': '2026-10-10', 'remarks': ''}),
    ],
    'obsprev': [
      EntityRecord(id: '2abe1130-0000-4000-8000-000000000001', values: {'trans_observer_disposal_id': 'abef6b75-0000-4000-8000-000000000001', 'trans_recurrence_prevention_id': '38621a72-0000-4000-8000-000000000001', 'remarks': ''}),
    ],
    'risk': [
      EntityRecord(id: 'f32b96ea-0000-4000-8000-000000000001', values: {'title': '主要材料の納期遅延', 'detail': '', 'frequency': '10', 'momentous': '10', 'action': '10', 'residual_risk_id': 'f32b96ea-0000-4000-8000-000000000001', 'remarks': ''}),
      EntityRecord(id: 'f32b96ea-0000-4000-8000-000000000002', values: {'title': '測定器の校正切れ', 'detail': '', 'frequency': '20', 'momentous': '20', 'action': '20', 'residual_risk_id': 'f32b96ea-0000-4000-8000-000000000001', 'remarks': ''}),
    ],
    'prevention': [
      EntityRecord(id: '8e9df34d-0000-4000-8000-000000000001', values: {'number': 'PRE-001', 'title': '件名1', 'detail': '', 'remarks': ''}, parentId: 'f32b96ea-0000-4000-8000-000000000001'),
    ],
    'preventiondetail': [
      EntityRecord(id: 'e0eb853c-0000-4000-8000-000000000001', values: {'number': 'PRE-001', 'trans_risk_id': 'f32b96ea-0000-4000-8000-000000000001', 'info_department_id': 'cf3da547-0000-4000-8000-000000000001', 'start_at': '2026-10-15', 'stop_at': '2026-10-10', 'title': '件名1', 'detail': '', 'remarks': ''}, parentId: '8e9df34d-0000-4000-8000-000000000001'),
    ],
    'auditstdcheck': [
      EntityRecord(id: '5202b893-0000-4000-8000-000000000001', values: {'code': 'AC-01', 'control_code': 'AUD-001', 'name': '文書管理', 'pronunciation': 'ブンショカンリ', 'nickname': '', 'mstr_audit_std_id': '74b064d1-0000-4000-8000-000000000001', 'detail': '最新版が現場に配布されている。', 'type_class': '10', 'formula_class': '10', 'arg_class': '', 'remarks': ''}),
      EntityRecord(id: '5202b893-0000-4000-8000-000000000002', values: {'code': 'AC-02', 'control_code': 'AUD-002', 'name': '校正管理', 'pronunciation': 'コウセイカンリ', 'nickname': '', 'mstr_audit_std_id': '74b064d1-0000-4000-8000-000000000001', 'detail': '測定器の校正期限が有効である。', 'type_class': '20', 'formula_class': '20', 'arg_class': '', 'remarks': ''}),
    ],
};
