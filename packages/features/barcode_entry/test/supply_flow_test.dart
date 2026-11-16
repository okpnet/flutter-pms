import 'package:barcode_entry/barcode_entry.dart';
import 'package:barcode_entry/barcode_entry_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

void main() {
  late ProviderContainer c;
  late InMemoryScanGateway gateway;
  setUp(() {
    gateway = InMemoryScanGateway();
    c = ProviderContainer(
      overrides: [
        scanGatewayProvider.overrideWithValue(gateway),
        loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      ],
    );
    addTearDown(c.dispose);
  });

  ScanFlow flow() => c.read(scanFlowProvider.notifier);
  ScanState st() => c.read(scanFlowProvider);

  test('コード SP の分解', () {
    final p = BarcodeCode.parse('SPABC123');
    expect(p.code, BarcodeCode.supply);
    expect(p.symbol, 'ABC123');
  });

  test('SP 付きの支給は、受け入れ・検品を選ぶ段階へ進む', () async {
    await flow().submit('SPSP-2610-001');
    expect(st().step, ScanStep.supplyChoice);
    expect(st().context.supply?.symbol, 'SP-2610-001');
  });

  test('受け入れ: 未受入を超えられない。超えなければ仮止めが増え、未受入が減る', () async {
    await flow().submit('SPSP-2610-001');
    await flow().registerSupply(quantity: 41, receive: true, hold: true);
    expect(st().notice?.kind, NoticeKind.qtyOverSupply);
    expect(st().step, ScanStep.supplyChoice);

    await flow().registerSupply(quantity: 5, receive: true, hold: true);
    expect(st().step, ScanStep.top);
    expect(st().notice?.kind, NoticeKind.supplied);
    final t = await gateway.find('SP-2610-001') as SupplyTarget;
    expect(t.remaining, 35);
    expect(t.held, 15);
  });

  test('合格は仮止めを外し、不合格は仮止めのまま', () async {
    await flow().submit('SPSP-2610-001');
    await flow().registerSupply(quantity: 4, receive: false, hold: false);
    var t = await gateway.find('SP-2610-001') as SupplyTarget;
    expect(t.held, 6);

    await flow().submit('SPSP-2610-001');
    await flow().registerSupply(quantity: 2, receive: false, hold: true);
    t = await gateway.find('SP-2610-001') as SupplyTarget;
    expect(t.held, 6);
    expect(st().log.first.ok, isFalse);
  });
}
