// 開始数量・差の理由の段階が、画面に出ることを確かめる(流れの判定は barcode_entry_test.dart)。
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

void main() {
  Future<ProviderContainer> open(WidgetTester tester) async {
    tester.view.physicalSize = const Size(1200, 1000);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);
    final g = InMemoryScanGateway();
    final container = ProviderContainer(
      overrides: [
        scanGatewayProvider.overrideWithValue(g),
        loggerProvider.overrideWithValue(const NoopLoggerProvider()),
        commandBusProvider.overrideWithValue(_Bus()),
      ],
    );
    addTearDown(container.dispose);
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: const MaterialApp(home: BarcodeEntryPage()),
      ),
    );
    await tester.pumpAndSettle();
    return container;
  }

  testWidgets('開始: 棚を読み取ると、開始数量の入力(最大つき)が出て、入れると登録する', (tester) async {
    final c = await open(tester);
    final flow = c.read(scanFlowProvider.notifier);
    await flow.submit('WO-2610-001');
    flow.answerStart(true);
    await flow.submit('SH-M-01');
    await tester.pumpAndSettle();
    expect(c.read(scanFlowProvider).step, ScanStep.issueQty);
    expect(find.textContaining('最大 100'), findsWidgets, reason: '開始数量の上限(計画の残り)を出す');
    expect(find.text('数量'), findsWidgets);
  });

  testWidgets('終了: 差があると、差の理由の選択(理由・登録ボタン)が出る', (tester) async {
    final c = await open(tester);
    final flow = c.read(scanFlowProvider.notifier);
    await flow.submit('WO-2610-001');
    flow.answerStart(true);
    await flow.submit('SH-M-01');
    await flow.submit('40');
    await flow.submit('WO-2610-001');
    await flow.submit('30');
    await flow.submit('SH-A-01');
    await flow.evaluate(pass: true);
    await tester.pumpAndSettle();
    expect(c.read(scanFlowProvider).step, ScanStep.returnReason);
    expect(find.textContaining('10台 少ない'), findsOneWidget, reason: '差の数量を出す');
    expect(find.text('この理由で登録'), findsOneWidget);
    await tester.tap(find.text('この理由で登録'));
    await tester.pumpAndSettle();
    expect(c.read(scanFlowProvider).step, ScanStep.top);
  });

  testWidgets('終了: 不合格の有無の質問に、「不合格なし(登録へ)」「不合格あり」を出す', (tester) async {
    final c = await open(tester);
    final flow = c.read(scanFlowProvider.notifier);
    await flow.submit('WO-2610-002');
    await flow.submit('100');
    await flow.submit('SH-A-01');
    await tester.pumpAndSettle();
    expect(c.read(scanFlowProvider).step, ScanStep.eval);
    expect(find.text('不合格はありますか。'), findsOneWidget);
    expect(find.text('不合格なし(登録へ)'), findsOneWidget);
    expect(find.text('不合格あり'), findsOneWidget);
  });
}
