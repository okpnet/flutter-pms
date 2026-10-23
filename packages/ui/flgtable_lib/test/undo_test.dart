import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:undo_redo/lib.dart';

import 'table_features_test.dart'
    show TP, big, cols, host, order, people, tap400;

void main() {
  final names = [for (var i = 1; i <= 6; i++) 'p$i'];

  Widget table({
    required List<TP> items,
    TableConfig config = const TableConfig(
      rowActionsEnabled: true,
      cellSelection: true,
    ),
    TableEvents<TP>? events,
    FlgTableController<TP>? controller,
    IUndoStack? stack,
    TableDataLoader<TP>? loader,
  }) => host(
    FlgTable<TP>(
      columns: cols(),
      items: loader == null ? items : null,
      loader: loader,
      rowKey: (p) => p.id,
      config: config,
      events: events,
      controller: controller,
      undoStack: stack,
    ),
  );

  Future<void> menu(WidgetTester tester, String row, String item) async {
    await tester.tap(find.text(row), buttons: kSecondaryButton);
    await tester.pumpAndSettle();
    await tester.tap(find.text(item));
    await tester.pumpAndSettle();
  }

  Future<void> editName(WidgetTester tester, String from, String to) async {
    await tester.tap(find.text(from));
    await tester.pump(tap400);
    await tester.tap(find.text(from));
    await tester.pump(tap400);
    await tester.enterText(find.byKey(const Key('edit.name')), to);
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
  }

  Future<void> ctrl(WidgetTester tester, LogicalKeyboardKey key) async {
    await tester.sendKeyDownEvent(LogicalKeyboardKey.controlLeft);
    await tester.sendKeyEvent(key);
    await tester.sendKeyUpEvent(LogicalKeyboardKey.controlLeft);
    await tester.pumpAndSettle();
  }

  testWidgets(
    'セル編集: 取り消し/やり直しで値が戻り、onUndone/onRedone に値が渡る',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final log = <String>[];
      final items = people(3);
      final controller = FlgTableController<TP>();
      await tester.pumpWidget(
        table(
          items: items,
          controller: controller,
          events: TableEvents<TP>(
            onUndone: (e) =>
                log.add('undo ${e.operation.name} ${e.columnKey}=${e.value}'),
            onRedone: (e) =>
                log.add('redo ${e.operation.name} ${e.columnKey}=${e.value}'),
          ),
        ),
      );
      expect(controller.canUndo, isFalse);
      await editName(tester, 'p2', '次郎');
      expect(items[1].name, '次郎');
      expect(controller.canUndo, isTrue);

      expect(controller.undo(), isTrue);
      await tester.pumpAndSettle();
      expect(items[1].name, 'p2');
      expect(find.text('p2'), findsOneWidget);
      expect(controller.canRedo, isTrue);

      expect(controller.redo(), isTrue);
      await tester.pumpAndSettle();
      expect(items[1].name, '次郎');
      expect(log, ['undo cellEdit name=p2', 'redo cellEdit name=次郎']);
      expect(controller.redo(), isFalse);
    },
  );

  testWidgets(
    '削除: 取り消しで元の位置とフラグ状態に戻り、イベントでアプリへ通知する',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final undone = <String>[];
      final controller = FlgTableController<TP>();
      await tester.pumpWidget(
        table(
          items: people(),
          controller: controller,
          events: TableEvents<TP>(
            onUndone: (e) => undone.add('${e.operation.name}:${e.item.name}'),
          ),
        ),
      );
      await menu(tester, 'p3', 'フラグ');
      await menu(tester, 'p3', '削除');
      expect(find.text('p3'), findsNothing);

      controller.undo();
      await tester.pumpAndSettle();
      // フラグ状態も含めて戻る(フラグ行は先頭)
      expect(order(tester, names), ['p3', 'p1', 'p2', 'p4', 'p5', 'p6']);
      expect(undone, ['delete:p3']);

      controller.redo();
      await tester.pumpAndSettle();
      expect(find.text('p3'), findsNothing);
    },
  );

  testWidgets(
    'フラグ・上下移動の取り消し/やり直し',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final controller = FlgTableController<TP>();
      await tester.pumpWidget(table(items: people(), controller: controller));

      await menu(tester, 'p5', 'フラグ');
      expect(order(tester, names), ['p5', 'p1', 'p2', 'p3', 'p4', 'p6']);
      await menu(tester, 'p2', '下へ');
      expect(order(tester, names), ['p5', 'p1', 'p3', 'p2', 'p4', 'p6']);

      controller.undo(); // 下へ
      await tester.pumpAndSettle();
      expect(order(tester, names), ['p5', 'p1', 'p2', 'p3', 'p4', 'p6']);
      controller.undo(); // フラグ
      await tester.pumpAndSettle();
      expect(order(tester, names), ['p1', 'p2', 'p3', 'p4', 'p5', 'p6']);
      controller.redo();
      controller.redo();
      await tester.pumpAndSettle();
      expect(order(tester, names), ['p5', 'p1', 'p3', 'p2', 'p4', 'p6']);
    },
  );

  testWidgets(
    'キーボード: Ctrl+Z で取り消し、Ctrl+Y / Ctrl+Shift+Z でやり直し',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      await tester.pumpWidget(table(items: people()));
      await menu(tester, 'p2', '削除');
      expect(find.text('p2'), findsNothing);

      await ctrl(tester, LogicalKeyboardKey.keyZ);
      expect(find.text('p2'), findsOneWidget);
      await ctrl(tester, LogicalKeyboardKey.keyY);
      expect(find.text('p2'), findsNothing);

      await ctrl(tester, LogicalKeyboardKey.keyZ);
      expect(find.text('p2'), findsOneWidget);
      await tester.sendKeyDownEvent(LogicalKeyboardKey.controlLeft);
      await tester.sendKeyDownEvent(LogicalKeyboardKey.shiftLeft);
      await tester.sendKeyEvent(LogicalKeyboardKey.keyZ);
      await tester.sendKeyUpEvent(LogicalKeyboardKey.shiftLeft);
      await tester.sendKeyUpEvent(LogicalKeyboardKey.controlLeft);
      await tester.pumpAndSettle();
      expect(find.text('p2'), findsNothing);
    },
  );

  testWidgets(
    'undoEnabled=false: 履歴を積まず、Ctrl+Z も効かない',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final controller = FlgTableController<TP>();
      await tester.pumpWidget(
        table(
          items: people(),
          controller: controller,
          config: const TableConfig(rowActionsEnabled: true, undoEnabled: false),
        ),
      );
      await menu(tester, 'p2', '削除');
      expect(controller.canUndo, isFalse);
      await ctrl(tester, LogicalKeyboardKey.keyZ);
      expect(find.text('p2'), findsNothing);
    },
  );

  testWidgets(
    '履歴の上限: undoLimit を超えた古い操作は取り消せない',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final controller = FlgTableController<TP>();
      await tester.pumpWidget(
        table(
          items: people(),
          controller: controller,
          config: const TableConfig(rowActionsEnabled: true, undoLimit: 2),
        ),
      );
      await menu(tester, 'p1', '削除');
      await menu(tester, 'p2', '削除');
      await menu(tester, 'p3', '削除');
      expect(controller.undo(), isTrue);
      expect(controller.undo(), isTrue);
      expect(controller.undo(), isFalse);
      await tester.pumpAndSettle();
      expect(find.text('p1'), findsNothing); // 最初の削除は取り消せない
      expect(find.text('p2'), findsOneWidget);
      expect(find.text('p3'), findsOneWidget);
    },
  );

  testWidgets(
    '履歴の共有: 渡した IUndoStack に積まれ、再読み込みでも消さない',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final stack = UndoStack();
      final controller = FlgTableController<TP>();
      await tester.pumpWidget(
        table(items: people(), controller: controller, stack: stack),
      );
      await menu(tester, 'p2', '削除');
      expect(stack.isUndo, isTrue);
      await controller.reload();
      await tester.pumpAndSettle();
      expect(stack.isUndo, isTrue);
    },
  );

  testWidgets(
    '再読み込み: テーブルが持つ履歴は消える',
    variant: TargetPlatformVariant.only(TargetPlatform.windows),
    (tester) async {
      big(tester);
      final controller = FlgTableController<TP>();
      await tester.pumpWidget(table(items: people(), controller: controller));
      await menu(tester, 'p2', '削除');
      expect(controller.canUndo, isTrue);
      await controller.reload();
      await tester.pumpAndSettle();
      expect(controller.canUndo, isFalse);
    },
  );

  testWidgets('TableConfig の undo 設定はJSONで往復できる', (tester) async {
    const config = TableConfig(undoEnabled: false, undoLimit: 7);
    final restored = TableConfig.fromJson(config.toJson());
    expect(restored.undoEnabled, isFalse);
    expect(restored.undoLimit, 7);
    expect(TableConfig.fromJson({'undoLimit': 0}).undoLimit, 100);
  });
}
