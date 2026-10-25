// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:feature_shared/feature_shared.dart';

/// ホームに並べる業務メニュー(トップメニューのグループ)。
/// 暫定: 共通のシェル部品(app_shell)ができるまでのホームの一覧。
class EntityMenuGroup {
  const EntityMenuGroup(this.label, this.entries);

  final String label;
  final List<FeatureHostEntry> entries;
}

const List<EntityMenuGroup> entityMenuGroups = [
  EntityMenuGroup('資源', [
      FeatureHostEntry('力量', EntityListDestination('capability')),
      FeatureHostEntry('資格', EntityListDestination('license')),
      FeatureHostEntry('場所', EntityListDestination('location')),
      FeatureHostEntry('設備分類', EntityListDestination('equipmentcategory')),
      FeatureHostEntry('設備', EntityListDestination('equipment')),
      FeatureHostEntry('点検整備区分', EntityListDestination('inspectionkind')),
      FeatureHostEntry('点検整備項目', EntityListDestination('inspectionitem')),
      FeatureHostEntry('設備点検整備運用', EntityListDestination('inspectionoperation')),
      FeatureHostEntry('点検予定', EntityListDestination('inspectionschedule')),
  ]),
  EntityMenuGroup('システム', [
      FeatureHostEntry('単位', EntityListDestination('unit')),
  ]),
  EntityMenuGroup('品目', [
      FeatureHostEntry('品目区分', EntityListDestination('itemkind')),
      FeatureHostEntry('HSコード', EntityListDestination('hscode')),
      FeatureHostEntry('品目', EntityListDestination('item')),
      FeatureHostEntry('品目大きさ区分', EntityListDestination('itemsizekind')),
  ]),
  EntityMenuGroup('工程', [
      FeatureHostEntry('工程グループ', EntityListDestination('taskgroup')),
      FeatureHostEntry('工程', EntityListDestination('task')),
      FeatureHostEntry('工程運用', EntityListDestination('operation')),
  ]),
  EntityMenuGroup('営業', [
      FeatureHostEntry('受注', EntityListDestination('order')),
  ]),
  EntityMenuGroup('購買', [
      FeatureHostEntry('利害関係者', EntityListDestination('supplier')),
      FeatureHostEntry('非計上', EntityListDestination('unrec')),
      FeatureHostEntry('発注', EntityListDestination('purchase')),
      FeatureHostEntry('受入実績', EntityListDestination('purchaserec')),
  ]),
  EntityMenuGroup('生産計画', [
      FeatureHostEntry('資材計画', EntityListDestination('resplan')),
      FeatureHostEntry('生産引き当て予約', EntityListDestination('prodrez')),
      FeatureHostEntry('購買引き当て予約', EntityListDestination('purrez')),
  ]),
  EntityMenuGroup('作業実績', [
      FeatureHostEntry('コンテナ', EntityListDestination('container')),
      FeatureHostEntry('引き当て', EntityListDestination('invapply')),
      FeatureHostEntry('引き当て予約', EntityListDestination('invreq')),
      FeatureHostEntry('成績書', EntityListDestination('certificate')),
      FeatureHostEntry('作業実績', EntityListDestination('workrec')),
  ]),
  EntityMenuGroup('品質共通', [
      FeatureHostEntry('異常処置', EntityListDestination('disposal')),
      FeatureHostEntry('再発防止処置', EntityListDestination('recur')),
      FeatureHostEntry('処置監視', EntityListDestination('obsdisp')),
      FeatureHostEntry('再発防止監視', EntityListDestination('obsprev')),
      FeatureHostEntry('リスク', EntityListDestination('risk')),
      FeatureHostEntry('監査標準項目', EntityListDestination('auditstdcheck')),
  ]),
  EntityMenuGroup('品質管理文書', [
      FeatureHostEntry('文書階層', EntityListDestination('doctier')),
      FeatureHostEntry('文書', EntityListDestination('doc')),
      FeatureHostEntry('文書コンテンツ', EntityListDestination('doccontent')),
      FeatureHostEntry('レポート', EntityListDestination('report')),
  ]),
  EntityMenuGroup('品質管理', [
      FeatureHostEntry('異常', EntityListDestination('complaint')),
      FeatureHostEntry('注文苦情', EntityListDestination('corder')),
      FeatureHostEntry('工程苦情', EntityListDestination('cproc')),
      FeatureHostEntry('設備苦情', EntityListDestination('cequip')),
      FeatureHostEntry('注文リスク', EntityListDestination('orderrisk')),
      FeatureHostEntry('受注明細リスク', EntityListDestination('orderdetailrisk')),
      FeatureHostEntry('工程リスク', EntityListDestination('taskrisk')),
      FeatureHostEntry('監査標準', EntityListDestination('auditstd')),
      FeatureHostEntry('監査チーム', EntityListDestination('auditteam')),
      FeatureHostEntry('監査', EntityListDestination('audit')),
  ]),
  EntityMenuGroup('会社情報', [
      FeatureHostEntry('会社情報', EntityListDestination('company')),
      FeatureHostEntry('事業所', EntityListDestination('site')),
      FeatureHostEntry('部署区分', EntityListDestination('deptkind')),
      FeatureHostEntry('部署', EntityListDestination('department')),
      FeatureHostEntry('作業者', EntityListDestination('staff')),
      FeatureHostEntry('承認パターン', EntityListDestination('approvalpattern')),
  ]),
];
