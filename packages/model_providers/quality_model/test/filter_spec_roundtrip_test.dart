// 全画面の検索条件の対応表(lib/src/contents/<画面>_filter_spec.dart)のすべてのキーが、
// 生成モデル(Input$<テーブル>Filter)のfromJson/toJsonで欠落なく往復できること。
// fromJsonは未知のキーを黙って捨てるため、toJsonとの一致で、画面用スキーマに経路が揃っていることを確認する。

import 'package:flutter_test/flutter_test.dart';
import 'package:quality_model/quality_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

final _roundTrips =
    <String, Map<String, dynamic> Function(Map<String, dynamic>)>{
      'MstrAuditStdCheckitemFilter': (j) =>
          Input$MstrAuditStdCheckitemFilter.fromJson(j).toJson(),
      'MstrAuditStdFilter': (j) =>
          Input$MstrAuditStdFilter.fromJson(j).toJson(),
      'MstrReportFilter': (j) => Input$MstrReportFilter.fromJson(j).toJson(),
      'TransAuditFilter': (j) => Input$TransAuditFilter.fromJson(j).toJson(),
      'TransAuditMemberFilter': (j) =>
          Input$TransAuditMemberFilter.fromJson(j).toJson(),
      'TransAuditTeamFilter': (j) =>
          Input$TransAuditTeamFilter.fromJson(j).toJson(),
      'TransAuditorFilter': (j) =>
          Input$TransAuditorFilter.fromJson(j).toJson(),
      'TransComplaintEquipmentFilter': (j) =>
          Input$TransComplaintEquipmentFilter.fromJson(j).toJson(),
      'TransComplaintFileFilter': (j) =>
          Input$TransComplaintFileFilter.fromJson(j).toJson(),
      'TransComplaintFilter': (j) =>
          Input$TransComplaintFilter.fromJson(j).toJson(),
      'TransComplaintOrderFilter': (j) =>
          Input$TransComplaintOrderFilter.fromJson(j).toJson(),
      'TransComplaintProcessFilter': (j) =>
          Input$TransComplaintProcessFilter.fromJson(j).toJson(),
      'TransComplaintReceiveFilter': (j) =>
          Input$TransComplaintReceiveFilter.fromJson(j).toJson(),
      'TransComplaintStakeholderFilter': (j) =>
          Input$TransComplaintStakeholderFilter.fromJson(j).toJson(),
      'TransDisposalFilter': (j) =>
          Input$TransDisposalFilter.fromJson(j).toJson(),
      'TransObserverDisposalFilter': (j) =>
          Input$TransObserverDisposalFilter.fromJson(j).toJson(),
      'TransObserverPreventiveFilter': (j) =>
          Input$TransObserverPreventiveFilter.fromJson(j).toJson(),
      'TransOrderDetailRiskFilter': (j) =>
          Input$TransOrderDetailRiskFilter.fromJson(j).toJson(),
      'TransOrderRiskFilter': (j) =>
          Input$TransOrderRiskFilter.fromJson(j).toJson(),
      'TransPreventionDetailFilter': (j) =>
          Input$TransPreventionDetailFilter.fromJson(j).toJson(),
      'TransPreventionFilter': (j) =>
          Input$TransPreventionFilter.fromJson(j).toJson(),
      'TransRecurrencePreventionFilter': (j) =>
          Input$TransRecurrencePreventionFilter.fromJson(j).toJson(),
      'TransRiskFilter': (j) => Input$TransRiskFilter.fromJson(j).toJson(),
      'TransTaskRiskFilter': (j) =>
          Input$TransTaskRiskFilter.fromJson(j).toJson(),
    };

final _specs = <String, FlatFilterSpec>{
  'audit_member_page': AuditMemberPageFilterSpec.spec,
  'audit_page': AuditPageFilterSpec.spec,
  'audit_std_checkitem_page': AuditStdCheckitemPageFilterSpec.spec,
  'audit_std_page': AuditStdPageFilterSpec.spec,
  'audit_team_page': AuditTeamPageFilterSpec.spec,
  'auditor_page': AuditorPageFilterSpec.spec,
  'complaint_equipment_page': ComplaintEquipmentPageFilterSpec.spec,
  'complaint_file_page': ComplaintFilePageFilterSpec.spec,
  'complaint_order_page': ComplaintOrderPageFilterSpec.spec,
  'complaint_page': ComplaintPageFilterSpec.spec,
  'complaint_process_page': ComplaintProcessPageFilterSpec.spec,
  'complaint_receive_page': ComplaintReceivePageFilterSpec.spec,
  'complaint_stakeholder_page': ComplaintStakeholderPageFilterSpec.spec,
  'disposal_page': DisposalPageFilterSpec.spec,
  'observer_disposal_page': ObserverDisposalPageFilterSpec.spec,
  'observer_preventive_page': ObserverPreventivePageFilterSpec.spec,
  'order_detail_risk_page': OrderDetailRiskPageFilterSpec.spec,
  'order_risk_page': OrderRiskPageFilterSpec.spec,
  'prevention_detail_page': PreventionDetailPageFilterSpec.spec,
  'prevention_page': PreventionPageFilterSpec.spec,
  'recurrence_prevention_page': RecurrencePreventionPageFilterSpec.spec,
  'report_page': ReportPageFilterSpec.spec,
  'risk_page': RiskPageFilterSpec.spec,
  'task_risk_page': TaskRiskPageFilterSpec.spec,
};

void main() {
  group('全画面の対応表が生成モデル(Input\$...Filter)で往復できる', () {
    for (final entry in _specs.entries) {
      test(entry.key, () {
        final spec = entry.value;
        final roundTrip = _roundTrips[spec.filterType];
        expect(roundTrip, isNotNull, reason: '${spec.filterType}の往復が未登録');
        expect(spec.paths, isNotEmpty);
        final converter = FlatFilterConverter(spec);
        for (final key in spec.paths.keys) {
          final nested = converter.convert(
            {
              key: {'isNull': false},
            },
            variables: {
              'languageCodeId': '00000000-0000-0000-0000-000000000001',
            },
          );
          expect(roundTrip!(nested), nested, reason: '$keyのFilterが生成モデルで欠落する');
        }
        // 全キーを一度に指定しても往復できる(同じ経路の条件が衝突しない)。
        final all = converter.convert(
          {
            for (final k in spec.paths.keys) k: {'isNull': false},
          },
          variables: {'languageCodeId': '00000000-0000-0000-0000-000000000001'},
        );
        expect(roundTrip!(all), all);
      });
    }
  });
}
