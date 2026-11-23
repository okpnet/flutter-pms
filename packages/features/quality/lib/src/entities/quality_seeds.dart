// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 品質管理のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> qualitySeeds = {
  'complaint': [
    EntityRecord(
      id: '67abbefa-0000-4000-8000-000000000001',
      values: {
        'occurent_at': '2026-10-12',
        'title': '寸法公差の外れ',
        'detail': '',
        'reporter_staff_id': '675ca4d1-0000-4000-8000-000000000003',
        'remarks': '',
        'kind': '工程で発見された異常',
        'external': '',
        'party': '',
        'claim': '',
        'target': '旋削',
      },
    ),
    EntityRecord(
      id: '67abbefa-0000-4000-8000-000000000002',
      values: {
        'occurent_at': '2026-10-15',
        'title': '納入品の傷',
        'detail': '',
        'reporter_staff_id': '675ca4d1-0000-4000-8000-000000000003',
        'remarks': '',
        'kind': '購買・委託品の受入で発見された異常',
        'external': '',
        'party': '',
        'claim': '',
        'target': '受入 R-2610-01',
      },
    ),
    EntityRecord(
      id: '67abbefa-0000-4000-8000-000000000003',
      values: {
        'occurent_at': '2026-10-18',
        'title': '主軸の異音',
        'detail': '',
        'reporter_staff_id': '675ca4d1-0000-4000-8000-000000000003',
        'remarks': '',
        'kind': '設備の点検で発見された異常',
        'external': '',
        'party': '',
        'claim': '',
        'target': 'NC旋盤 1号機',
      },
    ),
    EntityRecord(
      id: '67abbefa-0000-4000-8000-000000000004',
      values: {
        'occurent_at': '2026-10-20',
        'title': '棚の取り違え',
        'detail': '',
        'reporter_staff_id': '675ca4d1-0000-4000-8000-000000000003',
        'remarks': '',
        'kind': '棚移動で発見された異常',
        'external': '',
        'party': '',
        'claim': '',
        'target': 'A棚-2 のロット',
      },
    ),
    EntityRecord(
      id: '67abbefa-0000-4000-8000-000000000005',
      values: {
        'occurent_at': '2026-10-22',
        'title': '梱包の破損',
        'detail': '',
        'reporter_staff_id': '675ca4d1-0000-4000-8000-000000000003',
        'remarks': '',
        'kind': '顧客クレーム',
        'external': '1',
        'party': '北斗機械株式会社',
        'claim': 'クレーム',
        'target': '受注 SO-1001',
      },
    ),
    EntityRecord(
      id: '67abbefa-0000-4000-8000-000000000006',
      values: {
        'occurent_at': '2026-10-25',
        'title': '納期回答が遅い',
        'detail': '',
        'reporter_staff_id': '675ca4d1-0000-4000-8000-000000000003',
        'remarks': '',
        'kind': '利害関係者の苦情',
        'external': '1',
        'party': '東西金属株式会社',
        'claim': '苦情',
        'target': '',
      },
    ),
  ],
  'compreceive': [
    EntityRecord(
      id: '9782141f-0000-4000-8000-000000000001',
      values: {
        'receive_at': '2026-10-12',
        'receive_staff_id': '675ca4d1-0000-4000-8000-000000000002',
        'detail': '',
        'remarks': '',
      },
      parentId: '67abbefa-0000-4000-8000-000000000001',
    ),
  ],
  'compstake': [
    EntityRecord(
      id: '8b13dd18-0000-4000-8000-000000000001',
      values: {
        'stakeholder_id': '9c2cec53-0000-4000-8000-000000000001',
        'remarks': '',
      },
      parentId: '67abbefa-0000-4000-8000-000000000001',
    ),
  ],
  'compfile': [
    EntityRecord(
      id: '416e43ec-0000-4000-8000-000000000001',
      values: {
        'file':
            '{"id":"416e43ec-0000-4000-8000-000000000001","name":"写真_001.jpg","mediaType":"image/jpeg"}',
        'date': '2026-10-12',
      },
      parentId: '67abbefa-0000-4000-8000-000000000001',
    ),
  ],
  'orderrisk': [
    EntityRecord(
      id: '884708b8-0000-4000-8000-000000000001',
      values: {
        'trans_order_id': '732c1097-0000-4000-8000-000000000001',
        'trans_risk_id': 'f32b96ea-0000-4000-8000-000000000001',
        'remarks': '',
      },
    ),
  ],
  'orderdetailrisk': [
    EntityRecord(
      id: 'b558153d-0000-4000-8000-000000000001',
      values: {
        'trans_order_detail_id': '44b192d6-0000-4000-8000-000000000001',
        'risk_id': 'f32b96ea-0000-4000-8000-000000000001',
        'remarks': '',
      },
    ),
  ],
  'odrimp': [
    EntityRecord(
      id: '0d939bca-0000-4000-8000-000000000001',
      values: {'risk': 'f32b96ea-0000-4000-8000-000000000001'},
      parentId: 'b558153d-0000-4000-8000-000000000001',
    ),
  ],
  'taskrisk': [
    EntityRecord(
      id: '5979809f-0000-4000-8000-000000000001',
      values: {
        'mstr_task_id': 'f448886c-0000-4000-8000-000000000003',
        'risk_id': 'f32b96ea-0000-4000-8000-000000000001',
        'remarks': '',
      },
    ),
  ],
  'trimp': [
    EntityRecord(
      id: 'd15a043b-0000-4000-8000-000000000001',
      values: {'risk': 'f32b96ea-0000-4000-8000-000000000002'},
      parentId: '5979809f-0000-4000-8000-000000000001',
    ),
  ],
  'auditstd': [
    EntityRecord(
      id: '74b064d1-0000-4000-8000-000000000001',
      values: {
        'code': 'AS-01',
        'control_code': 'AUD-001',
        'name': '内部監査標準',
        'pronunciation': 'ナイブカンサヒョウジュン',
        'nickname': '',
        'category': '10',
        'detail': '',
        'remarks': '',
      },
    ),
  ],
  'auditstdimp': [
    EntityRecord(
      id: '31b285bd-0000-4000-8000-000000000001',
      values: {'check': '5202b893-0000-4000-8000-000000000001'},
      parentId: '74b064d1-0000-4000-8000-000000000001',
    ),
    EntityRecord(
      id: '31b285bd-0000-4000-8000-000000000002',
      values: {'check': '5202b893-0000-4000-8000-000000000002'},
      parentId: '74b064d1-0000-4000-8000-000000000001',
    ),
  ],
  'auditteam': [
    EntityRecord(
      id: '4464ecd1-0000-4000-8000-000000000001',
      values: {
        'name': '品質監査チームA',
        'trans_audit_id': 'f5615aa8-0000-4000-8000-000000000001',
        'remarks': '',
      },
    ),
    EntityRecord(
      id: '4464ecd1-0000-4000-8000-000000000002',
      values: {
        'name': '製造監査チームB',
        'trans_audit_id': 'f5615aa8-0000-4000-8000-000000000001',
        'remarks': '',
      },
    ),
  ],
  'auditor': [
    EntityRecord(
      id: '3bbefb95-0000-4000-8000-000000000001',
      values: {
        'audit_std_id': '74b064d1-0000-4000-8000-000000000001',
        'ccategory': '10',
        'staff_id': '675ca4d1-0000-4000-8000-000000000001',
        'remarks': '',
      },
      parentId: '4464ecd1-0000-4000-8000-000000000001',
    ),
    EntityRecord(
      id: '3bbefb95-0000-4000-8000-000000000002',
      values: {
        'audit_std_id': '74b064d1-0000-4000-8000-000000000001',
        'ccategory': '20',
        'staff_id': '675ca4d1-0000-4000-8000-000000000002',
        'remarks': '',
      },
      parentId: '4464ecd1-0000-4000-8000-000000000001',
    ),
  ],
  'audit': [
    EntityRecord(
      id: 'f5615aa8-0000-4000-8000-000000000001',
      values: {
        'audit_std_id': '74b064d1-0000-4000-8000-000000000001',
        'staff_id': '675ca4d1-0000-4000-8000-000000000003',
        'scheduled_start_date': '2026-11-12',
        'expected_end_date': '2026-10-10',
        'title': '件名1',
        'detail': '',
        'info_department_id': '',
        'mstr_stakeholder_id': '9c2cec53-0000-4000-8000-000000000001',
        'remarks': '',
      },
    ),
  ],
  'auditteamlink': [
    EntityRecord(
      id: 'a7855ca5-0000-4000-8000-000000000001',
      values: {'team': '4464ecd1-0000-4000-8000-000000000001'},
      parentId: 'f5615aa8-0000-4000-8000-000000000001',
    ),
  ],
  'auditmember': [
    EntityRecord(
      id: '29e63e9a-0000-4000-8000-000000000001',
      values: {'class': '10', 'remarks': ''},
      parentId: 'f5615aa8-0000-4000-8000-000000000001',
    ),
    EntityRecord(
      id: '29e63e9a-0000-4000-8000-000000000002',
      values: {'class': '20', 'remarks': ''},
      parentId: 'f5615aa8-0000-4000-8000-000000000001',
    ),
  ],
};
