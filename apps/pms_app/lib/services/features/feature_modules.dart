import 'package:app_core/app_core.dart';
import 'package:item/item.dart';
import 'package:organization/organization.dart';
import 'package:production_plan/production_plan.dart';
import 'package:production_process/production_process.dart';
import 'package:purchasing/purchasing.dart';
import 'package:quality/quality.dart';
import 'package:quality_common/quality_common.dart';
import 'package:quality_document/quality_document.dart';
import 'package:resource/resource.dart';
import 'package:sales/sales.dart';
import 'package:shared_master/shared_master.dart';
import 'package:system/system.dart';
import 'package:work_record/work_record.dart';

import '../../imports.dart';

///アプリに組み込む機能(ライブラリ)の一覧。並び順がサイドバーのグループの並び順になる。
const List<FeatureModule> featureModules = [
  AppCoreModule(),
  OrganizationModule(),
  ItemModule(),
  ResourceModule(),
  SalesModule(),
  PurchasingModule(),
  ProductionPlanModule(),
  ProductionProcessModule(),
  WorkRecordModule(),
  QualityModule(),
  QualityCommonModule(),
  QualityDocumentModule(),
  SharedMasterModule(),
  SystemModule(),
];
