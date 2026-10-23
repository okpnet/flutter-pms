import 'package:example/main.dart';
import 'package:example/feature_cases.dart';
import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
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
  'ソート・フィルタ',
  'ページネーション',
  '無限スクロール',
  '行操作・選択・セル編集・イベント',
  'ドラッグドロップ(2テーブル)',
  'グルーピング',
  '子テーブル',
  '列固定',
  'モバイル表示',
  'CSVエクスポート',
  'ローディング種別',
  'セル配置・件数表示',
  'ツリー',
  '取り消し/やり直し',
];

/// タブバーが画面外にはみ出すため、コントローラで直接切り替える。
Future<void> openTab(WidgetTester tester, String label) async {
  final controller = DefaultTabController.of(
    tester.element(find.byType(TabBarView)),
  );
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
    final bar = find.descendant(
      of: find.byType(FlgTable<Person>),
      matching: find.byType(SingleChildScrollView),
    );
    expect(
      tester
          .state<ScrollableState>(
            find.descendant(of: bar, matching: find.byType(Scrollable)).first,
          )
          .position
          .maxScrollExtent,
      greaterThan(0),
    );
  });

  testWidgets('親幅いっぱい: 列が少ないと按分', (tester) async {
    tester.view.physicalSize = const Size(1000, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app());
    await openTab(tester, '親幅いっぱい(列が少ない)');
    expect(
      find.descendant(
        of: find.byType(FlgTable<Person>),
        matching: find.byType(SingleChildScrollView),
      ),
      findsNothing,
    ); // 横スクロールなし
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
    final cell = tester.getSize(
      find
          .ancestor(of: find.text('社員1'), matching: find.byType(SizedBox))
          .first,
    );
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
    final before = Theme.of(
      tester.element(find.text('名前')),
    ).colorScheme.primary;
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

  Future<void> wide(WidgetTester tester, {double width = 1200}) async {
    tester.view.physicalSize = Size(width, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app());
  }

  testWidgets('ソート・フィルタ: 見出しタップで並び、フィルタで絞れる', (tester) async {
    await wide(tester);
    await openTab(tester, 'ソート・フィルタ');
    await tester.tap(find.byKey(const Key('header.age')));
    await tester.pumpAndSettle();
    final first = find.byType(ListView).first;
    expect(first, findsOneWidget);
    await tester.longPress(find.byKey(const Key('header.name')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('filterOperator.0')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('LIKE').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('filterValue1.0')), '社員1_');
    await tester.tap(find.byKey(const Key('filterApply')));
    await tester.pumpAndSettle();
    expect(find.text('社員10'), findsOneWidget);
    expect(find.text('社員2'), findsNothing);
  });

  testWidgets('ページネーション: ページ切替', (tester) async {
    await wide(tester);
    await openTab(tester, 'ページネーション');
    await tester.pumpAndSettle();
    expect(find.text('社員10'), findsOneWidget);
    expect(find.text('社員11'), findsNothing);
    await tester.tap(find.text('次へ'));
    await tester.pumpAndSettle();
    expect(find.text('社員11'), findsOneWidget);
  });

  testWidgets('無限スクロール: 末尾で追加読み込み', (tester) async {
    await wide(tester);
    await openTab(tester, '無限スクロール');
    await tester.pumpAndSettle();
    for (var i = 0; i < 3; i++) {
      await tester.drag(find.byType(ListView).first, const Offset(0, -5000));
      await tester.pumpAndSettle();
    }
    expect(find.text('社員60'), findsOneWidget);
  });

  testWidgets('行操作: 選択・セル編集・削除キャンセルのイベントログ', (tester) async {
    await wide(tester, width: 1000);
    await openTab(tester, '行操作・選択・セル編集・イベント');
    await tester.drag(find.text('社員1').first, const Offset(120, 0));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('rowAction.delete')));
    await tester.pumpAndSettle();
    expect(find.text('削除キャンセル: 社員1'), findsOneWidget);
    expect(find.text('社員1'), findsWidgets);
    await tester.drag(find.text('社員2').first, const Offset(120, 0));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('rowAction.delete')));
    await tester.pumpAndSettle();
    expect(find.text('削除: 社員2'), findsOneWidget);
  });

  testWidgets('ドラッグドロップ: 2テーブルの表示', (tester) async {
    await wide(tester);
    await openTab(tester, 'ドラッグドロップ(2テーブル)');
    expect(find.byKey(const Key('left')), findsOneWidget);
    expect(find.byKey(const Key('right')), findsOneWidget);
    expect(find.text('社員1'), findsOneWidget);
    expect(find.text('社員7'), findsOneWidget);
  });

  testWidgets('グルーピング・子テーブル・列固定', (tester) async {
    await wide(tester);
    await openTab(tester, 'グルーピング');
    expect(find.byIcon(Icons.indeterminate_check_box_outlined), findsWidgets);
    await tester.tap(find.byIcon(Icons.indeterminate_check_box_outlined).first);
    await tester.pump();
    expect(find.byIcon(Icons.add_box_outlined), findsOneWidget);

    await openTab(tester, '子テーブル');
    expect(find.text('商品2-1'), findsNothing);
    await tester.tap(find.byIcon(Icons.add_circle_outline).at(1));
    await tester.pumpAndSettle();
    expect(find.text('商品2-1'), findsOneWidget);
    expect(find.text('商品2-2'), findsOneWidget);

    await openTab(tester, '列固定');
    final name = tester.getTopLeft(find.text('名前')).dx;
    final bar = find.descendant(
      of: find.byType(FlgTable<Person>),
      matching: find.byType(SingleChildScrollView),
    );
    tester
        .state<ScrollableState>(
          find.descendant(of: bar, matching: find.byType(Scrollable)).first,
        )
        .position
        .jumpTo(300);
    await tester.pump();
    expect(tester.getTopLeft(find.text('名前')).dx, name);
    expect(tester.getTopLeft(find.text('列0')).dx, lessThan(name + 400));
  });

  testWidgets('モバイル表示: タイルと検索バー', (tester) async {
    await wide(tester);
    await openTab(tester, 'モバイル表示');
    expect(find.text('社員1'), findsOneWidget);
    expect(find.byKey(const Key('mobileSearch')), findsOneWidget);
    expect(find.byKey(const Key('header.id')), findsNothing);
  });

  testWidgets('CSVエクスポート: ボタンで表示中の行を出力', (tester) async {
    await wide(tester);
    await openTab(tester, 'CSVエクスポート');
    await tester.tap(find.byKey(const Key('exportCsv')));
    await tester.pump();
    final text = tester.widget<SelectableText>(
      find.byKey(const Key('csvText')),
    );
    expect(text.data, startsWith('﻿ID,名前,年齢,都市\r\n1,社員1,'));
  });

  testWidgets('ローディング種別: 切替と再読み込み', (tester) async {
    await wide(tester);
    await openTab(tester, 'ローディング種別');
    expect(find.text('読み込み中...'), findsOneWidget);
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();
    expect(find.text('読み込み中...'), findsNothing);
    await tester.tap(find.text('overlay'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.text('読み込み中...'), findsNothing);
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();
  });

  testWidgets('言語切替: 英語ラベルがページネーションに反映される', (tester) async {
    await wide(tester);
    addTearDown(() => exampleEnglish.value = false);
    await openTab(tester, 'ページネーション');
    await tester.pumpAndSettle();
    expect(find.text('次へ'), findsOneWidget);
    await tester.tap(find.byKey(const Key('langToggle')));
    await tester.pumpAndSettle();
    expect(find.text('Next'), findsOneWidget);
    expect(find.text('次へ'), findsNothing);
    expect(find.text('English'), findsOneWidget);
  });

  testWidgets('ソート・フィルタ: 同じ列に複数条件と条件数の表示', (tester) async {
    await wide(tester);
    await openTab(tester, 'ソート・フィルタ');
    await tester.longPress(find.byKey(const Key('header.age')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('filterOperator.0')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('以上').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('filterValue1.0')), '30');
    await tester.tap(find.byKey(const Key('filterAdd')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('filterOperator.1')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('以下').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('filterValue1.1')), '31');
    await tester.tap(find.byKey(const Key('filterApply')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('filterCount.age')), findsOneWidget);
    expect(
      tester.widget<Text>(find.byKey(const Key('filterCount.age'))).data,
      '2',
    );
  });

  testWidgets('セル配置・件数表示: 件数・場所・ローディング位置の切替', (tester) async {
    await wide(tester);
    await openTab(tester, 'セル配置・件数表示');
    expect(find.text('読み込み中...'), findsOneWidget);
    final left = tester.getCenter(find.text('読み込み中...')).dx;
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    expect(find.text('全60件 フィルタ適用60件 読込10件'), findsOneWidget);
    final header = tester.getTopLeft(find.text('全60件 フィルタ適用60件 読込10件')).dy;
    expect(header, lessThan(tester.getTopLeft(find.textContaining('ID')).dy));

    // 場所をフッターへ
    await tester.tap(
      find.descendant(
        of: find.byKey(const Key('countPosition')),
        matching: find.text('footer'),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('全60件 フィルタ適用60件 読込10件'), findsOneWidget);
    expect(
      tester.getTopLeft(find.text('全60件 フィルタ適用60件 読込10件')).dy,
      greaterThan(tester.getTopLeft(find.textContaining('ID')).dy),
    );

    // 縦並び+逆順
    await tester.tap(
      find.descendant(
        of: find.byKey(const Key('countDirection')),
        matching: find.text('vertical'),
      ),
    );
    await tester.tap(find.byKey(const Key('reverseOrder')));
    await tester.pumpAndSettle();
    expect(
      tester.getTopLeft(find.text('読込10件')).dy,
      lessThan(tester.getTopLeft(find.text('全60件')).dy),
    );

    // ローディングの位置を右寄せへ
    await tester.tap(
      find.descendant(
        of: find.byKey(const Key('loadingAlign')),
        matching: find.text('right'),
      ),
    );
    await tester.pump();
    expect(tester.getCenter(find.text('読み込み中...')).dx, greaterThan(left + 300));
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
  });

  testWidgets('セル配置・件数表示: 読み込み中に続けて配置を変えても反映される(例外なし)', (tester) async {
    await wide(tester);
    await openTab(tester, 'セル配置・件数表示');
    await tester.pumpAndSettle();
    Future<void> pick(String id, String label) async {
      await tester.tap(
        find.descendant(of: find.byKey(Key(id)), matching: find.text(label)),
      );
      await tester.pump(const Duration(milliseconds: 50)); // 読み込み中のまま次へ
    }

    Rect count() => tester.getRect(
      find
          .descendant(
            of: find.byKey(const Key('countPanel')),
            matching: find.byType(Text),
          )
          .first,
    );

    await pick('countAlign', 'left');
    expect(count().left, closeTo(16, 1));
    await pick('countAlign', 'center');
    expect(count().center.dx, closeTo(600, 1));
    await pick('countDirection', 'vertical');
    await pick('countAlign', 'left');
    expect(count().left, closeTo(16, 1));
    await pick('countDirection', 'horizontal');
    await pick('countAlign', 'right');
    expect(count().right, closeTo(1184, 1));
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });

  testWidgets('行フラグ: 先頭に固定・解除・上限(3件)超過のイベント', (tester) async {
    await wide(tester, width: 1000);
    await openTab(tester, '行操作・選択・セル編集・イベント');

    Future<void> slideAndTap(String row, String action) async {
      await tester.drag(find.text(row).first, const Offset(120, 0));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('rowAction.$action')));
      await tester.pumpAndSettle();
    }

    double top(String name) => tester.getTopLeft(find.text(name).first).dy;

    // 社員5 にフラグ → 先頭(社員1より上)に固定され、旗アイコンが付く
    expect(top('社員5'), greaterThan(top('社員1')));
    await slideAndTap('社員5', 'flag');
    expect(top('社員5'), lessThan(top('社員1')));
    expect(find.byIcon(Icons.flag), findsOneWidget);
    expect(find.text('フラグ変更: 社員5'), findsOneWidget);

    // 3件まで付けられる
    await slideAndTap('社員6', 'flag');
    await slideAndTap('社員7', 'flag');
    expect(find.byIcon(Icons.flag), findsNWidgets(3));
    expect(top('社員7'), lessThan(top('社員1')));

    // 4件目は上限超過: 付かずイベントが通知される
    await slideAndTap('社員8', 'flag');
    expect(find.byIcon(Icons.flag), findsNWidgets(3));
    expect(find.text('フラグ上限(3): 社員8'), findsOneWidget);
    expect(top('社員8'), greaterThan(top('社員1')));

    // 解除すると元の位置に戻り、空いた枠にまた付けられる
    await slideAndTap('社員5', 'flag');
    expect(top('社員5'), greaterThan(top('社員1')));
    expect(find.byIcon(Icons.flag), findsNWidgets(2));
    await slideAndTap('社員8', 'flag');
    expect(top('社員8'), lessThan(top('社員1')));
    expect(find.byIcon(Icons.flag), findsNWidgets(3));
  });

  testWidgets('行選択: マルチ/単一のスイッチ切替', (tester) async {
    await wide(tester);
    await openTab(tester, '行操作・選択・セル編集・イベント');

    int selected() => find
        .byWidgetPredicate(
          (w) =>
              w is DecoratedBox &&
              w.decoration is BoxDecoration &&
              (w.decoration as BoxDecoration).color != null &&
              (w.decoration as BoxDecoration).border != null,
        )
        .evaluate()
        .length;

    Future<void> tapRow(String name) async {
      await tester.tap(find.text(name).first);
      await tester.pump(const Duration(milliseconds: 400));
    }

    // 初期はマルチ選択: 2行選べて、同じ行をもう一度タップで解除
    expect(
      tester.widget<Switch>(find.byKey(const Key('multiSelect'))).value,
      isTrue,
    );
    await tapRow('社員3');
    await tapRow('社員4');
    expect(selected(), 2);
    await tapRow('社員4');
    expect(selected(), 1);

    // 単一選択へ切替: 選択は解除され、1行しか選べない
    await tester.tap(find.byKey(const Key('multiSelect')));
    await tester.pumpAndSettle();
    expect(find.text('単一選択(single)'), findsOneWidget);
    expect(selected(), 0);
    await tapRow('社員3');
    await tapRow('社員4');
    expect(selected(), 1);

    // マルチ選択へ戻す
    await tester.tap(find.byKey(const Key('multiSelect')));
    await tester.pumpAndSettle();
    expect(find.text('マルチ選択(multiple)'), findsOneWidget);
    await tapRow('社員5');
    await tapRow('社員6');
    expect(selected(), 2);
  });

  group('ツリー', () {
    Future<void> openTree(WidgetTester tester) async {
      await wide(tester, width: 1400);
      await openTab(tester, 'ツリー');
      await tester.pumpAndSettle();
    }

    Future<void> toggle(WidgetTester tester, int id) async {
      await tester.tap(find.byKey(Key('tree.toggle.$id')));
      await tester.pumpAndSettle();
    }

    double dx(WidgetTester tester, String text) =>
        tester.getTopLeft(find.text(text)).dx;

    testWidgets('件数表示: 全・フィルタ適用・読込。展開で読込が増える', (tester) async {
      await openTree(tester);
      List<int> counts() {
        final t = tester
            .widget<Text>(
              find.descendant(
                of: find.byKey(const Key('countPanel')),
                matching: find.byType(Text),
              ),
            )
            .data!;
        return [for (final m in RegExp(r'\d+').allMatches(t)) int.parse(m[0]!)];
      }

      final before = counts(); // [全, フィルタ適用, 読込]
      expect(before.length, 3);
      expect(before[1], before[0]); // フィルタなしは全件と同じ
      await toggle(tester, 1);
      final after = counts();
      expect(after[0], before[0]);
      expect(after[2], greaterThan(before[2])); // 子を読み込んだ分だけ増える
    });

    testWidgets('トップノードだけ表示し、展開で子を読み込む', (tester) async {
      await openTree(tester);
      expect(find.text('本社'), findsOneWidget);
      expect(find.text('支社A'), findsOneWidget);
      expect(find.text('本社 第1部'), findsNothing);
      await toggle(tester, 1);
      expect(find.text('本社 第1部'), findsOneWidget);
      expect(dx(tester, '本社 第1部'), greaterThan(dx(tester, '本社')));
    });

    testWidgets('インデントの設定を変えると子の位置が変わる', (tester) async {
      await openTree(tester);
      await toggle(tester, 1);
      final base = dx(tester, '本社 第1部') - dx(tester, '本社');
      await tester.tap(
        find.descendant(
          of: find.byKey(const Key('tree.indent')),
          matching: find.text('4'),
        ),
      );
      await tester.pumpAndSettle();
      expect(dx(tester, '本社 第1部') - dx(tester, '本社'), greaterThan(base));
    });

    testWidgets('1レベルの最大行数: 「もっと読み込む」で続きを読み込む', (tester) async {
      await openTree(tester);
      await tester.tap(
        find.descendant(
          of: find.byKey(const Key('tree.pageSize')),
          matching: find.text('3'),
        ),
      );
      await tester.pumpAndSettle();
      await toggle(tester, 1);
      expect(find.text('本社 第3部'), findsOneWidget);
      expect(find.text('本社 第4部'), findsNothing);
      await tester.tap(find.byKey(const Key('tree.more.1')));
      await tester.pumpAndSettle();
      expect(find.text('本社 第4部'), findsOneWidget);
      expect(find.text('本社 第5部'), findsOneWidget);
    });

    testWidgets('フィルタ: ヒットした行は全てトップノードになる', (tester) async {
      await openTree(tester);
      await toggle(tester, 1);
      final topDx = dx(tester, '本社');
      await tester.enterText(find.byKey(const Key('tree.filter')), 'チーム1');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      expect(find.text('本社'), findsNothing);
      expect(find.text('本社 第1部 チーム1'), findsOneWidget);
      expect(dx(tester, '本社 第1部 チーム1'), closeTo(topDx, 1));
    });

    testWidgets(
      'ドラッグで親を変更し、イベントと取り消し/やり直しが動く',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        await openTree(tester);
        await toggle(tester, 1);
        final g = await tester.startGesture(
          tester.getCenter(find.text('本社 第1部')),
          kind: PointerDeviceKind.mouse,
        );
        await g.moveBy(const Offset(40, 0));
        await g.moveTo(Offset(900, tester.getCenter(find.text('支社A')).dy));
        await tester.pump();
        await g.up();
        await tester.pumpAndSettle();
        expect(find.text('親変更前: 本社 第1部 → 支社A'), findsOneWidget);
        expect(find.text('親変更後: 本社 第1部 → 支社A'), findsOneWidget);
        expect(find.text('本社 第1部'), findsNothing);

        await tester.tap(find.byKey(const Key('tree.undo')));
        await tester.pumpAndSettle();
        expect(find.text('本社 第1部'), findsOneWidget);
        expect(find.text('取り消し通知: parentChange'), findsOneWidget);
        // データの親も戻っているので、移動先(支社A)を展開しても行は現れない
        await toggle(tester, 17);
        expect(find.text('本社 第1部'), findsOneWidget); // 本社の下の1行だけ
        await toggle(tester, 17);
        await tester.tap(find.byKey(const Key('tree.redo')));
        await tester.pumpAndSettle();
        // 移動先は読み込み済みなので、やり直すと開いて、移動した行(1行)が見える
        expect(find.text('本社 第1部'), findsOneWidget);
        expect(find.text('支社A 第1部'), findsOneWidget);
      },
    );

    testWidgets(
      '親を変更した後に移動先を展開しても、取り消しで移動先から行が消える',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        await openTree(tester);
        await toggle(tester, 1); // 本社
        await toggle(tester, 17); // 支社A
        // 本社 第5部 を 支社A 第1部(未展開)の子へ
        final g = await tester.startGesture(
          tester.getCenter(find.text('本社 第5部')),
          kind: PointerDeviceKind.mouse,
        );
        await g.moveBy(const Offset(40, 0));
        await g.moveTo(Offset(900, tester.getCenter(find.text('支社A 第1部')).dy));
        await tester.pump();
        await g.up();
        await tester.pumpAndSettle();
        expect(find.text('本社 第5部'), findsNothing);
        await toggle(tester, 18); // 支社A 第1部 を展開(移動した行が読み込まれる)
        expect(find.text('本社 第5部'), findsOneWidget);

        await tester.tap(find.byKey(const Key('tree.undo')));
        await tester.pumpAndSettle();
        expect(find.text('本社 第5部'), findsOneWidget); // 本社の下の1行だけ
        final top = tester.getTopLeft(find.text('本社 第5部')).dx;
        expect(top, closeTo(tester.getTopLeft(find.text('本社 第1部')).dx, 1));

        await tester.tap(find.byKey(const Key('tree.redo')));
        await tester.pumpAndSettle();
        expect(find.text('本社 第5部'), findsOneWidget); // 支社A 第1部の下の1行だけ
        expect(
          tester.getTopLeft(find.text('本社 第5部')).dx,
          greaterThan(tester.getTopLeft(find.text('支社A 第1部')).dx),
        );
      },
    );

    testWidgets(
      '自分の子孫の上へのドロップは拒否される',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        await openTree(tester);
        await toggle(tester, 1);
        final g = await tester.startGesture(
          tester.getCenter(find.text('本社')),
          kind: PointerDeviceKind.mouse,
        );
        await g.moveBy(const Offset(40, 0));
        await g.moveTo(Offset(900, tester.getCenter(find.text('本社 第1部')).dy));
        await tester.pump();
        await g.up();
        await tester.pumpAndSettle();
        expect(find.textContaining('親変更後'), findsNothing);
        expect(find.text('子孫の下には移動できません'), findsOneWidget);
      },
    );
  });

  group('取り消し/やり直し', () {
    testWidgets(
      '削除・セル編集を取り消し/やり直しボタンで戻せる',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        await wide(tester, width: 1400);
        await openTab(tester, '取り消し/やり直し');
        await tester.pumpAndSettle();

        await tester.tap(find.text('社員2'), buttons: kSecondaryButton);
        await tester.pumpAndSettle();
        await tester.tap(find.text('削除'));
        await tester.pumpAndSettle();
        expect(find.text('社員2'), findsNothing);

        await tester.tap(find.byKey(const Key('undo.undo')));
        await tester.pumpAndSettle();
        expect(find.text('社員2'), findsOneWidget);
        expect(find.textContaining('取り消し通知: delete 社員2'), findsOneWidget);

        await tester.tap(find.byKey(const Key('undo.redo')));
        await tester.pumpAndSettle();
        expect(find.text('社員2'), findsNothing);
      },
    );

    testWidgets(
      'Ctrl+Z で取り消せる',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        await wide(tester, width: 1400);
        await openTab(tester, '取り消し/やり直し');
        await tester.pumpAndSettle();
        await tester.tap(find.text('社員3'), buttons: kSecondaryButton);
        await tester.pumpAndSettle();
        await tester.tap(find.text('削除'));
        await tester.pumpAndSettle();
        expect(find.text('社員3'), findsNothing);
        await tester.sendKeyDownEvent(LogicalKeyboardKey.controlLeft);
        await tester.sendKeyEvent(LogicalKeyboardKey.keyZ);
        await tester.sendKeyUpEvent(LogicalKeyboardKey.controlLeft);
        await tester.pumpAndSettle();
        expect(find.text('社員3'), findsOneWidget);
      },
    );
  });
}
