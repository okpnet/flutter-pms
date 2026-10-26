import 'package:flutter/material.dart' show Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:page_mediator_example/main.dart';

void main() {
  testWidgets('example が起動し、データ取得・設定の保存と復元・セッション確認ができる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ExampleApp(logger: const NoopLoggerProvider(), session: DemoSession()),
    );
    await tester.pumpAndSettle();

    // データ取得(3件)と、最初のセッション確認(有効)
    expect(find.text('データ取得: りんご、みかん、ぶどう'), findsOneWidget);
    expect(find.text('セッション: valid'), findsOneWidget);

    // ページを更新すると、2回目の確認は期限切れ
    await tester.tap(find.text('ページを更新(セッション確認)'));
    await tester.pumpAndSettle();
    expect(find.text('セッション: expired'), findsOneWidget);

    // 設定: 回数を増やして保存し、増やした分を戻して復元する
    await tester.tap(find.text('+1'));
    await tester.tap(find.text('+1'));
    await tester.pump();
    expect(find.text('設定の回数: 2'), findsOneWidget);
    await tester.tap(find.text('保存'));
    await tester.pump();
    await tester.tap(find.text('+1'));
    await tester.pump();
    expect(find.text('設定の回数: 3'), findsOneWidget);
    await tester.tap(find.text('復元'));
    await tester.pumpAndSettle();
    expect(find.text('設定の回数: 2'), findsOneWidget);
  });
}
