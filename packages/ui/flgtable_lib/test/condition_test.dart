import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter_test/flutter_test.dart';

class _Row {
  _Row(this.name, this.age, [this.at = '']);
  final String name;
  final int age;
  final String at;
}

void main() {
  final columns = [
    ColumnDefinition<_Row>(key: 'name', label: '名前', getter: (r) => r.name),
    ColumnDefinition<_Row>(
      key: 'age',
      label: '年齢',
      getter: (r) => '${r.age}',
      type: ColumnType.number,
    ),
    ColumnDefinition<_Row>(
      key: 'at',
      label: '日時',
      getter: (r) => r.at,
      type: ColumnType.time,
    ),
  ];
  final rows = [
    _Row('Alice', 30, '2026-01-10'),
    _Row('bob', 5, '2026-03-01'),
    _Row('Carol', 100, '2025-12-31'),
    _Row('alan', 30, '2026-02-01'),
  ];
  List<String> names(List<_Row> r) => [for (final x in r) x.name];
  List<_Row> filter(String key, FilterOperator op, List<Object?> v) =>
      ConditionMatcher.filter(rows, columns, [FilterCondition(key, op, v)]);

  group('フィルタ', () {
    test('EQ/NEQ/IN/NOT IN は大文字小文字を区別しない', () {
      expect(names(filter('name', FilterOperator.eq, ['ALICE'])), ['Alice']);
      expect(names(filter('name', FilterOperator.neq, ['alice'])), [
        'bob',
        'Carol',
        'alan',
      ]);
      expect(names(filter('name', FilterOperator.inList, ['bob', 'carol'])), [
        'bob',
        'Carol',
      ]);
      expect(
        names(filter('name', FilterOperator.notInList, ['bob', 'carol'])),
        ['Alice', 'alan'],
      );
    });

    test('数値は数値として比較する(文字列順ではない)', () {
      expect(names(filter('age', FilterOperator.gt, [29])), [
        'Alice',
        'Carol',
        'alan',
      ]);
      expect(names(filter('age', FilterOperator.le, [5])), ['bob']);
      expect(names(filter('age', FilterOperator.between, [10, 50])), [
        'Alice',
        'alan',
      ]);
      expect(names(filter('age', FilterOperator.eq, ['30'])), [
        'Alice',
        'alan',
      ]);
    });

    test('時間型の比較', () {
      expect(
        names(filter('at', FilterOperator.ge, [DateTime.parse('2026-02-01')])),
        ['bob', 'alan'],
      );
      expect(
        names(
          filter('at', FilterOperator.between, ['2026-01-01', '2026-01-31']),
        ),
        ['Alice'],
      );
    });

    test('文字列演算子とLIKE(%と_)', () {
      expect(names(filter('name', FilterOperator.startsWith, ['AL'])), [
        'Alice',
        'alan',
      ]);
      expect(names(filter('name', FilterOperator.notStartsWith, ['al'])), [
        'bob',
        'Carol',
      ]);
      expect(names(filter('name', FilterOperator.endsWith, ['N'])), ['alan']);
      expect(names(filter('name', FilterOperator.like, ['a_a%'])), ['alan']);
      expect(names(filter('name', FilterOperator.like, ['%o%'])), [
        'bob',
        'Carol',
      ]);
      expect(names(filter('name', FilterOperator.notLike, ['%o%'])), [
        'Alice',
        'alan',
      ]);
    });

    test('列間はAND', () {
      final r = ConditionMatcher.filter(rows, columns, [
        const FilterCondition('name', FilterOperator.startsWith, ['a']),
        const FilterCondition('age', FilterOperator.gt, [30]),
      ]);
      expect(r, isEmpty);
    });
  });

  group('ソート', () {
    test('数値ソートと安定性', () {
      expect(
        names(ConditionMatcher.sort(rows, columns, const SortCondition('age'))),
        ['bob', 'Alice', 'alan', 'Carol'],
      );
      expect(
        names(
          ConditionMatcher.sort(
            rows,
            columns,
            const SortCondition('age', ascending: false),
          ),
        ),
        ['Carol', 'Alice', 'alan', 'bob'],
      );
    });

    test('ソートなしは元の並び', () {
      expect(names(ConditionMatcher.sort(rows, columns, null)), names(rows));
    });
  });

  group('JSON', () {
    test('条件の往復と不正値', () {
      const f = FilterCondition('age', FilterOperator.between, [1, 2]);
      final r = FilterCondition.tryFromJson(f.toJson())!;
      expect(r.operator, FilterOperator.between);
      expect(r.values, [1, 2]);
      expect(FilterCondition.tryFromJson({'columnKey': 'a'}), isNull);
      expect(SortCondition.tryFromJson({'columnKey': 3}), isNull);
      final s = SortCondition.tryFromJson(
        const SortCondition('a', ascending: false).toJson(),
      )!;
      expect(s.ascending, isFalse);
    });

    test('TableConfig に新項目を往復し、不正値は標準値', () {
      const c = TableConfig(
        sortEnabled: true,
        filterEnabled: true,
        initialSort: SortCondition('age', ascending: false),
        initialFilters: [
          FilterCondition('name', FilterOperator.like, ['a%']),
        ],
        rowSelection: RowSelectionMode.multiple,
        groupColumnKeys: ['city'],
        frozenColumnKey: 'id',
        loadingKind: LoadingKind.footer,
        loadingAlignment: HorizontalPlacement.center,
        countItems: [CountItem.loaded, CountItem.total],
        countPosition: CountPosition.footer,
        countAlignment: HorizontalPlacement.left,
        countDirection: CountDirection.vertical,
        countVerticalOrder: [CountItem.loaded, CountItem.total],
        flagLimit: 3,
      );
      expect(TableConfig.fromJson(c.toJson()).toJson(), c.toJson());
      final bad = TableConfig.fromJson({
        'rowSelection': 'x',
        'initialFilters': [1, 'a'],
        'groupColumnKeys': [1, 'a'],
        'flagLimit': -1,
        'sortEnabled': 'yes',
      });
      expect(bad.rowSelection, RowSelectionMode.none);
      expect(bad.initialFilters, isEmpty);
      expect(bad.groupColumnKeys, ['a']);
      expect(bad.flagLimit, isNull);
      expect(bad.sortEnabled, isFalse);
      expect(bad.countItems, isNull);
      expect(bad.countPosition, CountPosition.header);
      expect(bad.countAlignment, HorizontalPlacement.right);
      expect(bad.countDirection, CountDirection.horizontal);
      expect(bad.loadingAlignment, HorizontalPlacement.left);
      final partial = TableConfig.fromJson({
        "countItems": ["total", "x"],
        "countHorizontalOrder": ["loaded", 1],
      });
      expect(partial.countItems, [CountItem.total]);
      expect(partial.countHorizontalOrder, [CountItem.loaded]);
    });
  });

  test('CSV: BOM・CRLF・非表示列の除外・エスケープ', () {
    final cols = [
      ...columns.take(2),
      ColumnDefinition<_Row>(
        key: 'hid',
        label: '非表示',
        getter: (r) => 'x',
        visible: false,
      ),
    ];
    final csv = CsvExporter.export(cols, [_Row('a,"b"', 1)]);
    expect(csv, '﻿名前,年齢\r\n"a,""b""",1\r\n');
  });

  test('ページ番号の窓(表示桁数ごとのブロック、1ページのみは1だけ)', () {
    expect(PaginationPanel.visiblePages(0, 25, 10), [
      for (var i = 0; i < 10; i++) i,
    ]);
    expect(PaginationPanel.visiblePages(11, 25, 10), [
      for (var i = 10; i < 20; i++) i,
    ]);
    expect(PaginationPanel.visiblePages(24, 25, 10), [20, 21, 22, 23, 24]);
    expect(PaginationPanel.visiblePages(0, 1, 10), [0]);
    expect(PaginationPanel.visiblePages(0, 0, 10), [0]);
  });
}
