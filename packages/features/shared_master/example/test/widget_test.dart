import 'package:flutter/material.dart' show Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:shared_master_example/main.dart';

void main() {
  testWidgets('example が起動し、機能の画面を開ける', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    expect(find.text('共有マスタ (example)'), findsOneWidget);
    await tester.tap(find.text('配送区分台帳'));
    await tester.pumpAndSettle();
    expect(find.text('通常便'), findsWidgets);
  });
}
