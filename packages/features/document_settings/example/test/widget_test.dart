import 'package:document_settings_example/main.dart';
import 'package:flutter/material.dart' show Key, Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

void main() {
  Future<void> boot(WidgetTester tester, {bool isAdmin = true}) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(ExampleApp(logger: const NoopLoggerProvider(), isAdmin: isAdmin));
    await tester.pumpAndSettle();
  }

  testWidgets('example が起動し、設定の画面を開いて、プレビューと保存の操作が出る', (tester) async {
    await boot(tester);
    expect(find.text('承認スタンプ・PDF の設定 (example)'), findsOneWidget);
    await tester.tap(find.text('承認スタンプ・PDF の設定').last);
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ds-preview')), findsOneWidget);
    expect(find.byKey(const Key('ds-save')), findsOneWidget);
    expect(find.byKey(const Key('stamp-preview-0')), findsOneWidget);
  });

  testWidgets('管理者でなければ閲覧のみ', (tester) async {
    await boot(tester, isAdmin: false);
    await tester.tap(find.text('承認スタンプ・PDF の設定').last);
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ds-readonly')), findsOneWidget);
    expect(find.byKey(const Key('ds-save')), findsNothing);
  });
}
