// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 品質管理の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。
const List<EntityDefinition> qualityDefinitions = [
  EntityDefinition(
    key: 'complaint',
    fields: [
      FieldDefinition(
        key: 'occurent_at',
        kind: FieldKind.date,
        required: false,
      ),
      FieldDefinition(key: 'title'),
      FieldDefinition(
        key: 'detail',
        kind: FieldKind.multiline,
        required: false,
      ),
      FieldDefinition(
        key: 'reporter_staff_id',
        kind: FieldKind.reference,
        reference: 'staff',
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
      FieldDefinition(
        key: 'kind',
        kind: FieldKind.choice,
        options: [
          '設備の点検で発見された異常',
          '工程で発見された異常',
          '購買・委託品の受入で発見された異常',
          '棚移動で発見された異常',
          '顧客クレーム',
          '利害関係者の苦情',
        ],
      ),
      FieldDefinition(key: 'external', kind: FieldKind.flag, required: false),
      FieldDefinition(key: 'party', required: false),
      FieldDefinition(
        key: 'claim',
        kind: FieldKind.choice,
        required: false,
        options: ['クレーム', '苦情'],
      ),
      FieldDefinition(key: 'target', required: false),
    ],
  ),
  EntityDefinition(
    key: 'compreceive',
    owner: 'complaint',
    fields: [
      FieldDefinition(key: 'receive_at', kind: FieldKind.date, required: false),
      FieldDefinition(
        key: 'receive_staff_id',
        kind: FieldKind.reference,
        reference: 'staff',
      ),
      FieldDefinition(
        key: 'detail',
        kind: FieldKind.multiline,
        required: false,
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'compstake',
    owner: 'complaint',
    fields: [
      FieldDefinition(
        key: 'stakeholder_id',
        kind: FieldKind.reference,
        reference: 'customer',
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'compfile',
    owner: 'complaint',
    fields: [
      FieldDefinition(key: 'file', kind: FieldKind.file),
      FieldDefinition(key: 'date', kind: FieldKind.date),
    ],
  ),
  EntityDefinition(
    key: 'orderrisk',
    fields: [
      FieldDefinition(
        key: 'trans_order_id',
        kind: FieldKind.reference,
        reference: 'order',
      ),
      FieldDefinition(
        key: 'trans_risk_id',
        kind: FieldKind.reference,
        reference: 'risk',
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'orderdetailrisk',
    fields: [
      FieldDefinition(
        key: 'trans_order_detail_id',
        kind: FieldKind.reference,
        reference: 'orderdetail',
      ),
      FieldDefinition(
        key: 'risk_id',
        kind: FieldKind.reference,
        reference: 'risk',
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'odrimp',
    owner: 'orderdetailrisk',
    fields: [
      FieldDefinition(
        key: 'risk',
        kind: FieldKind.reference,
        reference: 'risk',
      ),
    ],
  ),
  EntityDefinition(
    key: 'taskrisk',
    fields: [
      FieldDefinition(
        key: 'mstr_task_id',
        kind: FieldKind.reference,
        reference: 'task',
      ),
      FieldDefinition(
        key: 'risk_id',
        kind: FieldKind.reference,
        reference: 'risk',
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'trimp',
    owner: 'taskrisk',
    fields: [
      FieldDefinition(
        key: 'risk',
        kind: FieldKind.reference,
        reference: 'risk',
      ),
    ],
  ),
  EntityDefinition(
    key: 'auditstd',
    fields: [
      FieldDefinition(key: 'code', required: false),
      FieldDefinition(key: 'control_code', required: false),
      FieldDefinition(key: 'name'),
      FieldDefinition(key: 'pronunciation', required: false),
      FieldDefinition(key: 'nickname', required: false),
      FieldDefinition(key: 'category', kind: FieldKind.number, required: false),
      FieldDefinition(
        key: 'detail',
        kind: FieldKind.multiline,
        required: false,
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'auditstdimp',
    owner: 'auditstd',
    fields: [
      FieldDefinition(
        key: 'check',
        kind: FieldKind.reference,
        reference: 'auditstdcheck',
      ),
    ],
  ),
  EntityDefinition(
    key: 'auditteam',
    fields: [
      FieldDefinition(key: 'name'),
      FieldDefinition(
        key: 'trans_audit_id',
        kind: FieldKind.reference,
        reference: 'audit',
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'auditor',
    owner: 'auditteam',
    fields: [
      FieldDefinition(
        key: 'audit_std_id',
        kind: FieldKind.reference,
        reference: 'auditstd',
      ),
      FieldDefinition(
        key: 'ccategory',
        kind: FieldKind.number,
        required: false,
      ),
      FieldDefinition(
        key: 'staff_id',
        kind: FieldKind.reference,
        reference: 'staff',
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'audit',
    fields: [
      FieldDefinition(
        key: 'audit_std_id',
        kind: FieldKind.reference,
        reference: 'auditstd',
      ),
      FieldDefinition(
        key: 'staff_id',
        kind: FieldKind.reference,
        reference: 'staff',
      ),
      FieldDefinition(
        key: 'scheduled_start_date',
        kind: FieldKind.date,
        required: false,
      ),
      FieldDefinition(
        key: 'expected_end_date',
        kind: FieldKind.date,
        required: false,
      ),
      FieldDefinition(key: 'title'),
      FieldDefinition(
        key: 'detail',
        kind: FieldKind.multiline,
        required: false,
      ),
      FieldDefinition(
        key: 'info_department_id',
        kind: FieldKind.reference,
        required: false,
        reference: 'department',
      ),
      FieldDefinition(
        key: 'mstr_stakeholder_id',
        kind: FieldKind.reference,
        required: false,
        reference: 'customer',
      ),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
  EntityDefinition(
    key: 'auditteamlink',
    owner: 'audit',
    fields: [
      FieldDefinition(
        key: 'team',
        kind: FieldKind.reference,
        reference: 'auditteam',
      ),
    ],
  ),
  EntityDefinition(
    key: 'auditmember',
    owner: 'audit',
    fields: [
      FieldDefinition(key: 'class', kind: FieldKind.number),
      FieldDefinition(
        key: 'remarks',
        kind: FieldKind.multiline,
        required: false,
      ),
    ],
  ),
];
