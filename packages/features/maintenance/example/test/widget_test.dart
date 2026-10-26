import 'package:flutter/material.dart' show Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:maintenance_example/main.dart';

void main() {
  testWidgets('example が起動し、メンテナンス中のページを開いて再確認できる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1000, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    expect(find.text('メンテナンス (example)'), findsOneWidget);

    await tester.tap(find.text('メンテナンス中のページ'));
    await tester.pumpAndSettle();
    expect(find.text('メンテナンス中です'), findsOneWidget);
    expect(find.text('システムの更新を行っています。'), findsOneWidget);

    await tester.tap(find.text('再確認'));
    await tester.pumpAndSettle();
    expect(find.text('まだメンテナンス中です。'), findsOneWidget);
  });
}
