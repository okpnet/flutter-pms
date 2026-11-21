import 'package:approval_example/main.dart';
import 'package:flutter/material.dart' show Key, Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

void main() {
  testWidgets('example が起動し、営業の承認一覧で 2 件を選んで承認できる(見本のパスワード)', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    expect(find.text('承認一覧 (example)'), findsOneWidget);
    await tester.tap(find.text('営業の承認一覧'));
    await tester.pumpAndSettle();
    expect(find.text('受注(2)'), findsOneWidget);
    expect(find.text('出荷(1)'), findsOneWidget);
    await tester.tap(find.byKey(const Key('approval-select-all')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('approval-approve')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('approval-password')), 'demo-password');
    await tester.tap(find.byKey(const Key('approval-confirm')));
    await tester.pumpAndSettle();
    expect(find.text('承認 2 件を登録しました。'), findsOneWidget);
  });
}
