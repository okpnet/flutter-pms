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
  operatorTests();
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

ProviderContainer _containerWith(InMemoryScanGateway g, {required bool operator}) {
  final c = ProviderContainer(
    overrides: [
      scanGatewayProvider.overrideWithValue(g),
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      batchQueueProvider.overrideWithValue(true),
      requireOperatorProvider.overrideWithValue(operator),
    ],
  );
  addTearDown(c.dispose);
  return c;
}

void operatorTests() {
  test('担当者の読み取りが必須: 担当者以外から始めると警告して処理待ちを消す', () async {
    final c = _containerWith(InMemoryScanGateway(), operator: true);
    final flow = c.read(scanFlowProvider.notifier);
    await flow.submit('SH-A-01');
    expect(c.read(scanFlowProvider).notice?.kind, NoticeKind.needOperator);
    expect(c.read(scanFlowProvider).operator, isNull);
    await flow.submit('ST-TANAKA');
    expect(c.read(scanFlowProvider).operator?.name, '田中 太郎');
    expect(c.read(scanFlowProvider).notice?.kind, NoticeKind.operatorSet);
    await _stock(flow, 'SH-A-01', 'IT-UNIT-A', '1');
    expect(c.read(scanFlowProvider).queue, hasLength(1));
    expect(c.read(scanFlowProvider).operator, isNotNull); // 入庫のあとも担当者は残る
  });

  test('選択したコンテナを残し、2 件目以降は棚の読み取りを省く', () async {
    final c = _containerWith(InMemoryScanGateway(), operator: false);
    final flow = c.read(scanFlowProvider.notifier);
    await flow.submit('PO-2610-001-1');
    await flow.submit('1');
    await flow.evaluate(pass: true);
    expect(c.read(scanFlowProvider).step, ScanStep.putShelf);
    await flow.submit('SH-R-01');
    expect(c.read(scanFlowProvider).selectedShelf?.symbol, 'SH-R-01');
    await flow.submit('PO-2610-002-1');
    await flow.submit('1');
    await flow.evaluate(pass: true); // 棚の読み取りなしで処理待ちへ
    final s = c.read(scanFlowProvider);
    expect(s.step, ScanStep.top);
    expect(s.queue, hasLength(2));
    flow.changeShelf();
    expect(c.read(scanFlowProvider).selectedShelf, isNull);
  });
}
