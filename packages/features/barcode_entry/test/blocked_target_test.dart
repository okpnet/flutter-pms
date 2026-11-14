import 'package:barcode_entry/barcode_entry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

/// 停止中・終わっている(打ち切り・全部キャンセル)対象を返す取得元。
class _BlockedGateway extends InMemoryScanGateway {
  @override
  Future<ScanTarget?> find(String symbol) async => switch (symbol) {
    'WO-STOPPED' => const WorkOrderTarget(
      symbol: 'WO-STOPPED',
      itemName: '品目',
      taskName: '工程',
      quantity: 100,
      doneQuantity: 0,
      unit: '個',
      state: WorkState.notStarted,
      stopped: true,
    ),
    'WO-CLOSED' => const WorkOrderTarget(
      symbol: 'WO-CLOSED',
      itemName: '品目',
      taskName: '工程',
      quantity: 100,
      doneQuantity: 10,
      unit: '個',
      state: WorkState.inProgress,
      closed: true,
    ),
    'PO-STOPPED' => const PurchaseTarget(
      symbol: 'PO-STOPPED',
      itemName: '品目',
      quantity: 50,
      receivedQuantity: 0,
      unit: '個',
      stopped: true,
    ),
    'PO-CANCELED' => const PurchaseTarget(
      symbol: 'PO-CANCELED',
      itemName: '品目',
      quantity: 0,
      receivedQuantity: 0,
      unit: '個',
      closed: true,
    ),
    _ => super.find(symbol),
  };
}

void main() {
  late ProviderContainer c;
  setUp(() {
    c = ProviderContainer(
      overrides: [
        scanGatewayProvider.overrideWithValue(_BlockedGateway()),
        loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      ],
    );
    addTearDown(c.dispose);
  });

  ScanFlow flow() => c.read(scanFlowProvider.notifier);
  ScanState st() => c.read(scanFlowProvider);

  test('停止中の作業指示は、実績を登録する段階へ進まず、停止の通知で最初に戻る', () async {
    await flow().submit('WO-STOPPED');
    expect(st().step, ScanStep.top);
    expect(st().notice?.kind, NoticeKind.workBlocked);
    expect(st().notice?.isError, isTrue);
    expect(st().notice?.args['stopped'], isTrue);
    expect(st().log.first.kind, LogKind.workBlocked);
  });

  test('打ち切り・全部キャンセルで終わっている作業指示は、終了の通知(停止ではない)', () async {
    await flow().submit('WO-CLOSED');
    expect(st().step, ScanStep.top);
    expect(st().notice?.kind, NoticeKind.workBlocked);
    expect(st().notice?.args['stopped'], isFalse);
  });

  test('停止中の発注明細・全部キャンセル済みの発注明細は、受入の段階へ進まない', () async {
    await flow().submit('PO-STOPPED');
    expect(st().step, ScanStep.top);
    expect(st().notice?.kind, NoticeKind.purchaseBlocked);
    expect(st().notice?.args['stopped'], isTrue);

    await flow().submit('PO-CANCELED');
    expect(st().step, ScanStep.top);
    expect(st().notice?.kind, NoticeKind.purchaseBlocked);
    expect(st().notice?.args['stopped'], isFalse);
    expect(st().log.first.kind, LogKind.purchaseBlocked);
  });

  test('止まっていない対象は、これまでどおり進む', () async {
    await flow().submit('WO-2610-002');
    expect(st().step, isNot(ScanStep.top));
  });
}
