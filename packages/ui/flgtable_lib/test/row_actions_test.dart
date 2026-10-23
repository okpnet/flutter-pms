import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'table_features_test.dart' show TP, big, cols, host, people;

void main() {
  group('エクスポート可否', () {
    test('exportable が偽の列と非表示の列は出力しない', () {
      final columns = [
        ColumnDefinition<TP>(key: 'id', label: 'ID', getter: (p) => '${p.id}'),
        ColumnDefinition<TP>(
          key: 'secret',
          label: '秘密',
          getter: (p) => 's',
          exportable: false,
        ),
        ColumnDefinition<TP>(
          key: 'hidden',
          label: '隠し',
          getter: (p) => 'h',
          visible: false,
        ),
        ColumnDefinition<TP>(key: 'name', label: '名前', getter: (p) => p.name),
      ];
      expect(
        CsvExporter.export(columns, people(1)),
        '﻿ID,名前\r\n1,p1\r\n',
      );
      expect(columns[1].toJson()['exportable'], false);
    });
  });

  group('行スライドのタイル', () {
    Widget table({List<TP>? deleted, int rowHeight = 30}) => host(
      FlgTable<TP>(
        columns: cols(),
        items: people(),
        rowKey: (p) => p.id,
        config: TableConfig(
          rowActionsEnabled: true,
          rowHeight: rowHeight.toDouble(),
        ),
        events: TableEvents<TP>(onAfterDelete: (p) => deleted?.add(p)),
      ),
    );

    testWidgets('タブレット幅: 右スライドで正方形のタイル(削除・フラグ)を表示', (tester) async {
      big(tester, size: const Size(900, 700));
      await tester.pumpWidget(table(rowHeight: 48));
      await tester.drag(find.text('p2'), const Offset(120, 0));
      await tester.pumpAndSettle();
      final del = tester.getSize(find.byKey(const Key('rowAction.delete')));
      final flag = tester.getSize(find.byKey(const Key('rowAction.flag')));
      expect(del, const Size(48, 48));
      expect(flag, const Size(48, 48));
      // 上下移動・閉じるボタンはタイルに含めない
      expect(find.byKey(const Key('rowAction.up')), findsNothing);
      expect(find.byKey(const Key('rowAction.down')), findsNothing);
      expect(find.byKey(const Key('rowAction.close')), findsNothing);
    });

    testWidgets('行が低くてもタイルはタッチの最小サイズ(40)を確保する', (tester) async {
      big(tester, size: const Size(900, 700));
      await tester.pumpWidget(table(rowHeight: 24));
      await tester.drag(find.text('p2'), const Offset(120, 0));
      await tester.pumpAndSettle();
      expect(
        tester.getSize(find.byKey(const Key('rowAction.delete'))),
        const Size(40, 40),
      );
    });

    testWidgets('タイルの色: 削除は error、フラグは primary(テーマに追従)', (tester) async {
      big(tester, size: const Size(900, 700));
      await tester.pumpWidget(table());
      await tester.drag(find.text('p2'), const Offset(120, 0));
      await tester.pumpAndSettle();
      final scheme = Theme.of(
        tester.element(find.byKey(const Key('rowAction.delete'))),
      ).colorScheme;
      Color colorOf(String id) => tester
          .widget<Material>(
            find.ancestor(
              of: find.byKey(Key('rowAction.$id')),
              matching: find.byType(Material),
            ).first,
          )
          .color!;
      expect(colorOf('delete'), scheme.error);
      expect(colorOf('flag'), scheme.primary);
    });

    testWidgets('フラグタイル: 付けると旗が塗りつぶし・ツールチップが解除に変わる', (tester) async {
      big(tester, size: const Size(900, 700));
      await tester.pumpWidget(table());
      await tester.drag(find.text('p2'), const Offset(120, 0));
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.flag_outlined), findsOneWidget);
      await tester.tap(find.byKey(const Key('rowAction.flag')));
      await tester.pumpAndSettle();
      // フラグ後はタイルが閉じ、フラグ行は先頭に固定される
      expect(find.byKey(const Key('rowAction.flag')), findsNothing);
      await tester.drag(find.text('p2'), const Offset(120, 0));
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.flag), findsWidgets);
      expect(find.byTooltip('フラグ解除'), findsOneWidget);
    });

    testWidgets('削除タイル: 削除後イベントを通知する', (tester) async {
      big(tester, size: const Size(900, 700));
      final deleted = <TP>[];
      await tester.pumpWidget(table(deleted: deleted));
      await tester.drag(find.text('p3'), const Offset(120, 0));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('rowAction.delete')));
      await tester.pumpAndSettle();
      expect(deleted.map((p) => p.name), ['p3']);
      expect(find.text('p3'), findsNothing);
    });

    testWidgets('左スライド・行のタップでタイルを閉じる', (tester) async {
      big(tester, size: const Size(900, 700));
      await tester.pumpWidget(table());
      await tester.drag(find.text('p2'), const Offset(120, 0));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('rowAction.delete')), findsOneWidget);
      await tester.drag(find.text('p2'), const Offset(-120, 0));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('rowAction.delete')), findsNothing);
      await tester.drag(find.text('p2'), const Offset(120, 0));
      await tester.pumpAndSettle();
      await tester.tap(find.text('p2'), warnIfMissed: false);
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('rowAction.delete')), findsNothing);
    });

    testWidgets('PC幅: 右スライドは使わない(コンテキストメニューのみ)', (tester) async {
      big(tester, size: const Size(1280, 700));
      await tester.pumpWidget(table());
      await tester.drag(find.text('p2'), const Offset(120, 0));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('rowAction.delete')), findsNothing);
    });

    testWidgets('モバイルのタイルも右スライドで操作タイルを表示', (tester) async {
      big(tester, size: const Size(400, 700));
      await tester.pumpWidget(
        host(
          FlgTable<TP>(
            columns: cols(),
            items: people(),
            rowKey: (p) => p.id,
            config: const TableConfig(rowActionsEnabled: true),
            mobileBuilder: (context, p) =>
                SizedBox(height: 80, child: Text('tile ${p.name}')),
          ),
        ),
      );
      await tester.drag(find.text('tile p2'), const Offset(120, 0));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('rowAction.delete')), findsOneWidget);
      expect(find.byKey(const Key('rowAction.flag')), findsOneWidget);
    });
  });
}
