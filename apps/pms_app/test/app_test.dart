import 'package:feature_shared/feature_shared.dart';
import 'package:entity_screens/entity_screens.dart';
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

  testWidgets('ホームから顧客台帳へ遷移できる(顧客だけが表示される)', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.text('顧客台帳を開く'));
    await tester.pumpAndSettle();

    expect(find.text('北斗機械株式会社'), findsOneWidget);
    expect(find.text('北斗ファスナー株式会社'), findsNothing);
  });

  testWidgets('ホームから外部供給者台帳へ遷移できる(同じ利害関係者を役割で絞る)', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.text('外部供給者台帳を開く'));
    await tester.pumpAndSettle();

    expect(find.text('北斗ファスナー株式会社'), findsOneWidget);
    expect(find.text('北斗機械株式会社'), findsNothing);
  });

  testWidgets('ホームから配送区分台帳へ遷移できる', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.text('配送区分台帳を開く'));
    await tester.pumpAndSettle();

    expect(find.text('通常便'), findsOneWidget);
  });

  Future<void> size(
    WidgetTester tester,
    double width, [
    double h = 1600,
  ]) async {
    tester.view.physicalSize = Size(width, h);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
  }

  testWidgets('サイドバーの業務メニューから単位の台帳を開ける', (tester) async {
    await size(tester, 1400);
    await pumpApp(tester);
    await tester.tap(find.text('システム'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('単位'));
    await tester.pumpAndSettle();

    expect(find.text('キログラム'), findsWidgets);
  });

  testWidgets('別の機能の実体への参照が選択肢として解決される(品目 → 単位)', (tester) async {
    await size(tester, 1400);
    await pumpApp(tester);
    await tester.tap(find.text('品目').first); // グループ
    await tester.pumpAndSettle();
    await tester.tap(find.text('品目').last); // 品目の台帳
    await tester.pumpAndSettle();

    // 品目の「個別単位」は system の単位の名称で表示される
    expect(find.textContaining('個'), findsWidgets);
  });

  testWidgets('配送区分は、営業と購買の両方のグループから開ける', (tester) async {
    await size(tester, 1400);
    await pumpApp(tester);
    await tester.tap(find.text('営業'));
    await tester.pumpAndSettle();
    expect(find.text('配送区分台帳'), findsOneWidget);
    await tester.tap(find.text('購買'));
    await tester.pumpAndSettle();
    expect(find.text('配送区分台帳'), findsNWidgets(2));

    await tester.tap(find.text('配送区分台帳').last);
    await tester.pumpAndSettle();
    expect(find.text('通常便'), findsOneWidget);
  });

  testWidgets('モバイルでは、ハンバーガーメニューに同じメニューが出る', (tester) async {
    await size(tester, 400, 900);
    await pumpApp(tester);
    expect(find.text('ダッシュボード'), findsNothing);
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();
    expect(find.text('ダッシュボード'), findsOneWidget);
    expect(find.text('システム'), findsOneWidget);
  });

  testWidgets('ユーザーメニューの設定で使用言語を切り替えると、画面の文字列が変わる', (tester) async {
    await size(tester, 1400, 900);
    await pumpApp(tester);
    await tester.tap(find.text('鈴木 一郎'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('設定'));
    await tester.pumpAndSettle();
    expect(find.text('使用言語'), findsOneWidget);

    await tester.tap(find.text('English'));
    await tester.pumpAndSettle();
    expect(find.text('Language'), findsOneWidget);
    expect(find.text('Dashboard'), findsOneWidget);
  });

  testWidgets('営業のメニューは顧客台帳、購買のメニューは外部供給者台帳を開く', (tester) async {
    await size(tester, 1400);
    await pumpApp(tester);
    await tester.tap(find.text('営業'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('顧客台帳'));
    await tester.pumpAndSettle();
    expect(find.text('北斗機械株式会社'), findsOneWidget);

    await tester.tap(find.text('購買'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('外部供給者台帳'));
    await tester.pumpAndSettle();
    expect(find.text('北斗ファスナー株式会社'), findsOneWidget);
  });

  testWidgets('画面の見出しは AppBar を使わず、枠のタイトルバーだけが AppBar', (tester) async {
    await size(tester, 1400);
    await pumpApp(tester);
    await tester.tap(find.text('顧客台帳を開く'));
    await tester.pumpAndSettle();
    expect(find.byType(AppBar), findsOneWidget);
  });

  testWidgets('設定でユーザー名を与えると画面に反映され、標準に戻せる', (tester) async {
    await size(tester, 1400, 1200);
    await pumpApp(tester);
    await tester.tap(find.text('鈴木 一郎'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('設定'));
    await tester.pumpAndSettle();

    await tester.enterText(find.widgetWithText(TextField, 'ユーザー名'), '田中 花子');
    await tester.tap(find.text('設定する'));
    await tester.pumpAndSettle();
    expect(find.text('田中 花子'), findsWidgets);

    await tester.tap(find.text('標準に戻す'));
    await tester.pumpAndSettle();
    expect(find.text('鈴木 一郎'), findsWidgets);
  });

  testWidgets('ログアウトするとメニューとユーザーが消え、ログインし直すと戻る', (tester) async {
    await size(tester, 1400, 900);
    await pumpApp(tester);
    await tester.tap(find.text('鈴木 一郎'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('ログアウト'));
    await tester.pumpAndSettle();
    expect(find.text('ログアウトしました。'), findsOneWidget);
    expect(find.text('鈴木 一郎'), findsNothing);
    expect(find.text('システム'), findsNothing);

    await tester.tap(find.text('ログインする(仮)'));
    await tester.pumpAndSettle();
    expect(find.text('鈴木 一郎'), findsOneWidget);
    expect(find.text('システム'), findsOneWidget);
  });

  testWidgets('設備の品目は、品目の台帳で選んで結果が戻る(CommandBus の選択)', (tester) async {
    await size(tester, 1400, 1200);
    await pumpApp(tester);
    final container = ProviderScope.containerOf(
      tester.element(find.byType(PmsApp)),
    );
    final catalog = container.read(entityCatalogProvider);
    final equipment = (await catalog.repository('equipment')!.find(take: 2))
        .last; // 2件目の品目は「ブラケット」
    container
        .read(commandBusProvider)
        .execute(EntityEditDestination('equipment', id: equipment.id))
        .ignore();
    await tester.pumpAndSettle();

    expect(find.textContaining('ブラケット'), findsOneWidget);
    await tester.tap(find.text('選択'));
    await tester.pumpAndSettle();
    // 品目の台帳(新規ボタンなし)で、行をダブルクリックして選ぶ
    await tester.tap(find.text('ITE-001').first);
    await tester.pump(const Duration(milliseconds: 50));
    await tester.tap(find.text('ITE-001').first);
    await tester.pumpAndSettle();

    expect(find.textContaining('ユニットA'), findsOneWidget);
    expect(find.textContaining('ブラケット'), findsNothing);
    expect(find.text('選択'), findsOneWidget);
  });
}
