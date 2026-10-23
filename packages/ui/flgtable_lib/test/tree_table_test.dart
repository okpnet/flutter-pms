import 'package:flgtable_lib/tree_table_lib.dart';
import 'package:flgtable_lib/tree/tree_line_painter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'table_features_test.dart' show big, host, order;

class N {
  N(this.id, this.name, this.parent);
  final int id;
  final String name;
  int? parent;
}

/// root1(a(aa), b, c) / root2(x) / root3
List<N> data() => [
  N(1, 'root1', null),
  N(2, 'root2', null),
  N(3, 'root3', null),
  N(11, 'a', 1),
  N(12, 'b', 1),
  N(13, 'c', 1),
  N(111, 'aa', 11),
  N(21, 'x', 2),
];

List<ColumnDefinition<N>> ncols({List<N>? source}) => [
  ColumnDefinition<N>(key: 'name', label: '名前', getter: (n) => n.name),
  ColumnDefinition<N>(key: 'id', label: 'ID', getter: (n) => '${n.id}'),
  if (source != null)
    ColumnDefinition<N>(
      key: 'kids',
      label: '子',
      getter: (n) => '${source.where((c) => c.parent == n.id).length}',
    ),
];

const unit = 28.0; // 2文字 × 14px(テストのフォントは1文字=文字サイズ)

