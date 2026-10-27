import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:view_responsiveness/responsiveness.dart';

class TP {
  TP(this.id, this.name, this.city, [List<TC>? kids]) : kids = kids ?? [];
  final int id;
  String name;
  final String city;
  final List<TC> kids;
}

class TC {
  TC(this.label);
  final String label;
}

List<TP> people([int n = 6]) => [
  for (var i = 1; i <= n; i++)
    TP(i, 'p$i', const ['東京', '大阪'][i % 2], [TC('c$i-a'), TC('c$i-b')]),
];

List<ColumnDefinition<TP>> cols() => [
  ColumnDefinition<TP>(
    key: 'id',
    label: 'ID',
    getter: (p) => '${p.id}',
    type: ColumnType.number,
    width: 80,
  ),
  ColumnDefinition<TP>(
    key: 'name',
    label: '名前',
    getter: (p) => p.name,
    setter: (p, v) {
      p.name = v;
      return true;
    },
  ),
  ColumnDefinition<TP>(key: 'city', label: '都市', getter: (p) => p.city),
];

Widget host(Widget child, {double h = 600}) => ProviderScope(
  child: MaterialApp(
    home: Scaffold(
      body: SizedBox(height: h, child: child),
    ),
  ),
);

void big(WidgetTester tester, {Size size = const Size(1000, 700)}) {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
}

/// 画面上の縦位置の順に並んだテキスト。
List<String> order(WidgetTester tester, Iterable<String> names) {
  final found = [
    for (final n in names)
      if (find.text(n).evaluate().isNotEmpty)
        (n, tester.getTopLeft(find.text(n).first).dy),
  ]..sort((a, b) => a.$2.compareTo(b.$2));
  return [for (final f in found) f.$1];
}

const tap400 = Duration(milliseconds: 400);

