import 'package:flutter/material.dart' show Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:organization_example/main.dart';

void main() {
  testWidgets('example が起動し、機能の台帳を開ける', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    expect(find.text('会社情報 (example)'), findsOneWidget);
    await tester.tap(find.text('会社情報'));
    await tester.pumpAndSettle();
    expect(find.text('サンプル精工株式会社'), findsWidgets);
  });
}
