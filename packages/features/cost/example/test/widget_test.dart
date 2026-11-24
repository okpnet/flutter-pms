import 'package:cost_example/main.dart';
import 'package:flutter/material.dart' show Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

void main() {
  testWidgets('example が起動し、3 つの台帳に遷移できる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    expect(find.text('原価 (example)'), findsOneWidget);
    // 在庫評価額の一覧は、評価額の合計を下に出す
    await tester.tap(find.text('在庫評価額の一覧'));
    await tester.pumpAndSettle();
    expect(find.text('合計(在庫評価額): 16000'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();
    for (final title in ['標準原価の一覧', '在庫評価額の一覧', 'ロットの評価額', '実績の原価']) {
      await tester.tap(find.text(title));
      await tester.pumpAndSettle();
      expect(find.text(title), findsWidgets);
      await tester.pageBack();
      await tester.pumpAndSettle();
    }
  });
}
