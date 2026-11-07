import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:production_plan/src/dashboard/work_plan_compliance_metric_source.dart';

WorkPlanComplianceRow _row(WorkPlanCompliance s) =>
    WorkPlanComplianceRow(status: s, plannedQuantity: 1, workQuantity: 1);

void main() {
  test('ビューの値を種類にする。知らない値・無いときは未完了', () {
    expect(WorkPlanCompliance.parse('ON_TIME'), WorkPlanCompliance.onTime);
    expect(WorkPlanCompliance.parse('late'), WorkPlanCompliance.late);
    expect(WorkPlanCompliance.parse('OVERDUE'), WorkPlanCompliance.overdue);
    expect(WorkPlanCompliance.parse('PENDING'), WorkPlanCompliance.pending);
    expect(WorkPlanCompliance.parse('???'), WorkPlanCompliance.pending);
    expect(WorkPlanCompliance.parse(null), WorkPlanCompliance.pending);
  });

  test('生産納期遵守率: 完了(遵守 + 遅延)のうちの遵守の割合。全ページを読む', () async {
    final all = [
      _row(WorkPlanCompliance.onTime),
      _row(WorkPlanCompliance.onTime),
      _row(WorkPlanCompliance.onTime),
      _row(WorkPlanCompliance.late),
      _row(WorkPlanCompliance.overdue),
      _row(WorkPlanCompliance.pending),
    ];
    final repo = RecordingDataRepository<WorkPlanCompliancePage>(
      onFind: (call) async => WorkPlanCompliancePage(
        rows: all.skip(call.skip).take(call.take).toList(),
        totalCount: all.length,
      ),
    );
    final value = await WorkPlanComplianceMetricSource(
      repo,
      pageSize: 4,
    ).metric(null);
    expect(value.value, 75);
    expect(value.unit, '%');
    expect(value.breakdown, {'遵守': 3, '遅延': 1, '期限超過': 1, '未完了': 1});
    expect(repo.calls.map((c) => c.skip), [0, 4]);
  });

  test('完了が無ければ 0', () async {
    final repo = RecordingDataRepository<WorkPlanCompliancePage>(
      result: WorkPlanCompliancePage(
        rows: [_row(WorkPlanCompliance.pending)],
        totalCount: 1,
      ),
    );
    final value = await WorkPlanComplianceMetricSource(repo).metric(null);
    expect(value.value, 0);
  });
}
