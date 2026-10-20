import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pms_app/app.dart';

/// テストでは何も出力しないロガー。
class _SilentLogger implements ILoggerProvider {
  @override
  int get level => 0;
  @override
  void debug(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void info(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void warn(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void error(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) {}
}

void main() {
  Future<void> pumpApp(WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          loggerProvider.overrideWithValue(_SilentLogger()),
          ...appOverrides,
        ],
        child: const PmsApp(),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('ホームから顧客一覧へ遷移できる', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.text('顧客一覧を開く'));
    await tester.pumpAndSettle();

    expect(find.text('東京精機'), findsOneWidget);
  });

  testWidgets('顧客を選択すると結果が返り、名前が表示される', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.text('顧客を選択する'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('栃木製作所'));
    await tester.pumpAndSettle();

    expect(find.byType(SnackBar), findsOneWidget);
    expect(find.text('選択: 栃木製作所 (id=2)'), findsOneWidget);
  });
}
