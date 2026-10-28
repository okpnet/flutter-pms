import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:organization/src/dashboard/staff_count_metric_source.dart';

void main() {
  test('従業員数は全ページの行を合計し、内訳に配属数を持つ', () async {
    final all = [
      for (var i = 0; i < 5; i++)
        StaffCountRow(staffCount: i + 1, assignCount: 2),
    ];
    final repo = RecordingDataRepository<StaffCountPage>(
      onFind: (call) async => StaffCountPage(
        rows: all.skip(call.skip).take(call.take).toList(),
        totalCount: all.length,
      ),
    );
    final value = await StaffCountMetricSource(repo, pageSize: 2).metric(null);
    expect(value.value, 15);
    expect(value.unit, '人');
    expect(value.breakdown, {'配属': 10});
    expect(repo.calls.map((c) => c.skip), [0, 2, 4]);
    expect(repo.calls.map((c) => c.take), [2, 2, 2]);
  });

  test('行が無ければ 0', () async {
    final repo = RecordingDataRepository<StaffCountPage>(
      result: const StaffCountPage(rows: [], totalCount: 0),
    );
    final value = await StaffCountMetricSource(repo).metric(null);
    expect(value.value, 0);
    expect(repo.calls, hasLength(1));
  });
}
