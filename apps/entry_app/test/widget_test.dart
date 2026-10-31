import 'package:entry_app/main.dart';
import 'package:flutter/material.dart' show Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

void main() {
  testWidgets('起動して、バーコードの画面を開ける', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1000, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const EntryApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('バーコード'));
    await tester.pumpAndSettle();
    expect(find.text('バーコードの読込'), findsOneWidget);
  });
}
