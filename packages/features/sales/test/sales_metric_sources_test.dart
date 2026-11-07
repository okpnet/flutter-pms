import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales/src/dashboard/sales_metric_sources.dart';

RecordingDataRepository<MetricPage<R>> _repo<R>(List<R> all) =>
    RecordingDataRepository<MetricPage<R>>(
      onFind: (call) async => MetricPage(
        rows: all.skip(call.skip).take(call.take).toList(),
        totalCount: all.length,
      ),
    );

void main() {
  test('売り上げ実績: 出荷済み金額の合計が主値、内訳に受注の金額と数量。全ページを読む', () async {
    final repo = _repo([
      for (var i = 1; i <= 5; i++)
        SalesRecordRow(
          orderQuantity: 10,
          shippedQuantity: i,
          orderAmount: 1000,
          shippedAmount: i * 100,
        ),
    ]);
    final value = await SalesRecordMetricSource(repo, pageSize: 2).metric(null);
    expect(value.value, 1500);
    expect(value.unit, '円');
    expect(value.breakdown, {'受注金額': 5000, '受注数量': 50, '出荷数量': 15});
    expect(repo.calls.map((c) => c.skip), [0, 2, 4]);
  });

  test('出荷予定受注実績状況: 出荷残の数量が主値', () async {
    final repo = _repo([
      const ShippingOrderStatusRow(
        scheduledQuantity: 10,
        shippedQuantity: 4,
        remainingQuantity: 6,
        scheduledAmount: 1000,
        shippedAmount: 400,
      ),
      const ShippingOrderStatusRow(
        scheduledQuantity: 5,
        shippedQuantity: 5,
        remainingQuantity: 0,
        scheduledAmount: 500,
        shippedAmount: 500,
      ),
    ]);
    final value = await ShippingOrderStatusMetricSource(repo).metric(null);
    expect(value.value, 6);
    expect(value.breakdown['予定数量'], 15);
    expect(value.breakdown['出荷済み金額'], 900);
  });

  test('出荷納期遵守率: 完了(遵守 + 遅延)のうちの遵守の割合。完了が無ければ 0', () async {
    final repo = _repo([
      const ShippingComplianceRow(onTime: 6, late: 2, overdue: 1, pending: 3),
      const ShippingComplianceRow(onTime: 2, late: 0, overdue: 0, pending: 0),
    ]);
    final value = await ShippingComplianceMetricSource(repo).metric(null);
    expect(value.value, 80);
    expect(value.unit, '%');
    expect(value.breakdown, {'遵守': 8, '遅延': 2, '期限超過': 1, '未完了': 3});

    final none = await ShippingComplianceMetricSource(
      _repo<ShippingComplianceRow>(const []),
    ).metric(null);
    expect(none.value, 0);
  });

  test('行が無ければ 0(問い合わせは1回)', () async {
    final repo = _repo<SalesRecordRow>(const []);
    final value = await SalesRecordMetricSource(repo).metric(null);
    expect(value.value, 0);
    expect(repo.calls, hasLength(1));
  });
}
