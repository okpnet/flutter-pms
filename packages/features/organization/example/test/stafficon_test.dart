import 'package:flutter/material.dart' show Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:organization_example/main.dart';

/// 担当者のアイコン(担当者の子の台帳。名称・ファイル)の画面の確認(サンプルの取得元)。
void main() {
  testWidgets('担当者のアイコン: 担当者の編集画面に、アイコンの一覧(名称・ファイル名)が出る', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('作業者'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('E-0012').first);
    await tester.pump(const Duration(milliseconds: 50));
    await tester.tap(find.text('E-0012').first);
    await tester.pumpAndSettle();
    expect(find.text('担当者のアイコン'), findsWidgets);
    expect(find.text('顔写真'), findsWidgets);
    expect(find.text('face.png'), findsWidgets);
  });
}
