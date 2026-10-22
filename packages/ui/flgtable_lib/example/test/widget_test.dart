import 'package:example/main.dart';
import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

Widget app() {
  final logger = ConsoleLogger();
  return ProviderScope(
    overrides: [
      loggerProvider.overrideWithValue(logger),
      themeLoggerProvider.overrideWithValue(logger),
    ],
    child: const ExampleApp(),
  );
}

const tabs = [
  '基本表示(静的データ・縦スクロール)',
  '非同期ローダーとローディング',
  'ローダーのエラー',
  '横スクロール(列合計が親より広い)',
  '親幅いっぱい(列が少ない)',
  'カスタムセル・取得失敗時の標準値',
  '設定のJSON往復',
];

/// タブバーが画面外にはみ出すため、コントローラで直接切り替える。
Future<void> openTab(WidgetTester tester, String label) async {
  final controller =
      DefaultTabController.of(tester.element(find.byType(TabBarView)));
  controller.index = tabs.indexOf(label);
  await tester.pump(const Duration(milliseconds: 500));
  await tester.pump(const Duration(milliseconds: 500));
}

void main() {
  setUp(() => TestWidgetsFlutterBinding.ensureInitialized());

  testWidgets('基本表示: ヘッダ・行・縦スクロール', (tester) async {
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app());
    await tester.pumpAndSettle();
    expect(find.text('名前'), findsOneWidget);
    expect(find.text('社員1'), findsOneWidget);
    expect(find.text('社員60'), findsNothing);
    await tester.drag(find.byType(ListView).first, const Offset(0, -5000));
    await tester.pumpAndSettle();
    expect(find.text('社員60'), findsOneWidget);
  });

  testWidgets('非同期ローダー: ローディング表示後にデータ', (tester) async {
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app());
    await openTab(tester, '非同期ローダーとローディング');
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();
    expect(find.byType(CircularProgressIndicator), findsNothing);
    expect(find.text('社員1'), findsOneWidget);
    await tester.drag(find.byType(ListView).first, const Offset(0, -5000));
    await tester.pumpAndSettle();
    expect(find.text('社員20'), findsOneWidget); // pageSize=20
    expect(find.text('社員21'), findsNothing);
  });

  testWidgets('ローダーのエラー表示', (tester) async {
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app());
    await openTab(tester, 'ローダーのエラー');
    await tester.pumpAndSettle();
    expect(find.textContaining('読み込みに失敗しました'), findsOneWidget);
  });

  testWidgets('横スクロール: 列合計が親より広い', (tester) async {
    tester.view.physicalSize = const Size(800, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app());
    await openTab(tester, '横スクロール(列合計が親より広い)');
    final scroll = find.byType(FlgTable<Person>);
    final extent = tester.state<ScrollableState>(
      find.descendant(of: scroll, matching: find.byType(Scrollable)).first,
    ).position.maxScrollExtent;
    expect(extent, greaterThan(0));
  });

  testWidgets('親幅いっぱい: 列が少ないと按分', (tester) async {
    tester.view.physicalSize = const Size(1000, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app());
    await openTab(tester, '親幅いっぱい(列が少ない)');
    final scroll = find.byType(FlgTable<Person>);
    final extent = tester.state<ScrollableState>(
      find.descendant(of: scroll, matching: find.byType(Scrollable)).first,
    ).position.maxScrollExtent;
    expect(extent, 0);
    final header = tester.getRect(find.text('ID'));
    final last = tester.getRect(find.text('名前'));
    expect(last.left, greaterThan(header.left));
  });

  testWidgets('カスタムセルと取得失敗時の標準値', (tester) async {
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app());
    await openTab(tester, 'カスタムセル・取得失敗時の標準値');
    expect(find.byType(Chip), findsWidgets);
    expect(find.text('(標準値)'), findsWidgets);
  });

  testWidgets('設定JSON: 往復と不正値の既定値化', (tester) async {
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app());
    await openTab(tester, '設定のJSON往復');
    await tester.enterText(
      find.byKey(const Key('configJson')),
      '{"rowHeight": 80, "pageSize": -1, "loadMode": "pagination"}',
    );
    await tester.tap(find.byKey(const Key('applyConfig')));
    await tester.pumpAndSettle();
    expect(find.text('社員1'), findsOneWidget);
    final cell = tester.getSize(find.ancestor(
      of: find.text('社員1'),
      matching: find.byType(SizedBox),
    ).first);
    expect(cell.height, 80);

    final config = TableConfig.fromJson(
      const TableConfig(rowHeight: 80, loadMode: LoadMode.pagination).toJson(),
    );
    expect(config.rowHeight, 80);
    expect(config.loadMode, LoadMode.pagination);
    expect(TableConfig.fromJson({'pageSize': -1}).pageSize, 50);
  });

  testWidgets('テーマ切替(theme_lib)', (tester) async {
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app());
    await tester.pumpAndSettle();
    final before = Theme.of(tester.element(find.text('名前'))).colorScheme.primary;
    await tester.tap(find.byType(DropdownButton<String>));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Ocean').last);
    await tester.pumpAndSettle();
    final after = Theme.of(tester.element(find.text('名前'))).colorScheme.primary;
    expect(after, isNot(before));
    await tester.tap(find.byIcon(Icons.brightness_6));
    await tester.pumpAndSettle();
    expect(find.text('社員1'), findsOneWidget);
  });
}
