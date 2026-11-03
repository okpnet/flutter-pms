import 'package:access_control_model/access_control_model.dart'
    as access_control;
import 'package:barcode_entry_model/barcode_entry_model.dart' as barcode_entry;
import 'package:gql/ast.dart';
import 'package:item_model/item_model.dart' as item;
import 'package:organization_model/organization_model.dart' as organization;
import 'package:production_plan_model/production_plan_model.dart'
    as production_plan;
import 'package:purchasing_model/purchasing_model.dart' as purchasing;
import 'package:quality_document_model/quality_document_model.dart'
    as quality_document;
import 'package:quality_model/quality_model.dart' as quality;
import 'package:resource_model/resource_model.dart' as resource;
import 'package:sales_model/sales_model.dart' as sales;
import 'package:system_model/system_model.dart' as system;
import 'package:work_record_model/work_record_model.dart' as work_record;

/// 検証するモデルの読み込み(各モデルパッケージの、生成された問い合わせ文書を1つずつ)。
///
/// `shared_master_model` は読み込みの問い合わせが無いため含めない。
class ModelProbe {
  const ModelProbe(this.model, this.operation, this.document);

  /// モデルパッケージ名。
  final String model;

  /// 問い合わせの名前。
  final String operation;

  /// 生成された問い合わせ文書。
  final DocumentNode document;

  /// 1件だけ取得する変数。実在しない ID を渡す(必須の ID を持つ問い合わせがあるため)。
  Map<String, dynamic> get variables => const {
    'first': 1,
    'languageCodeId': _anyId,
    'mstrItemId': _anyId,
    'mstrDocumentId': _anyId,
    'transAuditId': _anyId,
  };

  @override
  String toString() => '$model/$operation';
}

const _anyId = '00000000-0000-0000-0000-000000000000';

final modelProbes = <ModelProbe>[
  ModelProbe(
    'access_control_model',
    'AccessPathPageRead',
    access_control.documentNodeQueryAccessPathPageRead,
  ),
  ModelProbe(
    'barcode_entry_model',
    'ScanContainerPageRead',
    barcode_entry.documentNodeQueryScanContainerPageRead,
  ),
  ModelProbe(
    'item_model',
    'ItemKindPageRead',
    item.documentNodeQueryItemKindPageRead,
  ),
  ModelProbe(
    'organization_model',
    'ApprovalOperationPageRead',
    organization.documentNodeQueryApprovalOperationPageRead,
  ),
  ModelProbe(
    'production_plan_model',
    'MrpLoadPageRead',
    production_plan.documentNodeQueryMrpLoadPageRead,
  ),
  ModelProbe(
    'purchasing_model',
    'ItemSupplierPageRead',
    purchasing.documentNodeQueryItemSupplierPageRead,
  ),
  ModelProbe(
    'quality_document_model',
    'DocumentContentPageRead',
    quality_document.documentNodeQueryDocumentContentPageRead,
  ),
  ModelProbe(
    'quality_model',
    'AuditMemberPageRead',
    quality.documentNodeQueryAuditMemberPageRead,
  ),
  ModelProbe(
    'resource_model',
    'CapabilityPageRead',
    resource.documentNodeQueryCapabilityPageRead,
  ),
  ModelProbe(
    'sales_model',
    'CustomerPageRead',
    sales.documentNodeQueryCustomerPageRead,
  ),
  ModelProbe(
    'system_model',
    'UnitPageRead',
    system.documentNodeQueryUnitPageRead,
  ),
  ModelProbe(
    'work_record_model',
    'CertificatePageRead',
    work_record.documentNodeQueryCertificatePageRead,
  ),
];
