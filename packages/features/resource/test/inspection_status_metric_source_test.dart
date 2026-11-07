import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:resource/src/dashboard/inspection_status_metric_source.dart';

InspectionStatusRow _row({required bool done, int overdue = 0}) =>
    InspectionStatusRow(
      isImplemented: done,
      scheduleDetailCount: 1,
      overdueCount: overdue,
    );

void main() {
  test('点検整備実施率: 実施済みの行 ÷ 全行。全ページを読み、内訳に期限超過', () async {
    final all = [
      _row(done: true),
      _row(done: true),
      _row(done: true),
      _row(done: false, overdue: 2),
    ];
    final repo = RecordingDataRepository<InspectionStatusPage>(
      onFind: (call) async => InspectionStatusPage(
        rows: all.skip(call.skip).take(call.take).toList(),
        totalCount: all.length,
      ),
    );
    final value = await InspectionStatusMetricSource(
      repo,
      pageSize: 3,
    ).metric(null);
    expect(value.value, 75);
    expect(value.unit, '%');
    expect(value.breakdown, {'実施済み': 3, '未実施': 1, '期限超過': 2});
    expect(repo.calls.map((c) => c.skip), [0, 3]);
  });

  test('行が無ければ 0', () async {
    final repo = RecordingDataRepository<InspectionStatusPage>(
      result: const InspectionStatusPage(rows: [], totalCount: 0),
    );
    final value = await InspectionStatusMetricSource(repo).metric(null);
    expect(value.value, 0);
    expect(value.breakdown['実施済み'], 0);
  });
}