void main() {
  final names = [for (var i = 1; i <= 6; i++) 'p$i'];

  testWidgets('ソート: ヘッダのタップで昇順→降順(2状態)、前後イベント、キャンセル', (tester) async {
    big(tester);
    final log = <String>[];
    var cancel = false;
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(),
          config: const TableConfig(sortEnabled: true),
          events: TableEvents<TP>(
            onBeforeSort: (e) {
              log.add('before ${e.sort}');
              e.cancel = cancel;
            },
            onAfterSort: (e) => log.add('after ${e.sort}'),
          ),
        ),
      ),
    );
    await tester.tap(find.byKey(const Key('header.id')));
    await tester.pump();
    expect(order(tester, names), names);
    await tester.tap(find.byKey(const Key('header.id')));
    await tester.pump();
    expect(order(tester, names), names.reversed.toList());
    await tester.tap(find.byKey(const Key('header.id')));
    await tester.pump();
    expect(order(tester, names), names); // 3回目は昇順に戻る(解除されない)
    expect(log.length, 6);
    cancel = true;
    await tester.tap(find.byKey(const Key('header.id')));
    await tester.pump();
    expect(order(tester, names), names);
    expect(log.length, 7); // before のみ
  });

  testWidgets('ソート無効のテーブルではタップしても並ばない', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(FlgTable<TP>(columns: cols(), items: people())),
    );
    await tester.tap(find.byKey(const Key('header.id')));
    await tester.tap(find.byKey(const Key('header.id')));
    await tester.pump();
    expect(order(tester, names), names);
  });

  testWidgets('フィルタ: ポップアップで編集して適用/解除', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(),
          config: const TableConfig(filterEnabled: true),
        ),
      ),
    );
    await tester.longPress(find.byKey(const Key('header.name')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('filterOperator.0')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('LIKE').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('filterValue1.0')), 'P_');
    await tester.tap(find.byKey(const Key('filterApply')));
    await tester.pumpAndSettle();
    expect(order(tester, names), names);

    await tester.longPress(find.byKey(const Key('header.name')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('filterValue1.0')), 'P3');
    await tester.tap(find.byKey(const Key('filterApply')));
    await tester.pumpAndSettle();
    expect(order(tester, names), ['p3']);

    // 名前の条件を解除し、IN はカンマ区切り
    await tester.longPress(find.byKey(const Key('header.name')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('filterClear')));
    await tester.pumpAndSettle();
    expect(order(tester, names), names);

    await tester.longPress(find.byKey(const Key('header.id')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('filterOperator.0')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('いずれかに一致').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('filterValue1.0')), '2,3,x');
    await tester.tap(find.byKey(const Key('filterApply')));
    await tester.pumpAndSettle();
    expect(
      find.byKey(const Key('filterApply')),
      findsOneWidget,
    ); // 数値にできず適用されない
    await tester.enterText(find.byKey(const Key('filterValue1.0')), '2,3');
    await tester.tap(find.byKey(const Key('filterApply')));
    await tester.pumpAndSettle();
    expect(order(tester, names), ['p2', 'p3']);
  });

  testWidgets('ページネーション(静的): ページ切替、1ページのみは「1」だけ', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(25),
          config: const TableConfig(
            loadMode: LoadMode.pagination,
            pageSize: 10,
            paginationDigits: 2,
          ),
        ),
      ),
    );
    expect(find.text('p10'), findsOneWidget);
    expect(find.text('p11'), findsNothing);
    final panel = find.byKey(const Key('paginationPanel'));
    expect(find.descendant(of: panel, matching: find.text('3')), findsNothing);
    await tester.tap(find.text('次へ'));
    await tester.pump();
    expect(find.text('p11'), findsOneWidget);
    expect(find.text('p10'), findsNothing);
    await tester.tap(find.text('次へ'));
    await tester.pump();
    expect(find.text('p25'), findsOneWidget);
    expect(
      find.descendant(of: panel, matching: find.text('3')),
      findsOneWidget,
    );
    expect(
      tester
          .widget<TextButton>(find.widgetWithText(TextButton, '次へ'))
          .onPressed,
      isNull,
    );

    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          key: const Key('single'),
          columns: cols(),
          items: people(3),
          config: const TableConfig(
            loadMode: LoadMode.pagination,
            pageSize: 10,
          ),
        ),
      ),
    );
    expect(
      find.descendant(of: panel, matching: find.text('1')),
      findsOneWidget,
    );
    expect(find.descendant(of: panel, matching: find.text('2')), findsNothing);
  });

  testWidgets('ページネーション(ローダー): 開始行・件数・ソート・フィルタを渡し、総ページ数はフィルタ件数から', (
    tester,
  ) async {
    big(tester);
    final queries = <LoadQuery>[];
    final all = people(45);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          config: const TableConfig(
            loadMode: LoadMode.pagination,
            pageSize: 10,
            sortEnabled: true,
            initialFilters: [
              FilterCondition('city', FilterOperator.eq, ['大阪']),
            ],
          ),
          loader: (q) async {
            queries.add(q);
            final filtered = [
              for (final p in all)
                if (p.city == '大阪') p,
            ];
            final page = filtered
                .skip(q.start ?? 0)
                .take(q.count ?? 10)
                .toList();
            return LoadResult(
              items: page,
              totalCount: all.length,
              filteredCount: filtered.length,
              start: q.start ?? 0,
              count: page.length,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    final panel = find.byKey(const Key('paginationPanel'));
    expect(queries.single.start, 0);
    expect(queries.single.count, 10);
    expect(queries.single.filters!.single.columnKey, 'city');
    // 大阪(偶数id)=22件 → 3ページ
    expect(
      find.descendant(of: panel, matching: find.text('3')),
      findsOneWidget,
    );
    expect(find.descendant(of: panel, matching: find.text('4')), findsNothing);
    await tester.tap(find.descendant(of: panel, matching: find.text('3')));
    await tester.pumpAndSettle();
    expect(queries.last.start, 20);
    await tester.tap(find.byKey(const Key('header.id')));
    await tester.pumpAndSettle();
    expect(queries.last.sort!.columnKey, 'id');
    expect(queries.last.start, 0); // ソートで先頭ページに戻る
  });

  testWidgets('無限スクロール(ローダー): 最後尾で追加読み込み', (tester) async {
    big(tester);
    final starts = <int?>[];
    final all = people(40);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          config: const TableConfig(
            loadMode: LoadMode.infiniteScroll,
            pageSize: 15,
            rowHeight: 40,
          ),
          loader: (q) async {
            starts.add(q.start);
            final page = all.skip(q.start ?? 0).take(q.count ?? 15).toList();
            return LoadResult(
              items: page,
              totalCount: all.length,
              filteredCount: all.length,
              start: q.start ?? 0,
              count: page.length,
            );
          },
        ),
        h: 300,
      ),
    );
    await tester.pumpAndSettle();
    expect(starts, [0]);
    for (var i = 0; i < 4; i++) {
      await tester.drag(find.byType(ListView), const Offset(0, -3000));
      await tester.pumpAndSettle();
    }
    expect(starts, [0, 15, 30]);
    expect(find.text('p40'), findsOneWidget);
  });

  testWidgets('無限スクロール(静的データ)', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(40),
          config: const TableConfig(
            loadMode: LoadMode.infiniteScroll,
            pageSize: 15,
            rowHeight: 40,
          ),
        ),
        h: 300,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('p16'), findsNothing);
    for (var i = 0; i < 4; i++) {
      await tester.drag(find.byType(ListView), const Offset(0, -3000));
      await tester.pumpAndSettle();
    }
    expect(find.text('p40'), findsOneWidget);
  });

  int selectedCount(WidgetTester tester) => find
      .byWidgetPredicate(
        (w) =>
            w is DecoratedBox &&
            w.decoration is BoxDecoration &&
            (w.decoration as BoxDecoration).color != null &&
            (w.decoration as BoxDecoration).border != null,
      )
      .evaluate()
      .length;

  testWidgets('行選択: single/multiple', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(),
          rowKey: (p) => p.id,
          config: const TableConfig(rowSelection: RowSelectionMode.single),
        ),
      ),
    );
    await tester.tap(find.text('p1'));
    await tester.pump(tap400);
    await tester.tap(find.text('p2'));
    await tester.pump(tap400);
    expect(selectedCount(tester), 1);

    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          key: const Key('multi'),
          columns: cols(),
          items: people(),
          rowKey: (p) => p.id,
          config: const TableConfig(rowSelection: RowSelectionMode.multiple),
        ),
      ),
    );
    await tester.tap(find.text('p1'));
    await tester.pump(tap400);
    await tester.tap(find.text('p2'));
    await tester.pump(tap400);
    expect(selectedCount(tester), 2);
    await tester.tap(find.text('p2'));
    await tester.pump(tap400);
    expect(selectedCount(tester), 1);
  });

  testWidgets('ダブルクリックでイベント', (tester) async {
    big(tester);
    final hits = <String>[];
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(),
          events: TableEvents<TP>(onRowActivated: (p) => hits.add(p.name)),
        ),
      ),
    );
    await tester.tap(find.text('p2'));
    await tester.pump(const Duration(milliseconds: 50));
    await tester.tap(find.text('p2'));
    await tester.pump(const Duration(milliseconds: 500));
    expect(hits, ['p2']);
  });

  testWidgets(
    '右クリックメニュー: 削除(キャンセル/実行)・フラグ・上下移動',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final deleted = <String>[];
      var cancel = true;
      final items = people();
      await tester.pumpWidget(
        host(
          FlgTable<TP>(
            columns: cols(),
            items: items,
            rowKey: (p) => p.id,
            config: const TableConfig(rowActionsEnabled: true),
            events: TableEvents<TP>(
              onBeforeDelete: (e) => e.cancel = cancel,
              onAfterDelete: (p) => deleted.add(p.name),
            ),
          ),
        ),
      );

      Future<void> menu(String row, String item) async {
        await tester.tap(find.text(row), buttons: kSecondaryButton);
        await tester.pumpAndSettle();
        await tester.tap(find.text(item));
        await tester.pumpAndSettle();
      }

      await menu('p2', '削除');
      expect(find.text('p2'), findsOneWidget); // キャンセル
      expect(deleted, isEmpty);
      cancel = false;
      await menu('p2', '削除');
      expect(find.text('p2'), findsNothing);
      expect(deleted, ['p2']);

      await menu('p3', '下へ');
      expect(order(tester, names), ['p1', 'p4', 'p3', 'p5', 'p6']);
      // 元のリストの並びも入れ替わる(削除はアプリ側の責務なので p2 は残る)
      expect(items.map((p) => p.name).toList().length, 6);
      await menu('p3', '上へ');
      expect(order(tester, names), ['p1', 'p3', 'p4', 'p5', 'p6']);

      // フラグ: 先頭に固定され、解除で元の位置に戻る
      await menu('p5', 'フラグ');
      expect(order(tester, names), ['p5', 'p1', 'p3', 'p4', 'p6']);
      await menu('p5', 'フラグ解除');
      expect(order(tester, names), ['p1', 'p3', 'p4', 'p5', 'p6']);
    },
  );

  testWidgets(
    'フラグの上限超過はイベントで通知し、付けられない',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final over = <String>[];
      await tester.pumpWidget(
        host(
          FlgTable<TP>(
            columns: cols(),
            items: people(),
            rowKey: (p) => p.id,
            config: const TableConfig(rowActionsEnabled: true, flagLimit: 1),
            events: TableEvents<TP>(
              onFlagLimitExceeded: (e) => over.add(e.item.name),
            ),
          ),
        ),
      );
      for (final n in ['p4', 'p5']) {
        await tester.tap(find.text(n), buttons: kSecondaryButton);
        await tester.pumpAndSettle();
        await tester.tap(find.text('フラグ'));
        await tester.pumpAndSettle();
      }
      expect(over, ['p5']);
      expect(order(tester, names).first, 'p4');
      expect(find.byIcon(Icons.flag), findsOneWidget);
    },
  );

  testWidgets(
    'フラグ行はページを移っても表示され続ける(ローダー)',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final all = people(30);
      await tester.pumpWidget(
        host(
          FlgTable<TP>(
            columns: cols(),
            rowKey: (p) => p.id,
            config: const TableConfig(
              rowActionsEnabled: true,
              loadMode: LoadMode.pagination,
              pageSize: 10,
            ),
            loader: (q) async {
              final page = all.skip(q.start ?? 0).take(q.count ?? 10).toList();
              return LoadResult(
                items: page,
                totalCount: 30,
                filteredCount: 30,
                start: q.start ?? 0,
                count: page.length,
              );
            },
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('p3'), buttons: kSecondaryButton);
      await tester.pumpAndSettle();
      await tester.tap(find.text('フラグ'));
      await tester.pumpAndSettle();
      final panel = find.byKey(const Key('paginationPanel'));
      await tester.tap(find.descendant(of: panel, matching: find.text('3')));
      await tester.pumpAndSettle();
      expect(find.text('p21'), findsOneWidget);
      expect(find.text('p3'), findsOneWidget);
    },
  );

  testWidgets('タッチ: 右スライドで行内ボタン、削除', (tester) async {
    big(tester);
    final deleted = <String>[];
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(),
          config: const TableConfig(rowActionsEnabled: true),
          events: TableEvents<TP>(onAfterDelete: (p) => deleted.add(p.name)),
        ),
      ),
    );
    await tester.drag(find.text('p2'), const Offset(120, 0));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('rowAction.delete')), findsOneWidget);
    await tester.tap(find.byKey(const Key('rowAction.delete')));
    await tester.pumpAndSettle();
    expect(deleted, ['p2']);
    expect(find.text('p2'), findsNothing);
  });

  testWidgets(
    'ドラッグドロップ: 同一テーブルの並び替えと元リスト反映、前イベントのキャンセル',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final items = people();
      var cancel = false;
      final dropped = <String>[];
      await tester.pumpWidget(
        host(
          FlgTable<TP>(
            columns: cols(),
            items: items,
            rowKey: (p) => p.id,
            config: const TableConfig(dragEnabled: true),
            events: TableEvents<TP>(
              onBeforeDrop: (e) => e.cancel = cancel,
              onAfterDrop: (e) => dropped.add('${e.item.name}@${e.index}'),
            ),
          ),
        ),
      );
      final p1 = tester.getTopLeft(find.text('p1'));
      // p5 を p1 の上半分へ
      final g = await tester.startGesture(
        tester.getCenter(find.text('p5')),
        kind: PointerDeviceKind.mouse,
      );
      await g.moveBy(const Offset(0, -20));
      await g.moveTo(Offset(p1.dx + 5, p1.dy + 1));
      await tester.pump();
      await g.up();
      await tester.pumpAndSettle();
      expect(order(tester, names), ['p5', 'p1', 'p2', 'p3', 'p4', 'p6']);
      expect(items.map((p) => p.name).toList(), [
        'p5',
        'p1',
        'p2',
        'p3',
        'p4',
        'p6',
      ]);
      expect(dropped, ['p5@0']);

      cancel = true;
      final a = await tester.startGesture(
        tester.getCenter(find.text('p6')),
        kind: PointerDeviceKind.mouse,
      );
      await a.moveBy(const Offset(0, -20));
      await a.moveTo(tester.getTopLeft(find.text('p5')) + const Offset(5, 1));
      await tester.pump();
      await a.up();
      await tester.pumpAndSettle();
      expect(order(tester, names).first, 'p5');
      expect(order(tester, names).last, 'p6');
    },
  );

  testWidgets(
    'ドラッグドロップ: テーブル間は移動(元から削除)、型が違えばドロップ不可',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final left = people(3);
      final right = [TP(10, 'q1', '京都'), TP(11, 'q2', '京都')];
      final dropped = <String>[];
      final cs = cols();
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: Row(
                children: [
                  Expanded(
                    child: FlgTable<TP>(
                      key: const Key('left'),
                      columns: cs,
                      items: left,
                      rowKey: (p) => p.id,
                      config: const TableConfig(dragEnabled: true),
                    ),
                  ),
                  Expanded(
                    child: FlgTable<TP>(
                      key: const Key('right'),
                      columns: cs,
                      items: right,
                      rowKey: (p) => p.id,
                      config: const TableConfig(dragEnabled: true),
                      events: TableEvents<TP>(
                        onAfterDrop: (e) =>
                            dropped.add('${e.item.name}:${e.fromOtherTable}'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlgTable<TC>(
                      key: const Key('other'),
                      columns: [
                        ColumnDefinition<TC>(
                          key: 'l',
                          label: 'L',
                          getter: (c) => c.label,
                        ),
                      ],
                      items: [TC('x1')],
                      config: const TableConfig(dragEnabled: true),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      final g = await tester.startGesture(
        tester.getCenter(find.text('p2')),
        kind: PointerDeviceKind.mouse,
      );
      await g.moveBy(const Offset(40, 0));
      await g.moveTo(tester.getTopLeft(find.text('q2')) + const Offset(5, 1));
      await tester.pump();
      await g.up();
      await tester.pumpAndSettle();
      expect(dropped, ['p2:true']);
      expect(find.text('p2'), findsOneWidget);
      expect(order(tester, ['q1', 'q2', 'p2']).length, 3);
      final q1 = tester.getTopLeft(find.text('q1'));
      final p2 = tester.getTopLeft(find.text('p2'));
      final q2 = tester.getTopLeft(find.text('q2'));
      expect(p2.dx, closeTo(q1.dx, 1));
      expect(p2.dy, greaterThan(q1.dy));
      expect(p2.dy, lessThan(q2.dy));
      expect(find.text('p1'), findsOneWidget);
      expect(find.text('p3'), findsOneWidget);

      // 型の違うテーブルへはドロップできない
      final h = await tester.startGesture(
        tester.getCenter(find.text('p1')),
        kind: PointerDeviceKind.mouse,
      );
      await h.moveBy(const Offset(40, 0));
      await h.moveTo(tester.getTopLeft(find.text('x1')) + const Offset(5, 1));
      await tester.pump();
      await h.up();
      await tester.pumpAndSettle();
      expect(find.text('p1'), findsOneWidget);
      expect(
        tester.getTopLeft(find.text('p1')).dx,
        lessThan(tester.getTopLeft(find.text('x1')).dx),
      );
    },
  );

  testWidgets(
    'Map型は同じキーのテーブル同士のみドロップできる',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      ColumnDefinition<Map<String, dynamic>> c(String k) =>
          ColumnDefinition(key: k, label: k, getter: (m) => '${m[k] ?? ''}');
      final a = <Map<String, dynamic>>[
        {'k1': 'a1', 'k2': 'a2'},
      ];
      final same = <Map<String, dynamic>>[
        {'k1': 'b1', 'k2': 'b2'},
      ];
      final diff = <Map<String, dynamic>>[
        {'k1': 'c1', 'z': 'c2'},
      ];
      Widget t(
        String id,
        List<Map<String, dynamic>> items,
        List<String> keys,
      ) => Expanded(
        child: FlgTable<Map<String, dynamic>>(
          key: Key(id),
          columns: [for (final k in keys) c(k)],
          items: items,
          rowKey: (m) => m['k1'] as Object,
          config: const TableConfig(dragEnabled: true),
        ),
      );
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: Row(
                children: [
                  t('a', a, ['k1', 'k2']),
                  t('same', same, ['k1', 'k2']),
                  t('diff', diff, ['k1', 'z']),
                ],
              ),
            ),
          ),
        ),
      );
      Future<void> drag(String from, String to) async {
        final g = await tester.startGesture(
          tester.getCenter(find.text(from)),
          kind: PointerDeviceKind.mouse,
        );
        await g.moveBy(const Offset(30, 0));
        await g.moveTo(tester.getTopLeft(find.text(to)) + const Offset(5, 1));
        await tester.pump();
        await g.up();
        await tester.pumpAndSettle();
      }

      await drag('a1', 'c1'); // キーが違う: 動かない
      expect(find.text('データがありません'), findsNothing);
      await drag('a1', 'b1'); // 同じキー: 移動
      expect(find.text('データがありません'), findsOneWidget);
      expect(find.text('a1'), findsOneWidget);
    },
  );

  testWidgets('グルーピング: 先頭行のみ値表示、アイコンで展開/縮小、アイコンは行高の60%', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(),
          config: const TableConfig(groupColumnKeys: ['city'], rowHeight: 40),
        ),
      ),
    );
    // 大阪(奇数id): p1,p3,p5 / 東京(偶数): p2,p4,p6
    expect(find.text('大阪'), findsOneWidget);
    expect(find.text('東京'), findsOneWidget);
    expect(find.text('p5'), findsOneWidget);
    final icon = tester.widget<Icon>(find.byKey(const Key('group.0.0')));
    expect(icon.size, 24);
    expect(icon.icon, Icons.indeterminate_check_box_outlined);
    await tester.tap(find.byKey(const Key('group.0.0')));
    await tester.pump();
    expect(
      tester.widget<Icon>(find.byKey(const Key('group.0.0'))).icon,
      Icons.add_box_outlined,
    );
    expect(find.text('p5'), findsNothing); // 先頭以外は隠れる
    await tester.tap(find.byKey(const Key('group.0.0')));
    await tester.pump();
    expect(find.text('p5'), findsOneWidget);
  });

  testWidgets('子テーブル: アイコンで展開し、フレーム内に子の行を表示', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(3),
          childTable: ChildTableDefinition<TP, TC>(
            arrayGetter: (p) => p.kids,
            columns: [
              ColumnDefinition<TC>(
                key: 'l',
                label: '子',
                getter: (c) => c.label,
              ),
            ],
          ),
        ),
      ),
    );
    expect(find.text('c2-a'), findsNothing);
    await tester.tap(find.byKey(const Key('child.1')));
    await tester.pumpAndSettle();
    expect(find.text('c2-a'), findsOneWidget);
    expect(find.text('c2-b'), findsOneWidget);
    expect(find.text('c1-a'), findsNothing);
    await tester.tap(find.byKey(const Key('child.1')));
    await tester.pumpAndSettle();
    expect(find.text('c2-a'), findsNothing);
  });

  testWidgets('列固定: 固定列は横スクロールしない。キー列が非表示なら左の表示列まで', (tester) async {
    big(tester, size: const Size(800, 600));
    List<ColumnDefinition<TP>> wide({bool hideId = false}) => [
      ColumnDefinition<TP>(
        key: 'a',
        label: 'A',
        getter: (p) => 'a${p.id}',
        width: 200,
      ),
      ColumnDefinition<TP>(
        key: 'id',
        label: 'ID',
        getter: (p) => 'i${p.id}',
        width: 200,
        visible: !hideId,
      ),
      ColumnDefinition<TP>(
        key: 'c',
        label: 'C',
        getter: (p) => 'c${p.id}',
        width: 400,
      ),
      ColumnDefinition<TP>(
        key: 'd',
        label: 'D',
        getter: (p) => 'd${p.id}',
        width: 400,
      ),
    ];
    ScrollPosition hPosition() => tester
        .state<ScrollableState>(
          find
              .descendant(
                of: find.byType(SingleChildScrollView),
                matching: find.byType(Scrollable),
              )
              .first,
        )
        .position;

    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: wide(),
          items: people(2),
          config: const TableConfig(frozenColumnKey: 'id'),
        ),
      ),
    );
    final aX = tester.getTopLeft(find.text('a1')).dx;
    final cX = tester.getTopLeft(find.text('c1')).dx;
    hPosition().jumpTo(300);
    await tester.pump();
    expect(tester.getTopLeft(find.text('a1')).dx, aX);
    expect(tester.getTopLeft(find.text('c1')).dx, lessThan(cX));

    // キー列が非表示: 左の表示列(A)まで固定
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          key: const Key('hidden'),
          columns: wide(hideId: true),
          items: people(2),
          config: const TableConfig(frozenColumnKey: 'id'),
        ),
      ),
    );
    final a2 = tester.getTopLeft(find.text('a1')).dx;
    final c2 = tester.getTopLeft(find.text('c1')).dx;
    hPosition().jumpTo(100);
    await tester.pump();
    expect(tester.getTopLeft(find.text('a1')).dx, a2);
    expect(tester.getTopLeft(find.text('c1')).dx, lessThan(c2));

    // 左に表示列がなければ固定しない(先頭の列も流れる)
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          key: const Key('none'),
          columns: [
            ColumnDefinition<TP>(
              key: 'a',
              label: 'A',
              getter: (p) => 'a${p.id}',
              width: 200,
              visible: false,
            ),
            ...wide().skip(1),
          ],
          items: people(2),
          config: const TableConfig(frozenColumnKey: 'a'),
        ),
      ),
    );
    final c3 = tester.getTopLeft(find.text('i1')).dx;
    hPosition().jumpTo(100);
    await tester.pump();
    expect(tester.getTopLeft(find.text('i1')).dx, lessThan(c3));
  });

  testWidgets('横スクロールバーは常時表示、収まるときは出ない', (tester) async {
    big(tester, size: const Size(400, 600));
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: [
            for (var i = 0; i < 5; i++)
              ColumnDefinition<TP>(
                key: 'c$i',
                label: 'C$i',
                getter: (p) => '$i',
                width: 200,
              ),
          ],
          items: people(2),
        ),
      ),
    );
    expect(find.byType(Scrollbar), findsNWidgets(2)); // 縦+横
    big(tester, size: const Size(1000, 600));
    await tester.pumpWidget(
      host(
        FlgTable<TP>(key: const Key('fit'), columns: cols(), items: people(2)),
      ),
    );
    expect(find.byType(Scrollbar), findsOneWidget); // 縦のみ
  });

  testWidgets('モバイル表示: タイル・検索/並び替えバー、ブレークポイント判定', (tester) async {
    big(tester, size: const Size(400, 700));
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(),
          config: const TableConfig(sortEnabled: true, filterEnabled: true),
          mobileBuilder: (context, p) =>
              ListTile(title: Text('tile ${p.name}')),
        ),
        h: 650,
      ),
    );
    expect(find.text('tile p1'), findsOneWidget);
    expect(find.byKey(const Key('header.id')), findsNothing); // 列ヘッダなし
    await tester.tap(find.byKey(const Key('mobileFilterColumn')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('名前').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('mobileSearch')), 'p3');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(find.text('tile p3'), findsOneWidget);
    expect(find.text('tile p1'), findsNothing);
    await tester.enterText(find.byKey(const Key('mobileSearch')), '');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(find.text('tile p1'), findsOneWidget);
    await tester.tap(find.byKey(const Key('mobileSortColumn')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('ID').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('mobileSortDirection')));
    await tester.pumpAndSettle();
    expect(order(tester, [for (final n in names) 'tile $n']).first, 'tile p6');

    // 広い画面ではテンプレートがあっても表形式
    big(tester, size: const Size(1000, 700));
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          key: const Key('wide'),
          columns: cols(),
          items: people(),
          mobileBuilder: (context, p) => Text('tile ${p.name}'),
        ),
      ),
    );
    expect(find.text('ID'), findsOneWidget);
    // ResponsiveScope の指定が優先される
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: ResponsiveScope(
            notifier: ResponsiveDeviceNotifier(MediaBreakPoint.mobile),
            child: Scaffold(
              body: SizedBox(
                height: 400,
                child: FlgTable<TP>(
                  key: const Key('scope'),
                  columns: cols(),
                  items: people(),
                  mobileBuilder: (context, p) => Text('tile ${p.name}'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    expect(find.text('tile p1'), findsOneWidget);
  });

  testWidgets('エクスポート: コントローラ経由で表示中の行をCSVに', (tester) async {
    big(tester);
    final controller = FlgTableController<TP>();
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: [
            ...cols().take(2),
            ColumnDefinition<TP>(
              key: 'h',
              label: 'H',
              getter: (p) => 'x',
              visible: false,
            ),
          ],
          items: people(2),
          controller: controller,
        ),
      ),
    );
    expect(controller.exportCsv(), '﻿ID,名前\r\n1,p1\r\n2,p2\r\n');
    controller.setFilters(const [
      FilterCondition('id', FilterOperator.eq, [2]),
    ]);
    await tester.pump();
    expect(controller.exportCsv(), '﻿ID,名前\r\n2,p2\r\n');
  });

  testWidgets('セル編集: 選択済みセルの再タップで編集、Enterで確定、イベント通知', (tester) async {
    big(tester);
    final changed = <String>[];
    final items = people(3);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: items,
          rowKey: (p) => p.id,
          config: const TableConfig(cellSelection: true),
          events: TableEvents<TP>(
            onCellChanged: (e) => changed.add('${e.columnKey}=${e.value}'),
          ),
        ),
      ),
    );
    await tester.tap(find.text('p2'));
    await tester.pump(tap400);
    expect(find.byKey(const Key('edit.name')), findsNothing);
    await tester.tap(find.text('p2'));
    await tester.pump(tap400);
    expect(find.byKey(const Key('edit.name')), findsOneWidget);
    await tester.enterText(find.byKey(const Key('edit.name')), '次郎');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(find.text('次郎'), findsOneWidget);
    expect(items[1].name, '次郎');
    expect(changed, ['name=次郎']);

    // setter のない列は編集できない
    await tester.tap(find.text('東京').first);
    await tester.pump(tap400);
    await tester.tap(find.text('東京').first);
    await tester.pump(tap400);
    expect(find.byType(TextField), findsNothing);

    // Enter キーで編集開始
    await tester.tap(find.text('p3'));
    await tester.pump(tap400);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pump();
    expect(find.byKey(const Key('edit.name')), findsOneWidget);
  });

  testWidgets('読み取り専用の列: setter があっても編集できず、表示・ソートは通常どおり', (tester) async {
    big(tester);
    final items = people(3);
    final readOnlyCols = [
      for (final c in cols())
        if (c.key == 'name')
          ColumnDefinition<TP>(
            key: c.key,
            label: c.label,
            getter: c.getter,
            setter: c.setter,
            readOnly: true,
          )
        else
          c,
    ];
    final name = readOnlyCols.firstWhere((c) => c.key == 'name');
    expect(name.setter, isNotNull);
    expect(name.editable, isFalse);
    expect(name.toJson()['readOnly'], isTrue);
    expect(name.toJson()['editable'], isFalse);
    expect(cols().firstWhere((c) => c.key == 'name').editable, isTrue);

    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: readOnlyCols,
          items: items,
          rowKey: (p) => p.id,
          config: const TableConfig(cellSelection: true),
        ),
      ),
    );
    // 再タップ・Enter キーのどちらでも、編集を始めない
    await tester.tap(find.text('p2'));
    await tester.pump(tap400);
    await tester.tap(find.text('p2'));
    await tester.pump(tap400);
    expect(find.byType(TextField), findsNothing);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pump();
    expect(find.byType(TextField), findsNothing);
    expect(items[1].name, 'p2');
    expect(find.text('p2'), findsOneWidget);
  });

  testWidgets('ローディング種別: header/footer/overlay とカスタムサークル', (tester) async {
    big(tester);
    Widget table(LoadingKind k, {Widget? indicator}) => host(
      FlgTable<TP>(
        key: UniqueKey(),
        columns: cols(),
        config: TableConfig(loadingKind: k),
        loadingIndicator: indicator,
        loader: (q) async {
          await Future<void>.delayed(const Duration(seconds: 1));
          return const LoadResult(
            items: [],
            totalCount: 0,
            filteredCount: 0,
            start: 0,
            count: 0,
          );
        },
      ),
    );
    await tester.pumpWidget(table(LoadingKind.header));
    expect(find.text('読み込み中...'), findsOneWidget);
    expect(
      tester.getTopLeft(find.text('読み込み中...')).dy,
      lessThan(tester.getTopLeft(find.text('ID')).dy),
    );
    await tester.pump(const Duration(seconds: 2));

    await tester.pumpWidget(table(LoadingKind.footer));
    expect(
      tester.getTopLeft(find.text('読み込み中...')).dy,
      greaterThan(tester.getTopLeft(find.text('ID')).dy),
    );
    await tester.pump(const Duration(seconds: 2));

    await tester.pumpWidget(table(LoadingKind.overlay));
    expect(find.text('読み込み中...'), findsNothing);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pump(const Duration(seconds: 2));

    await tester.pumpWidget(
      table(LoadingKind.overlay, indicator: const Text('wait')),
    );
    expect(find.text('wait'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsNothing);
    await tester.pump(const Duration(seconds: 2));
  });

  testWidgets('多言語: ラベルを TableLabels で差し替える', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(30),
          labels: const TableLabels(next: 'Next', previous: 'Prev'),
          config: const TableConfig(
            loadMode: LoadMode.pagination,
            pageSize: 10,
          ),
        ),
      ),
    );
    expect(find.text('Next'), findsOneWidget);
    expect(find.text('次へ'), findsNothing);
    expect(
      const TableLabels(
        operators: {FilterOperator.eq: 'Equals'},
      ).operatorLabel(FilterOperator.eq),
      'Equals',
    );
  });

  testWidgets('ページネーションの部品をカスタム登録できる', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(30),
          pagination: PaginationBuilders(
            next: (c, enabled, onTap) => TextButton(
              onPressed: enabled ? onTap : null,
              child: const Text('>>'),
            ),
            page: (c, page, selected, onTap) =>
                TextButton(onPressed: onTap, child: Text('P$page')),
          ),
          config: const TableConfig(
            loadMode: LoadMode.pagination,
            pageSize: 10,
          ),
        ),
      ),
    );
    expect(find.text('>>'), findsOneWidget);
    await tester.tap(find.text('P2'));
    await tester.pump();
    expect(find.text('p11'), findsOneWidget);
  });

  testWidgets('フィルタ: 同じ列に複数条件を適用でき、条件数をアイコンの横に表示', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: cols(),
          items: people(),
          config: const TableConfig(filterEnabled: true),
        ),
      ),
    );
    expect(find.byKey(const Key('filterCount.id')), findsNothing);
    await tester.longPress(find.byKey(const Key('header.id')));
    await tester.pumpAndSettle();
    // 1件目: id >= 2
    await tester.tap(find.byKey(const Key('filterOperator.0')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('以上').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('filterValue1.0')), '2');
    // 2件目: id <= 4
    await tester.tap(find.byKey(const Key('filterAdd')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('filterOperator.1')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('以下').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('filterValue1.1')), '4');
    await tester.tap(find.byKey(const Key('filterApply')));
    await tester.pumpAndSettle();
    expect(order(tester, names), ['p2', 'p3', 'p4']);
    final count = tester.widget<Text>(find.byKey(const Key('filterCount.id')));
    expect(count.data, '2');
    expect(count.style!.fontSize, 14); // フィルタアイコンと同じサイズ
    final icon = tester.getTopLeft(find.byIcon(Icons.filter_alt)).dx;
    expect(
      tester.getTopLeft(find.byKey(const Key('filterCount.id'))).dx,
      greaterThan(icon),
    );

    // 再度開くと2件が復元され、1件削除できる
    await tester.longPress(find.byKey(const Key('header.id')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('filterValue1.1')), findsOneWidget);
    await tester.tap(find.byKey(const Key('filterRemove.1')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('filterApply')));
    await tester.pumpAndSettle();
    expect(order(tester, names), ['p2', 'p3', 'p4', 'p5', 'p6']);
    expect(
      tester.widget<Text>(find.byKey(const Key('filterCount.id'))).data,
      '1',
    );
  });

  testWidgets('セル内の文字位置: 型ごとの標準と指定、overflow', (tester) async {
    big(tester, size: const Size(900, 700)); // 列の合計と同じ幅(按分させない)
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: [
            ColumnDefinition<TP>(
              key: 's',
              label: 'S',
              getter: (p) => 'str',
              width: 200,
            ),
            ColumnDefinition<TP>(
              key: 'n',
              label: 'N',
              getter: (p) => '12',
              type: ColumnType.number,
              width: 200,
            ),
            ColumnDefinition<TP>(
              key: 't',
              label: 'T',
              getter: (p) => '2026-01-01',
              type: ColumnType.time,
              width: 200,
            ),
            ColumnDefinition<TP>(
              key: 'o',
              label: 'O',
              getter: (p) => 'x',
              width: 200,
              textAlign: TextAlign.end,
            ),
            ColumnDefinition<TP>(
              key: 'c',
              label: 'C',
              getter: (p) =>
                  'a very long text that does not fit in the cell width at all',
              width: 100,
              overflow: TextOverflow.fade,
            ),
          ],
          items: people(1),
        ),
      ),
    );
    final left = tester.getTopLeft(find.text('str')).dx;
    final num = tester.getTopRight(find.text('12')).dx;
    final time = tester.getCenter(find.text('2026-01-01')).dx;
    final right = tester.getTopRight(find.text('x')).dx;
    expect(left, closeTo(8, 1)); // 文字列は左寄せ
    expect(num, closeTo(400 - 8, 1)); // 数値は右寄せ
    expect(time, closeTo(500, 1)); // 日付/時間はセンター
    expect(right, closeTo(800 - 8, 1)); // 文字列でも指定すれば右寄せ
    final text = tester.widget<Text>(find.textContaining('a very long'));
    expect(text.overflow, TextOverflow.fade);
    expect(
      tester.widget<Text>(find.text('str')).overflow,
      TextOverflow.ellipsis,
    ); // 既定
    expect(ColumnDefinition.defaultAlign(ColumnType.number), TextAlign.end);
  });

  testWidgets('ローディング: メッセージ+サークルの左右位置', (tester) async {
    big(tester);
    Widget table(HorizontalPlacement p) => host(
      FlgTable<TP>(
        key: UniqueKey(),
        columns: cols(),
        config: TableConfig(loadingAlignment: p),
        loader: (q) async {
          await Future<void>.delayed(const Duration(seconds: 1));
          return const LoadResult(
            items: [],
            totalCount: 0,
            filteredCount: 0,
            start: 0,
            count: 0,
          );
        },
      ),
    );
    final centers = <HorizontalPlacement, double>{};
    for (final p in HorizontalPlacement.values) {
      await tester.pumpWidget(table(p));
      centers[p] = tester.getCenter(find.text('読み込み中...')).dx;
      await tester.pump(const Duration(seconds: 2));
    }
    expect(centers[HorizontalPlacement.left]!, lessThan(200));
    expect(centers[HorizontalPlacement.center]!, closeTo(500, 60));
    expect(centers[HorizontalPlacement.right]!, greaterThan(800));
  });

  group('件数表示', () {
    Widget counted(
      TableConfig config, {
      TableLabels labels = const TableLabels(),
    }) => host(
      FlgTable<TP>(
        key: UniqueKey(),
        columns: cols(),
        items: people(25),
        labels: labels,
        config: config,
      ),
    );

    testWidgets('項目が null のとき、または場所が none のときは表示しない', (tester) async {
      big(tester);
      await tester.pumpWidget(counted(const TableConfig()));
      expect(find.byKey(const Key('countPanel')), findsNothing);
      await tester.pumpWidget(
        counted(
          const TableConfig(
            countItems: [CountItem.total],
            countPosition: CountPosition.none,
          ),
        ),
      );
      expect(find.byKey(const Key('countPanel')), findsNothing);
    });

    testWidgets('標準はヘッダ・右寄せ・横並び(全→フィルタ→読込、スペース区切り)', (tester) async {
      big(tester);
      await tester.pumpWidget(
        counted(
          const TableConfig(
            countItems: [CountItem.loaded, CountItem.filtered, CountItem.total],
            loadMode: LoadMode.pagination,
            pageSize: 10,
          ),
        ),
      );
      expect(find.text('全25件 フィルタ適用25件 読込10件'), findsOneWidget);
      final panel = tester.getRect(find.text('全25件 フィルタ適用25件 読込10件'));
      expect(panel.right, greaterThan(900)); // 右寄せ
      expect(panel.top, lessThan(tester.getTopLeft(find.text('ID')).dy)); // ヘッダ
    });

    testWidgets('フィルタ適用後の件数と読込件数', (tester) async {
      big(tester);
      final controller = FlgTableController<TP>();
      await tester.pumpWidget(
        host(
          FlgTable<TP>(
            columns: cols(),
            items: people(25),
            controller: controller,
            config: const TableConfig(
              countItems: [
                CountItem.total,
                CountItem.filtered,
                CountItem.loaded,
              ],
            ),
          ),
        ),
      );
      expect(find.text('全25件 フィルタ適用25件 読込25件'), findsOneWidget);
      controller.setFilters(const [
        FilterCondition('id', FilterOperator.le, [5]),
      ]);
      await tester.pump();
      expect(find.text('全25件 フィルタ適用5件 読込5件'), findsOneWidget);
    });

    testWidgets('フッター・左寄せ・縦並びと並び順の指定', (tester) async {
      big(tester);
      await tester.pumpWidget(
        counted(
          const TableConfig(
            countItems: [CountItem.total, CountItem.loaded],
            countPosition: CountPosition.footer,
            countAlignment: HorizontalPlacement.left,
            countDirection: CountDirection.vertical,
            countVerticalOrder: [CountItem.loaded, CountItem.total],
          ),
        ),
      );
      final loaded = tester.getTopLeft(find.text('読込25件'));
      final total = tester.getTopLeft(find.text('全25件'));
      expect(loaded.dy, lessThan(total.dy)); // 縦並びの指定順
      expect(loaded.dx, closeTo(total.dx, 1));
      expect(find.text('フィルタ適用25件'), findsNothing); // 指定していない項目
      expect(loaded.dx, lessThan(100)); // 左寄せ
      expect(loaded.dy, greaterThan(tester.getTopLeft(find.text('ID')).dy));
    });

    testWidgets('ローダー: 全件数・フィルタ件数はローダーの値、読込は読み込み済みの件数', (tester) async {
      big(tester);
      await tester.pumpWidget(
        host(
          FlgTable<TP>(
            columns: cols(),
            config: const TableConfig(
              loadMode: LoadMode.pagination,
              pageSize: 10,
              countItems: [
                CountItem.total,
                CountItem.filtered,
                CountItem.loaded,
              ],
              countAlignment: HorizontalPlacement.center,
            ),
            loader: (q) async => LoadResult(
              items: people(10),
              totalCount: 1000,
              filteredCount: 123,
              start: 0,
              count: 10,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final text = find.text('全1000件 フィルタ適用123件 読込10件');
      expect(text, findsOneWidget);
      expect(tester.getCenter(text).dx, closeTo(500, 1));
    });

    testWidgets('多言語: 英語ラベルの件数・ページネーション・フィルタ演算子', (tester) async {
      big(tester);
      await tester.pumpWidget(
        counted(
          const TableConfig(
            countItems: [CountItem.total, CountItem.filtered, CountItem.loaded],
            loadMode: LoadMode.pagination,
            pageSize: 10,
            filterEnabled: true,
          ),
          labels: TableLabels.english,
        ),
      );
      expect(find.text('Total 25 Filtered 25 Loaded 10'), findsOneWidget);
      expect(find.text('Next'), findsOneWidget);
      await tester.longPress(find.byKey(const Key('header.name')));
      await tester.pumpAndSettle();
      expect(find.text('Filter: 名前'), findsOneWidget);
      await tester.tap(find.byKey(const Key('filterOperator.0')));
      await tester.pumpAndSettle();
      expect(find.text('Starts with'), findsWidgets);
      expect(find.text('Add condition'), findsOneWidget);
    });
  });

  testWidgets('列のフィルタ/ソートの有効・無効(filterable/sortable)', (tester) async {
    big(tester);
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: [
            ColumnDefinition<TP>(
              key: 'id',
              label: 'ID',
              getter: (p) => '${p.id}',
              type: ColumnType.number,
              filterable: false, // フィルタ不可(ソートは可)
            ),
            ColumnDefinition<TP>(
              key: 'name',
              label: '名前',
              getter: (p) => p.name,
              sortable: false, // ソート不可(フィルタは可)
            ),
          ],
          items: people(),
          config: const TableConfig(
            sortEnabled: true,
            filterEnabled: true,
            initialFilters: [
              FilterCondition('name', FilterOperator.like, ['%']),
            ],
          ),
        ),
      ),
    );
    // フィルタ不可の列: ポップアップを開かない。ソートはできる
    await tester.longPress(find.byKey(const Key('header.id')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('filterApply')), findsNothing);
    // (長押しの離しもタップとして1回ソートされるため、タップは1回で降順になる)
    await tester.tap(find.byKey(const Key('header.id')));
    await tester.pump();
    expect(order(tester, names), names.reversed.toList());

    // ソート不可の列: タップしても並び替わらない。フィルタは開ける
    await tester.tap(find.byKey(const Key('header.name')));
    await tester.pump();
    expect(order(tester, names), names.reversed.toList());
    expect(find.byIcon(Icons.arrow_upward), findsNothing);
    await tester.longPress(find.byKey(const Key('header.name')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('filterApply')), findsOneWidget);
  });

  testWidgets('モバイルの検索/並び替えバーには無効な列を出さない', (tester) async {
    big(tester, size: const Size(400, 700));
    await tester.pumpWidget(
      host(
        FlgTable<TP>(
          columns: [
            ColumnDefinition<TP>(
              key: 'id',
              label: 'ID',
              getter: (p) => '${p.id}',
              filterable: false,
            ),
            ColumnDefinition<TP>(
              key: 'name',
              label: '名前',
              getter: (p) => p.name,
              sortable: false,
            ),
          ],
          items: people(),
          config: const TableConfig(sortEnabled: true, filterEnabled: true),
          mobileBuilder: (context, p) => Text('tile ${p.name}'),
        ),
        h: 650,
      ),
    );
    await tester.tap(find.byKey(const Key('mobileFilterColumn')));
    await tester.pumpAndSettle();
    expect(find.text('名前'), findsWidgets);
    expect(find.text('ID'), findsNothing); // フィルタ不可の列
    await tester.tap(find.text('名前').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('mobileSortColumn')));
    await tester.pumpAndSettle();
    expect(find.text('ID'), findsWidgets);
    expect(find.text('名前'), findsNWidgets(1)); // ソート不可の列は並び替え候補にない(検索の列名のみ)
  });
}
