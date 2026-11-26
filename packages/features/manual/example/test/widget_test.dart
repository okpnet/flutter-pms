import 'package:flutter/material.dart' show Key, Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:manual_example/main.dart';

void main() {
  Future<void> boot(WidgetTester tester, {bool canEdit = true}) async {
    await tester.binding.setSurfaceSize(const Size(1280, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ExampleApp(logger: const NoopLoggerProvider(), canEdit: canEdit),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('example が起動し、マニュアルを開いて目次から別のページへ進める', (tester) async {
    await boot(tester);
    expect(find.text('マニュアル (example)'), findsOneWidget);

    await tester.tap(find.text('品質マニュアル'));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-edit')), findsOneWidget);
    expect(find.byKey(const Key('manual-toc-m4')), findsOneWidget);

    await tester.tap(find.byKey(const Key('manual-toc-m4')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-child-m41')), findsOneWidget);
  });

  testWidgets('ルートは複数。2 つ目のルートの目次も並ぶ', (tester) async {
    await boot(tester);
    await tester.tap(find.text('安全衛生マニュアル(2 つ目のルート)'));
    await tester.pumpAndSettle();
    // 目次に、2 つのルートが並ぶ
    expect(find.byKey(const Key('manual-toc-m1')), findsOneWidget);
    expect(find.byKey(const Key('manual-toc-m9000')), findsOneWidget);
    expect(find.byKey(const Key('manual-backlink-m1')), findsNothing);
    // 品質マニュアルは、安全衛生マニュアルから参照されている(被リンク)
    await tester.tap(find.byKey(const Key('manual-toc-m1')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-backlink-m9000')), findsOneWidget);
  });

  testWidgets('編集の状態で開ける', (tester) async {
    await boot(tester);
    await tester.tap(find.text('工程管理(編集の状態)'));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-edit-title')), findsOneWidget);
    expect(find.byKey(const Key('manual-edit-save')), findsOneWidget);
  });

  testWidgets('管理者でなければ、閲覧のみ(編集の状態を求めても閲覧になる)', (tester) async {
    await boot(tester, canEdit: false);
    await tester.tap(find.text('工程管理(編集の状態)'));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-edit-title')), findsNothing);
    expect(find.byKey(const Key('manual-readonly')), findsOneWidget);
  });

  testWidgets('承認の見本: 品質マニュアルは承認済みのスタンプ、安全衛生マニュアルは承認待ちの帯と 2 つのスタンプ', (tester) async {
    await boot(tester);
    await tester.tap(find.text('品質マニュアル'));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-approval-stamps')), findsOneWidget);
    expect(find.byKey(const Key('manual-approval-pending')), findsNothing);

    await tester.tap(find.byKey(const Key('manual-toc-m9000'))); // 目次から 2 つ目のルートへ
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-approval-pending')), findsOneWidget);
    expect(find.byKey(const Key('manual-approval-stamps')), findsOneWidget);
  });
}
