import 'package:barcode_entry/barcode_entry.dart';
import 'package:barcode_entry/barcode_entry_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

/// 登録だけ失敗する取得元(通信の異常の代わり)。
class _FailingGateway extends InMemoryScanGateway {
  @override
  Future<void> putAway({
    required StockSource source,
    required int quantity,
    required ShelfTarget shelf,
    RejectReason? reason,
  }) => throw StateError('offline');
}

ProviderContainer _container(InMemoryScanGateway gateway) {
  final c = ProviderContainer(
    overrides: [
      scanGatewayProvider.overrideWithValue(gateway),
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
    ],
  );
  addTearDown(c.dispose);
  return c;
}

void main() {
  late InMemoryScanGateway gateway;
  late ProviderContainer c;
  setUp(() {
    gateway = InMemoryScanGateway();
    c = _container(gateway);
  });

  ScanFlow flow() => c.read(scanFlowProvider.notifier);
  ScanState st() => c.read(scanFlowProvider);

  test('空・未登録の入力は通知(やり直し)で、段階は変わらない', () async {
    await flow().submit('  ');
    expect(st().notice?.kind, NoticeKind.empty);
    await flow().submit('XX-1');
    expect(st().notice?.kind, NoticeKind.unknown);
    expect(st().step, ScanStep.top);
    expect(st().log.first.kind, LogKind.unknown);
  });

  test('未開始の作業指示: 開始 → 棚出庫 → トップへ', () async {
    await flow().submit('wo-2610-001');
    expect(st().step, ScanStep.start);
    flow().answerStart(true);
    expect(st().step, ScanStep.issueShelf);
    await flow().submit('IT-BAR'); // 棚ではない
    expect(st().notice?.kind, NoticeKind.expectShelf);
    await flow().submit('SH-M-01');
    expect(st().step, ScanStep.top);
    expect(st().notice?.kind, NoticeKind.started);
    expect(gateway.journal.single, 'start WO-2610-001 <- SH-M-01');
  });

  test('「いいえ」なら開始せずトップへ戻る', () async {
    await flow().submit('WO-2610-001');
    flow().answerStart(false);
    expect(st().step, ScanStep.top);
    expect(st().notice?.kind, NoticeKind.notStarted);
    expect(gateway.journal, isEmpty);
  });

  test('開始中の作業指示: 数量 → 合格 → 入庫', () async {
    await flow().submit('WO-2610-002');
    expect(st().step, ScanStep.qty);
    await flow().submit('0');
    expect(st().notice?.kind, NoticeKind.qtyInvalid);
    await flow().submit('121'); // 残り 120
    expect(st().notice?.kind, NoticeKind.qtyOverWork);
    await flow().submit('20');
    expect(st().step, ScanStep.eval);
    flow().evaluate(pass: true);
    expect(st().step, ScanStep.putShelf);
    await flow().submit('SH-A-01');
    expect(st().step, ScanStep.top);
    expect(gateway.journal.single, 'put WO-2610-002 x20 -> SH-A-01');
    expect(st().log.first.kind, LogKind.storedWork);
    // 残りが 100 に減っている
    await flow().submit('WO-2610-002');
    expect(st().context.order!.remaining, 100);
  });

  test('不合格は理由を決めて入庫し、指示数量が完了すると次は完了の通知', () async {
    await flow().submit('WO-2610-002');
    await flow().submit('120');
    flow().evaluate(pass: false);
    expect(st().step, ScanStep.ng);
    flow().confirmReject(RejectReason.appearance);
    await flow().submit('SH-X-01');
    expect(gateway.journal.single, 'put WO-2610-002 x120 -> SH-X-01 (appearance)');
    expect(st().log.first.kind, LogKind.storedWorkDone);
    await flow().submit('WO-2610-002');
    expect(st().notice?.kind, NoticeKind.workDone);
    expect(st().step, ScanStep.top);
  });

  test('購入品: 受入数量 → 評価 → 入庫。受入済みの残りを超えられない', () async {
    await flow().submit('PO-2610-002-1');
    expect(st().step, ScanStep.recvQty);
    await flow().submit('4001'); // 残り 4000
    expect(st().notice?.kind, NoticeKind.qtyOverPurchase);
    await flow().submit('4000');
    flow().evaluate(pass: true);
    await flow().submit('SH-R-01');
    await flow().submit('PO-2610-002-1');
    expect(st().notice?.kind, NoticeKind.purchaseDone);
  });

  test('棚移動: 棚 → 製品 → 数量で入庫', () async {
    await flow().submit('SH-A-02');
    expect(st().step, ScanStep.stockItem);
    await flow().submit('SH-A-01');
    expect(st().notice?.kind, NoticeKind.expectItem);
    await flow().submit('IT-UNIT-A');
    expect(st().step, ScanStep.stockQty);
    await flow().submit('5');
    expect(st().step, ScanStep.top);
    expect(gateway.journal.single, 'put IT-UNIT-A x5 -> SH-A-02');
  });

  test('製品を先に読み込むと棚を先に読むよう通知する', () async {
    await flow().submit('IT-BAR');
    expect(st().notice?.kind, NoticeKind.needShelfFirst);
  });

  test('モードを選ぶと、その種類だけ受け付ける', () async {
    flow().toggleMode(ScanMode.receive);
    await flow().submit('WO-2610-001');
    expect(st().notice?.kind, NoticeKind.wrongKind);
    expect(st().step, ScanStep.top);
    flow().toggleMode(ScanMode.receive); // もう一度で自動判定へ
    expect(st().mode, isNull);
  });

  test('設備点検: 項目ごとの結果を記録する', () async {
    await flow().submit('eq-001');
    expect(st().step, ScanStep.equipment);
    await flow().saveInspection(const [
      InspectionResult.pass,
      InspectionResult.recheck,
      InspectionResult.pass,
    ]);
    expect(st().step, ScanStep.top);
    expect(st().log.first.kind, LogKind.inspectedWithIssue);
    expect(gateway.journal.single, 'inspect EQ-001 pass,recheck,pass');
  });

  test('取り消しでトップへ戻る(モードは残る)', () async {
    flow().toggleMode(ScanMode.work);
    await flow().submit('WO-2610-001');
    flow().cancel();
    expect(st().step, ScanStep.top);
    expect(st().mode, ScanMode.work);
  });

  test('登録の失敗は通知し、同じ段階にとどまる', () async {
    final failing = _container(_FailingGateway());
    final f = failing.read(scanFlowProvider.notifier);
    await f.submit('WO-2610-002');
    await f.submit('10');
    f.evaluate(pass: true);
    await f.submit('SH-A-01');
    final s = failing.read(scanFlowProvider);
    expect(s.step, ScanStep.putShelf);
    expect(s.notice?.kind, NoticeKind.failed);
    expect(s.working, isFalse);
  });

  test('遷移先はパスへ変換され、symbol を渡せる', () {
    const module = BarcodeEntryModule();
    expect(module.locationOf(const BarcodeEntryDestination()), '/barcode');
    expect(
      module.locationOf(const BarcodeEntryDestination(symbol: 'WO-1')),
      '/barcode?symbol=WO-1',
    );
    expect(
      barcodeEntryDestinationSamples.every(
        (d) => module.locationOf(d) != null,
      ),
      isTrue,
    );
  });
}
