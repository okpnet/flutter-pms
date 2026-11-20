import 'package:barcode_entry/barcode_entry.dart';
import 'package:barcode_entry/barcode_entry_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

/// 登録だけ失敗する取得元(通信の異常の代わり)。
class _FailingGateway extends InMemoryScanGateway {
  @override
  Future<void> registerResult({
    required StockSource source,
    required int passQuantity,
    ShelfTarget? passShelf,
    int failQuantity = 0,
    ShelfTarget? failShelf,
    RejectReason? failReason,
    ReturnReason? returnReason,
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

  test('未開始の作業指示: 開始 → 棚 → 開始数量 → 登録(棚出庫 + 実績)→ トップへ', () async {
    await flow().submit('wo-2610-001');
    expect(st().step, ScanStep.start);
    flow().answerStart(true);
    expect(st().step, ScanStep.issueShelf);
    await flow().submit('IT-BAR'); // 棚ではない
    expect(st().notice?.kind, NoticeKind.expectShelf);
    await flow().submit('SH-M-01');
    expect(st().step, ScanStep.issueQty);
    expect(gateway.journal, isEmpty, reason: '数量を入れるまで登録しない');
    await flow().submit('0');
    expect(st().notice?.kind, NoticeKind.qtyInvalid);
    await flow().submit('101'); // 残り 100
    expect(st().notice?.kind, NoticeKind.qtyOverWork);
    await flow().submit('40');
    expect(st().step, ScanStep.top);
    expect(st().notice?.kind, NoticeKind.started);
    expect(gateway.journal.single, 'start WO-2610-001 <- SH-M-01 x40');
  });

  test('開始の数量の入力から「戻る」と、棚の読み取りへ戻る(登録しない)', () async {
    await flow().submit('WO-2610-001');
    flow().answerStart(true);
    await flow().submit('SH-M-01');
    expect(st().step, ScanStep.issueQty);
    flow().back();
    expect(st().step, ScanStep.issueShelf);
    expect(gateway.journal, isEmpty);
  });

  test('「いいえ」なら開始せずトップへ戻る', () async {
    await flow().submit('WO-2610-001');
    flow().answerStart(false);
    expect(st().step, ScanStep.top);
    expect(st().notice?.kind, NoticeKind.notStarted);
    expect(gateway.journal, isEmpty);
  });

  test('終了: 合格数量 → 合格の棚 → 不合格なし → 登録(1 回)', () async {
    await flow().submit('WO-2610-002');
    expect(st().step, ScanStep.qty);
    await flow().submit('-1');
    expect(st().notice?.kind, NoticeKind.qtyInvalid);
    await flow().submit('121'); // 残り 120
    expect(st().notice?.kind, NoticeKind.qtyOverWork);
    await flow().submit('120');
    expect(st().step, ScanStep.putShelf);
    expect(gateway.journal, isEmpty, reason: '棚・不合格の有無がそろうまで登録しない');
    await flow().submit('SH-A-01');
    expect(st().step, ScanStep.eval);
    await flow().evaluate(pass: true); // 不合格なし
    expect(st().step, ScanStep.top);
    expect(gateway.journal.single, 'result WO-2610-002 pass x120 -> SH-A-01');
    expect(st().log.first.kind, LogKind.storedWorkDone);
    await flow().submit('WO-2610-002');
    expect(st().notice?.kind, NoticeKind.workDone);
  });

  test('終了: 不合格があるときは、数量・理由・不合格の棚も集めて 1 回で登録する', () async {
    await flow().submit('WO-2610-002');
    await flow().submit('100'); // 合格 100
    await flow().submit('SH-A-01');
    await flow().evaluate(pass: false); // 不合格あり
    expect(st().step, ScanStep.failQty);
    await flow().submit('21'); // 残り 120 − 合格 100 = 20
    expect(st().notice?.kind, NoticeKind.qtyOverWork);
    await flow().submit('20');
    expect(st().step, ScanStep.ng);
    await flow().confirmReject(RejectReason.appearance);
    expect(st().step, ScanStep.putShelf);
    expect(st().context.rejected, isTrue);
    expect(gateway.journal, isEmpty);
    await flow().submit('SH-X-01');
    expect(st().step, ScanStep.top, reason: '合格 + 不合格 = 上限なので、差の理由は聞かない');
    expect(
      gateway.journal.single,
      'result WO-2610-002 pass x100 -> SH-A-01 fail x20 -> SH-X-01 (appearance)',
    );
    expect(st().log.map((e) => e.kind), everyElement(LogKind.storedWorkDone));
  });

  test('終了: 全量が不合格のときは、合格数量 0 から不合格の数量へ進む', () async {
    await flow().submit('WO-2610-002');
    await flow().submit('0');
    expect(st().step, ScanStep.failQty);
    await flow().submit('120');
    await flow().confirmReject(RejectReason.dimension);
    await flow().submit('SH-X-01');
    expect(gateway.journal.single, 'result WO-2610-002 fail x120 -> SH-X-01 (dimension)');
  });

  test('終了: 取り出した数量より少ないときは、差の理由を選んで登録する(差は払出元へ返る)', () async {
    // 開始 → 40 取り出し → 終了で合格 30(差 10)
    await flow().submit('WO-2610-001');
    flow().answerStart(true);
    await flow().submit('SH-M-01');
    await flow().submit('40');
    await flow().submit('WO-2610-001');
    expect(st().step, ScanStep.qty);
    expect(st().context.order!.finishLimit, 40, reason: '取り出した数量が上限');
    await flow().submit('41');
    expect(st().notice?.kind, NoticeKind.qtyOverWork);
    await flow().submit('30');
    await flow().submit('SH-A-01');
    await flow().evaluate(pass: true);
    expect(st().step, ScanStep.returnReason);
    expect(gateway.journal.length, 1, reason: '差の理由が決まるまで登録しない(開始だけ)');
    await flow().confirmReturn(ReturnReason.overDay);
    expect(st().step, ScanStep.top);
    expect(
      gateway.journal.last,
      'result WO-2610-001 pass x30 -> SH-A-01 return (overDay)',
    );
  });

  test('終了の「戻る」: 差の理由 → 不合格の有無 → 合格の棚 → 合格数量', () async {
    await flow().submit('WO-2610-001');
    flow().answerStart(true);
    await flow().submit('SH-M-01');
    await flow().submit('40');
    await flow().submit('WO-2610-001');
    await flow().submit('30');
    await flow().submit('SH-A-01');
    await flow().evaluate(pass: true);
    expect(st().step, ScanStep.returnReason);
    flow().back();
    expect(st().step, ScanStep.eval);
    flow().back();
    expect(st().step, ScanStep.putShelf);
    flow().back();
    expect(st().step, ScanStep.qty);
    expect(gateway.journal.length, 1);
  });

  test('購入品: 合格数量 → 棚 → 不合格なし → 登録。受入済みの残りを超えられない', () async {
    await flow().submit('PO-2610-002-1');
    expect(st().step, ScanStep.recvQty);
    await flow().submit('4001'); // 残り 4000
    expect(st().notice?.kind, NoticeKind.qtyOverPurchase);
    await flow().submit('4000');
    await flow().submit('SH-R-01');
    expect(st().step, ScanStep.recvEval);
    await flow().evaluate(pass: true);
    expect(gateway.journal.single, 'result PO-2610-002-1 pass x4000 -> SH-R-01');
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
    await f.submit('120');
    await f.submit('SH-A-01');
    await f.evaluate(pass: true);
    final s = failing.read(scanFlowProvider);
    expect(s.step, ScanStep.eval, reason: '登録に失敗したら、同じ段階にとどまる(入力は残る)');
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
      barcodeEntryDestinationSamples.every((d) => module.locationOf(d) != null),
      isTrue,
    );
  });
  group('バーコードのコード(コード + symbol)', () {
    test('parse: コードと symbol に分ける。コードの無い・接頭辞だけは全体が symbol', () {
      final p = BarcodeCode.parse('wrAB12');
      expect(p.code, BarcodeCode.work);
      expect(p.symbol, 'AB12');
      expect(BarcodeCode.parse('AB12').code, isNull);
      expect(BarcodeCode.parse('WR').code, isNull);
      expect(BarcodeCode.parse('WR').symbol, 'WR');
      expect(BarcodeCode.container.encode('X1'), 'CNX1');
      // 担当者(ST)。メニューの種類ではなく、人を表す
      final st = BarcodeCode.parse('stAB12');
      expect(st.code, BarcodeCode.operator);
      expect(st.symbol, 'AB12');
      expect(BarcodeCode.operator.kind, SymbolKind.staff);
      expect(BarcodeCode.operator.encode('AB12'), 'STAB12');
    });

    test('コード付きの棚 → コード付きの品目で、棚移動が進む', () async {
      await flow().submit('CNSH-A-02');
      expect(st().step, ScanStep.stockItem);
      await flow().submit('ITIT-UNIT-A');
      expect(st().step, ScanStep.stockQty);
    });

    test('コードに似た接頭辞の従来の symbol(IT-UNIT-A)は、全体で読める', () async {
      await flow().submit('SH-A-02');
      await flow().submit('IT-UNIT-A');
      expect(st().step, ScanStep.stockQty);
    });

    test('コードの種類と対象の種類が合わなくても、従来の symbol として照会できる(見つからなければ未登録の通知)', () async {
      await flow().submit('WRSH-A-02');
      expect(st().notice?.kind, NoticeKind.unknown);
      expect(st().step, ScanStep.top);
    });

    test('遷移先: 棚と品目をコード付きの引数にして、バーコード画面の場所を作る', () {
      const d = BarcodeEntryDestination(
        symbol: 'SH-A-02',
        code: BarcodeCode.shelfMove,
        itemSymbol: 'IT-UNIT-A',
      );
      expect(d.scanValue, 'SMSH-A-02');
      expect(d.itemScanValue, 'ITIT-UNIT-A');
      expect(d.toJson()['code'], 'SM');
    });
  });
}
