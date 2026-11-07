import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:purchasing/src/dashboard/purchasing_metric_sources.dart';

RecordingDataRepository<MetricPage<R>> _repo<R>(List<R> all) =>
    RecordingDataRepository<MetricPage<R>>(
      onFind: (call) async => MetricPage(
        rows: all.skip(call.skip).take(call.take).toList(),
        totalCount: all.length,
      ),
    );

void main() {
  test('発注金額: 発注金額の合計が主値、内訳に入荷金額と数量。全ページを読む', () async {
    final repo = _repo([
      for (var i = 1; i <= 5; i++)
        PurchaseAmountRow(
          purchaseQuantity: 10,
          receivedQuantity: i,
          purchaseAmount: 2000,
          receivedAmount: i * 100,
        ),
    ]);
    final value = await PurchaseAmountMetricSource(
      repo,
      pageSize: 2,
    ).metric(null);
    expect(value.value, 10000);
    expect(value.unit, '円');
    expect(value.breakdown, {'入荷金額': 1500, '発注数量': 50, '入荷数量': 15});
    expect(repo.calls.map((c) => c.skip), [0, 2, 4]);
  });

  test('発注納期遵守率: 完了(遵守 + 遅延)のうちの遵守の割合。完了が無ければ 0', () async {
    final repo = _repo([
      const PurchaseComplianceRow(onTime: 3, late: 1, overdue: 2, pending: 4),
    ]);
    final value = await PurchaseComplianceMetricSource(repo).metric(null);
    expect(value.value, 75);
    expect(value.unit, '%');
    expect(value.breakdown, {'遵守': 3, '遅延': 1, '期限超過': 2, '未完了': 4});

    final none = await PurchaseComplianceMetricSource(
      _repo<PurchaseComplianceRow>(const []),
    ).metric(null);
    expect(none.value, 0);
  });
}
