import 'package:announcement_example/main.dart';
import 'package:flutter/material.dart' show Key, Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

void main() {
  testWidgets('example が起動し、通知の一覧で未読を既読にできる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    expect(find.text('通知 (example)'), findsOneWidget);
    await tester.tap(find.text('通知の一覧'));
    await tester.pumpAndSettle();
    expect(find.text('監査の予定: 工程監査'), findsOneWidget);
    await tester.tap(find.byKey(const Key('announcement-read-a1')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('announcement-read-a1')), findsNothing);
    expect(find.byKey(const Key('announcement-read-a2')), findsOneWidget);
  });
}
