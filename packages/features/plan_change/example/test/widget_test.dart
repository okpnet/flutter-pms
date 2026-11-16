import 'package:flutter/material.dart' show Size, TextButton, ValueKey;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:plan_change_example/main.dart';

void main() {
  testWidgets('example が起動し、履歴と未処置一覧を開ける', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    expect(find.text('計画変更 (example)'), findsOneWidget);
    await tester.tap(find.text('計画変更の履歴'));
    await tester.pumpAndSettle();
    expect(find.text('CH-0001'), findsWidgets);
    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.tap(find.text('未処置一覧'));
    await tester.pumpAndSettle();
    expect(find.text('CO-0001'), findsWidgets);
  });

  testWidgets('未処置一覧の行のボタンから、操作の入力画面が開く(対象が初期値)', (tester) async {
    await tester.binding.setSurfaceSize(const Size(5200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('未処置一覧'));
    await tester.pumpAndSettle();
    // 種類に合うボタンだけが出る: 未解除の引当予約の行(CO-0001)には「解除」があり、出荷取り消しは出ない
    final buttons = find.byType(TextButton);
    bool has(String key) => tester
        .widgetList<TextButton>(buttons)
        .any((b) => '${b.key}'.contains("'action:$key:"));
    expect(has('do_req_release'), isTrue);
    expect(has('do_ship_cancel'), isFalse);
    await tester.tap(
      find
          .byWidgetPredicate(
            (w) =>
                w is TextButton &&
                '${w.key}'.contains("'action:do_req_release:"),
          )
          .first,
    );
    await tester.pumpAndSettle();
    expect(find.text('引当予約の解除'), findsWidgets);
  });
}
