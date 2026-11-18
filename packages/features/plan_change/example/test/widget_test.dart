// 手書きのテスト(tools/entity_gen/examples.js は、この印があるテストを上書きしない)
import 'package:flutter/material.dart'
    show CheckboxListTile, OutlinedButton, Size, TextButton, ValueKey;
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

  Future<void> select(WidgetTester tester, String text) async {
    await tester.tap(find.text(text));
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pumpAndSettle();
  }

  testWidgets('未処置一覧は、行を選んで、上部のメニューから操作する(行ごとのボタンは無い。対象が初期値)', (tester) async {
    await tester.binding.setSurfaceSize(const Size(5200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('未処置一覧'));
    await tester.pumpAndSettle();
    // 行ごとのボタンは出さない(上下の行と間違えて押すため)。行を選ぶまで、メニューは押せない
    expect(find.byType(TextButton), findsNothing);
    expect(
      tester.widget<OutlinedButton>(find.byKey(const ValueKey('actionMenu'))).onPressed,
      isNull,
    );
    // 種類に合う操作だけがメニューに出る: 未解除の引当予約の行(CO-0001)には「解除」があり、出荷取り消しは出ない
    await select(tester, 'CO-0001');
    expect(find.text('選択中の行: CO-0001'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('actionMenu')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('action:do_req_release')), findsOneWidget);
    expect(find.byKey(const ValueKey('action:do_ship_cancel')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('action:do_req_release')));
    await tester.pumpAndSettle();
    expect(find.text('引当予約の解除'), findsWidgets);
  });

  testWidgets('履歴は、MRP に未反映の行を選ぶと「再MRPへ」が出る(反映済みの行には出ない)', (tester) async {
    await tester.binding.setSurfaceSize(const Size(5200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('計画変更の履歴'));
    await tester.pumpAndSettle();
    // CH-0001 は未反映(最上位の受注明細つき)、CH-0002 は未反映ではない
    await select(tester, 'CH-0002');
    expect(
      tester.widget<OutlinedButton>(find.byKey(const ValueKey('actionMenu'))).onPressed,
      isNull,
    );
    await select(tester, 'CH-0001');
    await tester.tap(find.byKey(const ValueKey('actionMenu')));
    await tester.pumpAndSettle();
    expect(find.text('再MRPへ'), findsOneWidget);
    // 押すと、再MRP の画面へ、その受注明細を対象にして進む
    await tester.tap(find.byKey(const ValueKey('action:do_remrp')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('mrpTarget:7d1b0000-0000-4000-8000-000000000001')), findsOneWidget);
    expect(
      tester.widget<CheckboxListTile>(find.byKey(const ValueKey('mrpRedo'))).value,
      isTrue,
    );
  });
}
