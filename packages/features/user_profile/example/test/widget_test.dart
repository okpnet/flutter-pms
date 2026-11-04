import 'dart:convert';

import 'package:flutter/material.dart' show FilledButton, MemoryImage, Size;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:user_profile/user_profile.dart';
import 'package:user_profile_example/main.dart';

/// 1x1 の PNG(既定のイメージの描き起こしを、テストでは使わない)。
final _tinyPng = base64Decode(
  'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNkYPhfDwAChwGA60e6kgAAAABJRU5ErkJggg==',
);

void main() {
  Future<void> open(WidgetTester tester, {bool? canChange}) async {
    await tester.binding.setSurfaceSize(const Size(1000, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ExampleApp(
        logger: const NoopLoggerProvider(),
        canChange: canChange,
        extraOverrides: [
          defaultAvatarImageProvider.overrideWith((ref) => MemoryImage(_tinyPng)),
        ],
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('ユーザー情報 (example)'), findsOneWidget);
    await tester.tap(find.text('自分のイメージ'));
    await tester.pumpAndSettle();
  }

  const readOnlyNote =
      '自分のイメージは、管理者が変更します。変更したいときは、管理者に依頼してください。';

  testWidgets('example が起動し、標準(変更できない)では管理者への案内だけを出す', (tester) async {
    await open(tester, canChange: false);
    expect(find.text('山田 太郎'), findsOneWidget);
    expect(find.text('管理者'), findsOneWidget);
    expect(find.text(readOnlyNote), findsOneWidget);
    expect(find.text('画像ファイルを選ぶ'), findsNothing);
  });

  testWidgets('変更できる設定では、画像を選ぶ操作を出す(案内は出さない)', (tester) async {
    await open(tester, canChange: true);
    expect(find.text('山田 太郎'), findsOneWidget);
    expect(find.text(readOnlyNote), findsNothing);
    expect(find.text('画像ファイルを選ぶ'), findsOneWidget);
    expect(find.byType(FilledButton), findsWidgets);
  });
}
