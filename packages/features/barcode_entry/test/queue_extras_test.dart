import 'package:barcode_entry/barcode_entry.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

class _Bus implements CommandBus {
  @override
  Future<R> execute<R>(ActionCommand<R> command) async => null as R;
}

ProviderContainer _container(InMemoryScanGateway g, {bool batch = true}) {
  final c = ProviderContainer(
    overrides: [
      scanGatewayProvider.overrideWithValue(g),
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      batchQueueProvider.overrideWithValue(batch),
    ],
  );
  addTearDown(c.dispose);
  return c;
}

void main() {
  group('出庫のキュー', () {
    test('作業の開始(棚出庫)は登録せず処理待ちにため、まとめて登録で順に送る', () async {
      final g = InMemoryScanGateway();
      final c = _container(g);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('WO-2610-001');
      flow.answerStart(true);
      await flow.submit('SH-M-01');
      var s = c.read(scanFlowProvider);
      expect(s.queue.single, isA<QueuedIssue>());
      expect(s.step, ScanStep.top);
      expect(g.journal, isEmpty);
      await flow.flushQueue();
      s = c.read(scanFlowProvider);
      expect(s.queue, isEmpty);
      expect(g.journal.single, startsWith('start WO-2610-001'));
      expect(s.notice?.kind, NoticeKind.started);
    });

    test('入庫と出庫が混ざっても、ためた順に登録する', () async {
      final g = InMemoryScanGateway();
      final c = _container(g);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('WO-2610-001');
      flow.answerStart(true);
      await flow.submit('SH-M-01');
      await flow.submit('SH-A-01');
      await flow.submit('IT-UNIT-A');
      await flow.submit('2');
      await flow.flushQueue();
      expect(g.journal, hasLength(2));
      expect(g.journal.first, startsWith('start'));
      expect(g.journal.last, startsWith('put'));
    });

    test('無効(既定)のときは、これまでどおりその場で出庫する', () async {
      final g = InMemoryScanGateway();
      final c = _container(g, batch: false);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('WO-2610-001');
      flow.answerStart(true);
      await flow.submit('SH-M-01');
      expect(c.read(scanFlowProvider).queue, isEmpty);
      expect(g.journal, hasLength(1));
    });
  });

  group('おすすめの入庫先', () {
    test('合格: 同じ品目が入っている棚をすすめ、選ぶと入庫する', () async {
      final g = InMemoryScanGateway();
      final c = _container(g, batch: false);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('PO-2610-001-1'); // 丸棒 SS400
      await flow.submit('1');
      await flow.evaluate(pass: true);
      final rec = c.read(scanFlowProvider).recommended;
      expect(rec.map((r) => r.shelf.symbol), ['SH-M-01A']);
      expect(rec.single.heldQuantity, 25); // 根拠: 同じ品目が入っている数量
      expect(rec.single.reject, isFalse);
      await flow.pickShelf(rec.single.shelf);
      expect(g.journal.single, contains('-> SH-M-01A'));
      expect(c.read(scanFlowProvider).recommended, isEmpty);
    });

    test('不合格: 不良品棚をすすめる(名前ではなく不良品棚の区分で決める)', () async {
      final g = InMemoryScanGateway();
      final c = _container(g, batch: false);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('PO-2610-001-1');
      await flow.submit('1');
      await flow.evaluate(pass: false);
      await flow.confirmReject(RejectReason.appearance);
      expect(c.read(scanFlowProvider).recommended.map((r) => r.shelf.symbol), ['SH-X-01']);
      expect(c.read(scanFlowProvider).recommended.single.reject, isTrue);
    });

    test('取り消すと、おすすめは消える', () async {
      final c = _container(InMemoryScanGateway(), batch: false);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('PO-2610-001-1');
      await flow.submit('1');
      await flow.evaluate(pass: true);
      flow.cancel();
      expect(c.read(scanFlowProvider).recommended, isEmpty);
    });
  });

  group('棚の中身', () {
    test('棚を読み取ると、持っているアイテムと入れ子の中身を引く', () async {
      final c = _container(InMemoryScanGateway(), batch: false);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('SH-M-01');
      final contents = c.read(scanFlowProvider).shelfContents!;
      expect(contents.items.single.itemName, 'ボルト M8×20');
      expect(contents.children.single.shelf.symbol, 'SH-M-01A');
      expect(contents.totalItems, 2);
      flow.cancel();
      expect(c.read(scanFlowProvider).shelfContents, isNull);
    });
  });

  group('操作なし', () {
    test('処理待ち・担当者・選んだ棚をすべて消してトップへ戻る。登録はしない', () async {
      final g = InMemoryScanGateway();
      final c = ProviderContainer(
        overrides: [
          scanGatewayProvider.overrideWithValue(g),
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          batchQueueProvider.overrideWithValue(true),
          requireOperatorProvider.overrideWithValue(true),
        ],
      );
      addTearDown(c.dispose);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('ST-TANAKA');
      await flow.submit('SH-A-01');
      await flow.submit('IT-UNIT-A');
      await flow.submit('1');
      await flow.submit('SH-A-02'); // 途中の段階(棚はすでに読み取り済み)
      flow.idleClear();
      final s = c.read(scanFlowProvider);
      expect(s.queue, isEmpty);
      expect(s.step, ScanStep.top);
      expect(s.operator, isNull);
      expect(s.selectedShelf, isNull);
      expect(s.notice?.kind, NoticeKind.idleCleared);
      expect(g.journal, isEmpty);
    });

    test('消すものが無い(トップで処理待ちが空)ときは通知しない', () {
      final c = _container(InMemoryScanGateway());
      c.read(scanFlowProvider.notifier).idleClear();
      expect(c.read(scanFlowProvider).notice, isNull);
    });
  });

  group('画面の出し分け(状態は 1 つ・ブロックを並べ替える)', () {
    Future<void> pump(WidgetTester tester, Size size) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1.0; // MediaQuery にも寸法を反映する(setSurfaceSize は反映しない)
      addTearDown(tester.view.reset);
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            scanGatewayProvider.overrideWithValue(InMemoryScanGateway()),
            loggerProvider.overrideWithValue(const NoopLoggerProvider()),
            commandBusProvider.overrideWithValue(_Bus()),
          ],
          child: const MaterialApp(home: BarcodeEntryPage(symbol: 'sh-m-01')),
        ),
      );
      await tester.pumpAndSettle();
    }

    testWidgets('広い画面は、読み取りと、棚の中身・履歴を左右に並べる', (tester) async {
      await pump(tester, const Size(1200, 900));
      expect(find.byKey(const ValueKey('primaryBlock')), findsOneWidget);
      expect(find.byKey(const ValueKey('secondaryBlock')), findsOneWidget);
      expect(find.byKey(const ValueKey('contentsPanel')), findsOneWidget);
    });

    testWidgets('モバイルは 1 列に積む(左右に分けない)', (tester) async {
      await pump(tester, const Size(400, 1600));
      expect(find.byKey(const ValueKey('primaryBlock')), findsNothing);
      // 入力要求は全画面で出るため、下のページは見えない(offstage)。ツリーには残っている
      expect(find.byKey(const ValueKey('contentsPanel'), skipOffstage: false), findsOneWidget);
    });

    testWidgets('広い画面の入力要求はダイアログ(後ろのトップは残る)', (tester) async {
      await pump(tester, const Size(1200, 900));
      expect(find.byType(Dialog), findsOneWidget);
      expect(find.byKey(const ValueKey('requestBack')), findsOneWidget);
      expect(find.byKey(const ValueKey('requestTop')), findsOneWidget);
    });

    testWidgets('モバイルの入力要求は全画面(ダイアログではない)', (tester) async {
      await pump(tester, const Size(400, 1600));
      expect(find.byType(Dialog), findsNothing);
      expect(find.byKey(const ValueKey('requestBack')), findsOneWidget);
    });

    testWidgets('「戻る」で 1 つ前のリードへ、「トップに戻る」で入力要求を閉じる', (tester) async {
      await pump(tester, const Size(1200, 900)); // 棚 → 製品/購入品リーディング(stockItem)
      final container = ProviderScope.containerOf(tester.element(find.byType(BarcodeEntryPage)));
      expect(container.read(scanFlowProvider).step, ScanStep.stockItem);
      await tester.tap(find.byKey(const ValueKey('requestBack')));
      await tester.pumpAndSettle();
      expect(container.read(scanFlowProvider).step, ScanStep.top);
      expect(find.byType(Dialog), findsNothing); // トップへ戻ったので閉じる

      await container.read(scanFlowProvider.notifier).submit('SH-A-01');
      await tester.pumpAndSettle();
      expect(find.byType(Dialog), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('requestTop')));
      await tester.pumpAndSettle();
      expect(container.read(scanFlowProvider).step, ScanStep.top);
      expect(find.byType(Dialog), findsNothing);
    });
  });

  group('戻る(1 つ前のリード)', () {
    test('数量 → 評価 → 入庫先 → 評価 → 数量 → トップの順にさかのぼる', () async {
      final c = _container(InMemoryScanGateway(), batch: false);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('PO-2610-001-1');
      await flow.submit('1');
      await flow.evaluate(pass: true);
      expect(c.read(scanFlowProvider).step, ScanStep.putShelf);
      flow.back();
      expect(c.read(scanFlowProvider).step, ScanStep.recvEval);
      flow.back();
      expect(c.read(scanFlowProvider).step, ScanStep.recvQty);
      flow.back();
      expect(c.read(scanFlowProvider).step, ScanStep.top);
      flow.back(); // トップでは何もしない
      expect(c.read(scanFlowProvider).step, ScanStep.top);
    });

    test('不合格の入庫先からは不合格処理へ戻る(登録はしない)', () async {
      final g = InMemoryScanGateway();
      final c = _container(g, batch: false);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('PO-2610-001-1');
      await flow.submit('1');
      await flow.evaluate(pass: false);
      await flow.confirmReject(RejectReason.other);
      expect(c.read(scanFlowProvider).step, ScanStep.putShelf);
      flow.back();
      expect(c.read(scanFlowProvider).step, ScanStep.ng);
      expect(g.journal, isEmpty);
    });

    test('操作なしは、選んだ棚と担当者も消す', () async {
      final c = ProviderContainer(
        overrides: [
          scanGatewayProvider.overrideWithValue(InMemoryScanGateway()),
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          batchQueueProvider.overrideWithValue(true),
        ],
      );
      addTearDown(c.dispose);
      final flow = c.read(scanFlowProvider.notifier);
      await flow.submit('PO-2610-001-1');
      await flow.submit('1');
      await flow.evaluate(pass: true);
      await flow.submit('SH-R-01');
      expect(c.read(scanFlowProvider).selectedShelf, isNotNull);
      flow.idleClear();
      expect(c.read(scanFlowProvider).selectedShelf, isNull);
      expect(c.read(scanFlowProvider).queue, isEmpty);
    });
  });
}