void main() {
  late List<N> items;
  late StaticTreeSource<N> src;
  late List<String> calls;

  setUp(() {
    items = data();
    src = StaticTreeSource<N>(
      items: items,
      columns: ncols(),
      key: (n) => n.id,
      parentKey: (n) => n.parent,
    );
    calls = [];
  });

  TreeChildrenLoader<N> loader({Duration? delay}) => (q) async {
    calls.add(
      '${(q.parent as N?)?.name ?? 'root'}:${q.start}:${q.count}'
      '${q.flatten ? ':flat' : ''}',
    );
    if (delay != null) await Future<void>.delayed(delay);
    return src.load(q);
  };

  Widget tree({
    TreeChildrenLoader<N>? treeLoader,
    TreeConfig treeConfig = const TreeConfig(),
    TableConfig config = const TableConfig(),
    TableEvents<N>? events,
    FlgTableController<N>? controller,
    TreeCycleChecker<N>? checker,
    List<ColumnDefinition<N>>? columns,
    ValueKey<String>? key,
  }) => host(
    TreeTable<N>(
      key: key,
      columns: columns ?? ncols(),
      treeLoader: treeLoader ?? loader(),
      rowKey: (n) => n.id,
      treeConfig: treeConfig,
      config: config,
      events: events,
      controller: controller,
      cycleChecker: checker,
    ),
  );

  Future<void> toggle(WidgetTester tester, int id) async {
    await tester.tap(find.byKey(Key('tree.toggle.$id')));
    await tester.pumpAndSettle();
  }

  String glyph(WidgetTester tester, int id) =>
      tester.widget<Text>(find.byKey(Key('tree.icon.$id'))).data!;

  double dx(WidgetTester tester, String name) =>
      tester.getTopLeft(find.text(name)).dx;

  Future<void> drag(WidgetTester tester, String from, Offset to) async {
    final g = await tester.startGesture(
      tester.getCenter(find.text(from)),
      kind: PointerDeviceKind.mouse,
    );
    await g.moveBy(const Offset(40, 0));
    await g.moveTo(to);
    await tester.pump();
    await g.up();
    await tester.pumpAndSettle();
  }

  /// ドロップ先の行の子にする位置(行の右の方)。
  Offset child(WidgetTester tester, String target) =>
      Offset(400, tester.getCenter(find.text(target)).dy);

  /// ドロップ先の行の左端付近(同じレベルにする位置)。
  Offset sibling(WidgetTester tester, String target) =>
      Offset(5, tester.getCenter(find.text(target)).dy);

  group('表示と読み込み', () {
    testWidgets('トップノードだけ表示し、子は展開するまで読み込まない', (tester) async {
      big(tester);
      await tester.pumpWidget(tree());
      await tester.pumpAndSettle();
      expect(order(tester, ['root1', 'root2', 'root3']), [
        'root1',
        'root2',
        'root3',
      ]);
      expect(find.text('a'), findsNothing);
      expect(calls, ['root:0:50']);
      expect([for (final id in [1, 2, 3]) glyph(tester, id)], ['▶', '▶', '▶']);
    });

    testWidgets('展開で子を読み込み、アイコンが▼に。再展開では読み込まない', (tester) async {
      big(tester);
      await tester.pumpWidget(tree());
      await tester.pumpAndSettle();
      await toggle(tester, 1);
      expect(calls, ['root:0:50', 'root1:0:50']);
      expect(order(tester, ['root1', 'a', 'b', 'c', 'root2']), [
        'root1',
        'a',
        'b',
        'c',
        'root2',
      ]);
      expect(glyph(tester, 1), '▼');
      await toggle(tester, 1); // 縮小
      expect(find.text('a'), findsNothing);
      expect(glyph(tester, 1), '▶');
      await toggle(tester, 1); // 再展開
      expect(find.text('a'), findsOneWidget);
      expect(calls.length, 2);
    });

    testWidgets('子のレベルに応じてインデント(1レベル=2文字、設定で変更)', (tester) async {
      big(tester);
      await tester.pumpWidget(tree());
      await tester.pumpAndSettle();
      await toggle(tester, 1);
      await toggle(tester, 11);
      expect(dx(tester, 'a') - dx(tester, 'root1'), closeTo(unit, 1));
      expect(dx(tester, 'aa') - dx(tester, 'a'), closeTo(unit, 1));

      await tester.pumpWidget(
        tree(
          treeConfig: const TreeConfig(indentChars: 3),
          key: const ValueKey('again'),
        ),
      );
      await tester.pumpAndSettle();
      await toggle(tester, 1);
      expect(dx(tester, 'a') - dx(tester, 'root1'), closeTo(unit * 1.5, 1));
    });

    testWidgets('子が0のとき▷。展開した結果0件でも▷になり、再度は読み込まない', (tester) async {
      big(tester);
      await tester.pumpWidget(tree());
      await tester.pumpAndSettle();
      await toggle(tester, 2);
      expect(glyph(tester, 21), '▶'); // 内部の標準値は1
      await toggle(tester, 21);
      expect(glyph(tester, 21), '▷'); // 読み込んだら0件
      final before = calls.length;
      await toggle(tester, 21);
      expect(calls.length, before);
    });

    testWidgets('子の数の列を指定すると、0なら読み込まず▷', (tester) async {
      big(tester);
      await tester.pumpWidget(
        tree(
          columns: ncols(source: items),
          treeConfig: const TreeConfig(childCountColumnKey: 'kids'),
        ),
      );
      await tester.pumpAndSettle();
      expect(glyph(tester, 1), '▶');
      expect(glyph(tester, 3), '▷'); // root3 は子なし
      await toggle(tester, 3);
      expect(calls, ['root:0:50']);
    });

    testWidgets('展開中は「サークル+読み込み中」を表示する', (tester) async {
      big(tester);
      await tester.pumpWidget(
        tree(treeLoader: loader(delay: const Duration(seconds: 1))),
      );
      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('tree.toggle.1')));
      await tester.pump(const Duration(milliseconds: 100));
      expect(find.byKey(const Key('tree.loading.1')), findsOneWidget);
      expect(find.byKey(const Key('tree.loadingRow.1')), findsOneWidget);
      expect(find.text('読み込み中...'), findsOneWidget);
      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('tree.loading.1')), findsNothing);
      expect(find.byKey(const Key('tree.loadingRow.1')), findsNothing);
      expect(find.text('a'), findsOneWidget);
    });

    testWidgets('最大行数を超える子は「もっと読み込む」(同じレベルの末尾)', (tester) async {
      big(tester);
      await tester.pumpWidget(
        tree(config: const TableConfig(pageSize: 2)),
      );
      await tester.pumpAndSettle();
      // トップノードも最大2行。続きは末尾の「もっと読み込む」
      expect(find.text('root3'), findsNothing);
      expect(find.byKey(const Key('tree.more.root')), findsOneWidget);
      await tester.tap(find.byKey(const Key('tree.more.root')));
      await tester.pumpAndSettle();
      expect(find.text('root3'), findsOneWidget);
      expect(find.byKey(const Key('tree.more.root')), findsNothing);

      await toggle(tester, 1); // 子は3件、最大2行
      expect(find.text('c'), findsNothing);
      expect(find.text('もっと読み込む'), findsOneWidget);
      // インデントは同じ親の子と同じ
      expect(
        dx(tester, 'もっと読み込む'),
        closeTo(dx(tester, 'a'), 1),
      );
      await tester.tap(find.byKey(const Key('tree.more.1')));
      await tester.pumpAndSettle();
      expect(find.text('c'), findsOneWidget);
      expect(find.text('もっと読み込む'), findsNothing);
      expect(calls.last, 'root1:2:2');
    });

    testWidgets('再読み込みで全て縮小する', (tester) async {
      big(tester);
      final controller = FlgTableController<N>();
      await tester.pumpWidget(tree(controller: controller));
      await tester.pumpAndSettle();
      await toggle(tester, 1);
      expect(find.text('a'), findsOneWidget);
      await controller.reload();
      await tester.pumpAndSettle();
      expect(find.text('a'), findsNothing);
      expect(glyph(tester, 1), '▶');
    });

    testWidgets('読み込みに失敗しても例外にならず、縮小したまま', (tester) async {
      big(tester);
      var fail = false;
      await tester.pumpWidget(
        tree(
          treeLoader: (q) async {
            if (fail) throw StateError('ng');
            return src.load(q);
          },
        ),
      );
      await tester.pumpAndSettle();
      fail = true;
      await toggle(tester, 1);
      expect(tester.takeException(), isNull);
      expect(glyph(tester, 1), '▶');
    });
  });

  group('関係線', () {
    final painters = find.byWidgetPredicate(
      (w) => w is CustomPaint && w.painter is TreeLinePainter,
    );

    testWidgets('表示/非表示、線種と太さを設定できる', (tester) async {
      big(tester);
      await tester.pumpWidget(
        tree(
          treeConfig: const TreeConfig(
            lineStyle: TreeLineStyle.dashed,
            lineWidth: 3,
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(painters, findsNothing); // トップノードには線がない
      await toggle(tester, 1);
      expect(painters, findsWidgets);
      final painter =
          tester.widget<CustomPaint>(painters.first).painter! as TreeLinePainter;
      expect(painter.style, TreeLineStyle.dashed);
      expect(painter.width, 3);

      await tester.pumpWidget(
        tree(
          treeConfig: const TreeConfig(showLines: false),
          key: const ValueKey('nolines'),
        ),
      );
      await tester.pumpAndSettle();
      await toggle(tester, 1);
      expect(painters, findsNothing);
    });

    testWidgets('太さの指定がなければテーマの値(BorderField)に従う', (tester) async {
      big(tester);
      await tester.pumpWidget(tree());
      await tester.pumpAndSettle();
      await toggle(tester, 1);
      final painter =
          tester.widget<CustomPaint>(painters.first).painter! as TreeLinePainter;
      expect(painter.width, 1); // 既定のテーマには BorderField が無いので標準値
      expect(painter.style, TreeLineStyle.solid);
    });

    test('最後の兄弟でなければ縦線を通す(描画の再描画判定)', () {
      TreeLinePainter p(List<bool> flags) => TreeLinePainter(
        lastFlags: flags,
        unit: 16,
        iconBox: 26,
        color: Colors.black,
        width: 1,
        style: TreeLineStyle.solid,
      );
      expect(p([false, true]).shouldRepaint(p([false, true])), isFalse);
      expect(p([false, true]).shouldRepaint(p([true, true])), isTrue);
    });
  });

  group('フィルタ・ソート', () {
    testWidgets('フィルタ: ヒットした行は階層に関係なく全てトップノード、展開は解除', (tester) async {
      big(tester);
      final controller = FlgTableController<N>();
      await tester.pumpWidget(tree(controller: controller));
      await tester.pumpAndSettle();
      final topDx = dx(tester, 'root1');
      await toggle(tester, 1);
      await toggle(tester, 11);
      expect(find.text('aa'), findsOneWidget);

      controller.setFilters(const [
        FilterCondition('name', FilterOperator.like, ['a%']),
      ]);
      await tester.pumpAndSettle();
      expect(calls.last, 'root:0:50:flat');
      expect(order(tester, ['a', 'aa']), ['a', 'aa']);
      expect(dx(tester, 'a'), closeTo(topDx, 1));
      expect(dx(tester, 'aa'), closeTo(topDx, 1)); // 孫も同じレベル
      expect(find.text('root1'), findsNothing);

      controller.setFilters(const []);
      await tester.pumpAndSettle();
      expect(find.text('root1'), findsOneWidget);
      expect(find.text('a'), findsNothing); // 解除後は縮小した通常の木
    });

    testWidgets('ソート: 条件をローダーに渡し、トップノードが並び替わる', (tester) async {
      big(tester);
      final controller = FlgTableController<N>();
      await tester.pumpWidget(tree(controller: controller));
      await tester.pumpAndSettle();
      controller.setSort(const SortCondition('name', ascending: false));
      await tester.pumpAndSettle();
      expect(order(tester, ['root1', 'root2', 'root3']), [
        'root3',
        'root2',
        'root1',
      ]);
    });
  });

  group('ドラッグドロップ(親の変更)', () {
    const dnd = TableConfig(dragEnabled: true);

    TableEvents<N> events(List<String> log, {bool cancel = false}) =>
        TableEvents<N>(
          onBeforeParentChange: (e) {
            log.add('before ${e.item.name}->${e.newParent?.name}');
            e.cancel = cancel;
          },
          onAfterParentChange: (e) {
            log.add('after ${e.item.name}->${e.newParent?.name}');
            e.item.parent = e.newParent?.id; // データの更新はアプリ側
          },
        );

    testWidgets(
      '行の右側へドロップ: ドロップ先の子になる(未展開なら子の数だけ更新)',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        final log = <String>[];
        await tester.pumpWidget(tree(config: dnd, events: events(log)));
        await tester.pumpAndSettle();
        await toggle(tester, 1);
        await drag(tester, 'c', child(tester, 'root2'));
        expect(log, ['before c->root2', 'after c->root2']);
        expect(find.text('c'), findsNothing); // root1 の子ではなくなった
        expect(find.text('x'), findsNothing); // root2 は展開しない
        await toggle(tester, 2);
        expect(order(tester, ['root2', 'x', 'c']), ['root2', 'c', 'x']);
      },
    );

    testWidgets(
      '親の左端付近へドロップ: ドロップ先と同じレベル(親がなければトップノード)',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        final log = <String>[];
        await tester.pumpWidget(tree(config: dnd, events: events(log)));
        await tester.pumpAndSettle();
        final topDx = dx(tester, 'root1');
        await toggle(tester, 1);
        await toggle(tester, 11);
        // aa(a の子)を b の左端へ → b と同じ親(root1)の子
        await drag(tester, 'aa', sibling(tester, 'b'));
        expect(log.last, 'after aa->root1');
        expect(dx(tester, 'aa'), closeTo(dx(tester, 'b'), 1));
        expect(
          order(tester, ['root1', 'a', 'b', 'c', 'aa']),
          ['root1', 'a', 'b', 'c', 'aa'],
        );
        // c を root2(トップ)の左端へ → 親なし=トップノード
        await drag(tester, 'c', sibling(tester, 'root2'));
        expect(log.last, 'after c->null');
        expect(dx(tester, 'c'), closeTo(topDx, 1));
        expect(
          order(tester, ['root1', 'a', 'b', 'aa', 'root2', 'root3', 'c']),
          ['root1', 'a', 'b', 'aa', 'root2', 'root3', 'c'],
        );
      },
    );

    testWidgets(
      'ドラッグオーバー中は、ドロップ先の行の背景色が変わる',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        await tester.pumpWidget(tree(config: dnd));
        await tester.pumpAndSettle();
        final g = await tester.startGesture(
          tester.getCenter(find.text('root1')),
          kind: PointerDeviceKind.mouse,
        );
        await g.moveBy(const Offset(40, 0));
        await g.moveTo(child(tester, 'root2'));
        await tester.pump();
        expect(find.byKey(const Key('tree.drop.child')), findsOneWidget);
        await g.moveTo(sibling(tester, 'root3'));
        await tester.pump();
        // 親が同じ(どちらもトップ)ので変化なし → 背景色なし
        expect(find.byKey(const Key('tree.drop.sibling')), findsNothing);
        expect(find.byKey(const Key('tree.drop.child')), findsNothing);
        await g.up();
        await tester.pumpAndSettle();
      },
    );

    testWidgets(
      '自分の子孫の上へは移動できない(循環): 通知して変更しない',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        final log = <String>[];
        await tester.pumpWidget(tree(config: dnd, events: events(log)));
        await tester.pumpAndSettle();
        await toggle(tester, 1);
        await toggle(tester, 11);
        await drag(tester, 'root1', child(tester, 'aa'));
        expect(log, isEmpty);
        expect(find.text('子孫の下には移動できません'), findsOneWidget);
        expect(find.text('aa'), findsOneWidget);
        expect(dx(tester, 'root1'), lessThan(dx(tester, 'a')));
        // 自分自身の上: 何も起きない
        await tester.pump(const Duration(seconds: 5));
        await drag(tester, 'b', child(tester, 'b'));
        expect(log, isEmpty);
      },
    );

    testWidgets(
      '親変更前イベントでキャンセルできる',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        final log = <String>[];
        await tester.pumpWidget(
          tree(config: dnd, events: events(log, cancel: true)),
        );
        await tester.pumpAndSettle();
        await toggle(tester, 1);
        await drag(tester, 'c', child(tester, 'root2'));
        expect(log, ['before c->root2']); // 変更後は通知されない
        expect(find.text('c'), findsOneWidget);
        expect(items.firstWhere((n) => n.id == 13).parent, 1);
      },
    );

    testWidgets(
      '取り消し/やり直し: 元の親・位置へ戻り、onUndone に親が渡る',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        final log = <String>[];
        final undone = <String>[];
        final controller = FlgTableController<N>();
        await tester.pumpWidget(
          tree(
            config: dnd,
            controller: controller,
            events: TableEvents<N>(
              onUndone: (e) =>
                  undone.add('undo ${e.operation.name} ${e.parent?.name}'),
              onRedone: (e) =>
                  undone.add('redo ${e.operation.name} ${e.parent?.name}'),
              onAfterParentChange: (e) => log.add('after'),
            ),
          ),
        );
        await tester.pumpAndSettle();
        await toggle(tester, 1);
        await drag(tester, 'a', child(tester, 'root2'));
        expect(find.text('a'), findsNothing);

        controller.undo();
        await tester.pumpAndSettle();
        expect(order(tester, ['root1', 'a', 'b', 'c']), [
          'root1',
          'a',
          'b',
          'c',
        ]);
        controller.redo();
        await tester.pumpAndSettle();
        expect(find.text('a'), findsNothing);
        expect(undone, ['undo parentChange root1', 'redo parentChange root2']);
      },
    );

    testWidgets(
      'フィルタ有効時: 判定デリゲートがなければドラッグできない',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        final log = <String>[];
        final controller = FlgTableController<N>();
        await tester.pumpWidget(
          tree(config: dnd, events: events(log), controller: controller),
        );
        await tester.pumpAndSettle();
        controller.setFilters(const [
          FilterCondition('name', FilterOperator.like, ['a%']),
        ]);
        await tester.pumpAndSettle();
        await drag(tester, 'aa', child(tester, 'a'));
        expect(log, isEmpty);
      },
    );

    testWidgets(
      'フィルタ有効時: 判定デリゲートはドロップ時に1回だけ呼ばれ、循環なら拒否',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        final log = <String>[];
        var checks = 0;
        final controller = FlgTableController<N>();
        await tester.pumpWidget(
          tree(
            config: dnd,
            events: events(log),
            controller: controller,
            checker: (node, newParent) {
              checks++;
              return src.isDescendant(node, newParent);
            },
          ),
        );
        await tester.pumpAndSettle();
        controller.setFilters(const [
          FilterCondition('name', FilterOperator.like, ['a%']),
        ]);
        await tester.pumpAndSettle();
        expect(checks, 0); // ホバー中は呼ばない

        // a を aa の下へ: aa は a の子孫 → 拒否
        await drag(tester, 'a', child(tester, 'aa'));
        expect(checks, 1);
        expect(log, isEmpty);
        expect(find.text('子孫の下には移動できません'), findsOneWidget);
        await tester.pump(const Duration(seconds: 5));

        // aa を a の下へ(すでに子だが判定は通る): 許可
        await drag(tester, 'aa', child(tester, 'a'));
        expect(checks, 2);
        expect(log, ['before aa->a', 'after aa->a']);
      },
    );

    testWidgets(
      '判定デリゲートが例外のときは安全側で拒否する',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        final log = <String>[];
        final controller = FlgTableController<N>();
        await tester.pumpWidget(
          tree(
            config: dnd,
            events: events(log),
            controller: controller,
            checker: (node, newParent) async => throw StateError('ng'),
          ),
        );
        await tester.pumpAndSettle();
        controller.setFilters(const [
          FilterCondition('name', FilterOperator.like, ['a%']),
        ]);
        await tester.pumpAndSettle();
        await drag(tester, 'aa', child(tester, 'a'));
        expect(log, isEmpty);
        expect(find.text('子孫の下には移動できません'), findsOneWidget);
      },
    );

    testWidgets('データが既に循環していても、展開で無限に深くならない', (tester) async {
      big(tester);
      final loop = [N(1, 'p', 2), N(2, 'q', 1)]; // p↔q が互いの親
      final cyc = StaticTreeSource<N>(
        items: loop,
        columns: ncols(),
        key: (n) => n.id,
        parentKey: (n) => n.parent,
      );
      // 全行が誰かの子なので、トップは空。ローダーが p をトップとして返す想定。
      await tester.pumpWidget(
        tree(
          treeLoader: (q) async {
            if (q.parent == null) {
              return LoadResult(
                items: [loop[0]],
                totalCount: 2,
                filteredCount: 1,
                start: 0,
                count: 1,
              );
            }
            return cyc.load(q);
          },
        ),
      );
      await tester.pumpAndSettle();
      await toggle(tester, 1); // p の子 = q
      expect(find.text('q'), findsOneWidget);
      await toggle(tester, 2); // q の子 = p(祖先と同じキー)は追加しない
      expect(find.text('p'), findsOneWidget);
      expect(glyph(tester, 2), '▷');
    });

    test('StaticTreeSource.isDescendant: 子孫・非子孫・循環データ', () async {
      expect(await src.isDescendant(items[0], items[6]), isTrue); // aa は root1 の子孫
      expect(await src.isDescendant(items[6], items[0]), isFalse);
      expect(await src.isDescendant(items[1], items[3]), isFalse);
      final loop = StaticTreeSource<N>(
        items: [N(1, 'p', 2), N(2, 'q', 1), N(3, 'r', null)],
        columns: ncols(),
        key: (n) => n.id,
        parentKey: (n) => n.parent,
      );
      expect(await loop.isDescendant(N(3, 'r', null), N(1, 'p', 2)), isTrue);
    });
  });

  group('行操作・取り消し', () {
    testWidgets(
      '削除と取り消し: 元の位置に戻る。上下移動はメニューにない',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        final controller = FlgTableController<N>();
        await tester.pumpWidget(
          tree(
            controller: controller,
            config: const TableConfig(rowActionsEnabled: true),
          ),
        );
        await tester.pumpAndSettle();
        await toggle(tester, 1);
        await tester.tap(find.text('b'), buttons: kSecondaryButton);
        await tester.pumpAndSettle();
        expect(find.text('上へ'), findsNothing);
        expect(find.text('下へ'), findsNothing);
        await tester.tap(find.text('削除'));
        await tester.pumpAndSettle();
        expect(find.text('b'), findsNothing);

        controller.undo();
        await tester.pumpAndSettle();
        expect(order(tester, ['root1', 'a', 'b', 'c']), [
          'root1',
          'a',
          'b',
          'c',
        ]);
      },
    );

    testWidgets(
      'フラグは旗の印だけで、並びは変わらない',
      variant: TargetPlatformVariant.only(TargetPlatform.windows),
      (tester) async {
        big(tester);
        await tester.pumpWidget(
          tree(config: const TableConfig(rowActionsEnabled: true)),
        );
        await tester.pumpAndSettle();
        await tester.tap(find.text('root3'), buttons: kSecondaryButton);
        await tester.pumpAndSettle();
        await tester.tap(find.text('フラグ'));
        await tester.pumpAndSettle();
        expect(find.byIcon(Icons.flag), findsOneWidget);
        expect(order(tester, ['root1', 'root2', 'root3']), [
          'root1',
          'root2',
          'root3',
        ]);
      },
    );

    testWidgets('CSV出力は表示中の行(内部の子数列は含まない)', (tester) async {
      big(tester);
      final controller = FlgTableController<N>();
      await tester.pumpWidget(tree(controller: controller));
      await tester.pumpAndSettle();
      await toggle(tester, 1);
      expect(
        controller.exportCsv(),
        '﻿名前,ID\r\nroot1,1\r\na,11\r\nb,12\r\nc,13\r\nroot2,2\r\nroot3,3\r\n',
      );
    });
  });

  group('設定', () {
    test('TreeConfig はJSONで往復でき、不正値は標準値になる', () {
      const config = TreeConfig(
        indentChars: 4,
        showLines: false,
        lineStyle: TreeLineStyle.dotted,
        lineWidth: 2,
        childCountColumnKey: 'kids',
      );
      expect(TreeConfig.fromJson(config.toJson()).toJson(), config.toJson());
      final d = TreeConfig.fromJson({
        'indentChars': 0,
        'showLines': 'x',
        'lineStyle': '?',
        'lineWidth': -1,
        'childCountColumnKey': 3,
      });
      expect(d.toJson(), const TreeConfig().toJson());
      expect(const TreeConfig().indentChars, 2);
    });

    testWidgets('インデントは1以上(0はアサーション)', (tester) async {
      expect(() => TreeConfig(indentChars: 0), throwsAssertionError);
    });

    testWidgets('TreeTable もテーマ・ラベルを共通部分として使える(英語)', (tester) async {
      big(tester);
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: TreeTable<N>(
                columns: ncols(),
                treeLoader: loader(),
                rowKey: (n) => n.id,
                config: const TableConfig(pageSize: 2),
                labels: TableLabels.english,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Load more'), findsOneWidget);
    });
  });
}
