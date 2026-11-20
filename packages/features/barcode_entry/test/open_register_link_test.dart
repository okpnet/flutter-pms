import 'package:baton_lib/baton_lib.dart';
import 'package:barcode_entry/barcode_entry.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:work_record/work_record_api.dart';

class _RecordingBus implements CommandBus {
  final commands = <ActionCommand<Object?>>[];

  @override
  Future<R> execute<R>(ActionCommand<R> command) async {
    commands.add(command);
    return null as R;
  }
}

void main() {
  testWidgets('作業指示を読み込むと、実績登録の画面(生産計画)を開くリンクが出る', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1000, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final bus = _RecordingBus();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          scanGatewayProvider.overrideWithValue(InMemoryScanGateway()),
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          commandBusProvider.overrideWithValue(bus),
        ],
        child: const MaterialApp(home: BarcodeEntryPage(symbol: 'wo-2610-001')),
      ),
    );
    await tester.pumpAndSettle();
    final link = find.byKey(const ValueKey('openWorkRegister'));
    expect(link, findsOneWidget);
    await tester.tap(link);
    await tester.pump();
    final dest = bus.commands.single as WorkRegisterDestination;
    expect(dest.planId, 'plan-2610-001');
  });

  testWidgets('生産計画が分からない作業指示には、リンクを出さない', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1000, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          scanGatewayProvider.overrideWithValue(InMemoryScanGateway()),
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          commandBusProvider.overrideWithValue(_RecordingBus()),
        ],
        child: const MaterialApp(home: BarcodeEntryPage(symbol: 'wo-2610-002')),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('openWorkRegister')), findsNothing);
  });
  testWidgets('実績登録の画面を持たないアプリ(openWorkRegisterLinkProvider が false)では出さない', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(1000, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          scanGatewayProvider.overrideWithValue(InMemoryScanGateway()),
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          commandBusProvider.overrideWithValue(_RecordingBus()),
          openWorkRegisterLinkProvider.overrideWithValue(false),
        ],
        child: const MaterialApp(home: BarcodeEntryPage(symbol: 'wo-2610-001')),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('openWorkRegister')), findsNothing);
  });
}
