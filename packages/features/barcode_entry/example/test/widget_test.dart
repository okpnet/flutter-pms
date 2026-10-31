import 'package:barcode_entry_example/main.dart';
import 'package:flutter/material.dart' show EditableText, Size, TextInputAction;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

void main() {
  testWidgets('example が起動し、リーディングトップを開いて symbol を読み込める', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1000, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    expect(find.text('バーコード (example)'), findsOneWidget);

    await tester.tap(find.text('リーディングトップ'));
    await tester.pumpAndSettle();
    expect(find.text('バーコードの読込'), findsOneWidget);

    await tester.enterText(find.byType(EditableText).first, 'wo-2610-001');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(find.text('開始の選択'), findsOneWidget);
  });
}
