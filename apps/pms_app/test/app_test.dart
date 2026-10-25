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
    expect(
      find.text('選択: 栃木製作所 (id=3c9a7e10-0000-4000-8000-000000000002)'),
      findsOneWidget,
    );
  });

  testWidgets('ホームから配送区分台帳へ遷移できる', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.text('配送区分台帳を開く'));
    await tester.pumpAndSettle();

    expect(find.text('通常便'), findsOneWidget);
  });

  testWidgets('業務メニューから単位の台帳を開ける', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await pumpApp(tester);
    await tester.tap(find.text('システム'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('単位'));
    await tester.pumpAndSettle();

    expect(find.text('キログラム'), findsWidgets);
  });

  testWidgets('別の機能の実体への参照が選択肢として解決される(品目 → 単位)', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await pumpApp(tester);
    await tester.tap(find.text('品目').first); // グループ
    await tester.pumpAndSettle();
    await tester.tap(find.text('品目').last); // 品目の台帳
    await tester.pumpAndSettle();

    // 品目の「個別単位」は system の単位の名称で表示される
    expect(find.textContaining('個'), findsWidgets);
  });
}
