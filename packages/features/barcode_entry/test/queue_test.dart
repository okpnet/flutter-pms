import 'package:barcode_entry/barcode_entry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

/// 2 回目の入庫から失敗する取得元。
class _FailSecondGateway extends InMemoryScanGateway {
  int calls = 0;

  @override
  Future<void> putAway({
    required StockSource source,
    required int quantity,
    required ShelfTarget shelf,
    RejectReason? reason,
  }) {
    calls++;
    if (calls >= 2) throw StateError('offline');
    return super.putAway(source: source, quantity: quantity, shelf: shelf, reason: reason);
  }
}

ProviderContainer _container(InMemoryScanGateway gateway, {bool batch = true}) {
  final c = ProviderContainer(
    overrides: [
      scanGatewayProvider.overrideWithValue(gateway),
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      batchQueueProvider.overrideWithValue(batch),
    ],
  );
  addTearDown(c.dispose);
  return c;
}

/// 棚 → 品目 → 数量で、棚移動の入庫を 1 件進める。
Future<void> _stock(ScanFlow flow, String shelf, String item, String qty) async {
  await flow.submit(shelf);
  await flow.submit(item);
  await flow.submit(qty);
}

void main() {
  test('キューを有効にすると、入庫は登録せず処理待ちにたまる', () async {
    final g = InMemoryScanGateway();
    final c = _container(g);
    final flow = c.read(scanFlowProvider.notifier);
    await _stock(flow, 'SH-A-01', 'IT-UNIT-A', '3');
    final s = c.read(scanFlowProvider);
    expect(s.queue, hasLength(1));
    expect(s.notice?.kind, NoticeKind.queued);
    expect(s.step, ScanStep.top);
    expect(g.journal, isEmpty);
  });

  test('まとめて登録: 順に登録してキューが空になる', () async {
    final g = InMemoryScanGateway();
    final c = _container(g);
    final flow = c.read(scanFlowProvider.notifier);
    await _stock(flow, 'SH-A-01', 'IT-UNIT-A', '3');
    await _stock(flow, 'SH-A-02', 'IT-BRKT', '5');
    await flow.flushQueue();
    final s = c.read(scanFlowProvider);
    expect(s.queue, isEmpty);
    expect(g.journal, hasLength(2));
    expect(s.notice?.kind, NoticeKind.stored);
  });

  test('1 件ずつ取り消せる(取得元へは何も送らない)', () async {
    final g = InMemoryScanGateway();
    final c = _container(g);
    final flow = c.read(scanFlowProvider.notifier);
    await _stock(flow, 'SH-A-01', 'IT-UNIT-A', '3');
    await _stock(flow, 'SH-A-02', 'IT-BRKT', '5');
    flow.removeQueued(0);
    expect(c.read(scanFlowProvider).queue, hasLength(1));
    await flow.flushQueue();
    expect(g.journal, hasLength(1));
  });

  test('途中で失敗したら、残りのキューを消して理由を通知する', () async {
    final g = _FailSecondGateway();
    final c = _container(g);
    final flow = c.read(scanFlowProvider.notifier);
    await _stock(flow, 'SH-A-01', 'IT-UNIT-A', '3');
    await _stock(flow, 'SH-A-02', 'IT-BRKT', '5');
    await _stock(flow, 'SH-A-01', 'IT-BAR', '2');
    await flow.flushQueue();
    final s = c.read(scanFlowProvider);
    expect(s.queue, isEmpty);
    expect(s.notice?.kind, NoticeKind.queueFailed);
    expect(s.notice?.args, {'done': 1, 'total': 3});
  });

  test('既定(キュー無効)は、これまでどおりその場で登録する', () async {
    final g = InMemoryScanGateway();
    final c = _container(g, batch: false);
    final flow = c.read(scanFlowProvider.notifier);
    await _stock(flow, 'SH-A-01', 'IT-UNIT-A', '3');
    expect(c.read(scanFlowProvider).queue, isEmpty);
    expect(g.journal, hasLength(1));
  });
}
