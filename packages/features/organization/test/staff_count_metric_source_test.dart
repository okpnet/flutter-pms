import 'package:data_strategist/lib.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:organization/src/dashboard/staff_count_metric_source.dart';
import 'package:pms_graphql/pms_graphql.dart';

void main() {
  test('従業員数は全ページの行を合計し、内訳に配属数を持つ', () async {
    final all = [
      for (var i = 0; i < 5; i++) StaffCountRow(staffCount: i + 1, assignCount: 2),
    ];
    final calls = <Map<String, dynamic>>[];
    final repo = GraphqlDataRepository<StaffCountPage>(
      fetch: (v) async {
        calls.add(v);
        final skip = (v['offset'] as int?) ?? 0;
        final take = v['first'] as int;
        return StaffCountPage(
          rows: all.skip(skip).take(take).toList(),
          totalCount: all.length,
        );
      },
    );
    final value = await StaffCountMetricSource(repo, pageSize: 2).metric(null);
    expect(value.value, 15);
    expect(value.unit, '人');
    expect(value.breakdown, {'配属': 10});
    expect(calls.map((c) => c['offset']), [null, 2, 4]);
  });

  test('行が無ければ 0', () async {
    final repo = GraphqlDataRepository<StaffCountPage>(
      fetch: (_) async => const StaffCountPage(rows: [], totalCount: 0),
    );
    final value = await StaffCountMetricSource(repo).metric(null);
    expect(value.value, 0);
  });
}
