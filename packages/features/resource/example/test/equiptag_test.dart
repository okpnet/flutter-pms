import 'package:flutter/material.dart' show Size, ValueKey;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:resource_example/main.dart';

/// 設備タグ(名称・ファイル)の画面の確認(サンプルの取得元)。台帳にファイル名が出て、編集にファイルの選択ボタンがある。
void main() {
  testWidgets('設備タグ: 台帳に名称・ファイル名が出て、編集でファイルを選び直せる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('設備タグ'));
    await tester.pumpAndSettle();
    expect(find.text('設備銘板'), findsWidgets);
    expect(find.text('nameplate.png'), findsWidgets);
    // 行の操作は、ダブルクリック(編集へ)
    await tester.tap(find.text('設備銘板').first);
    await tester.pump(const Duration(milliseconds: 50));
    await tester.tap(find.text('設備銘板').first);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('fileUpload:file')), findsOneWidget);
    expect(find.text('nameplate.png'), findsWidgets);
  });
}
