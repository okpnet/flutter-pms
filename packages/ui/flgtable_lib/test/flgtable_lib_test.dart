import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class _User {
  _User(this.name, this.age);
  final String name;
  final int age;
}

void main() {
  final columns = [
    ColumnDefinition<_User>(key: 'name', label: '名前', getter: (u) => u.name),
    ColumnDefinition<_User>(
      key: 'age',
      label: '年齢',
      getter: (u) => u.age.toString(),
    ),
    ColumnDefinition<_User>(
      key: 'bad',
      label: '失敗',
      getter: (u) => throw StateError('x'),
      defaultValue: '-',
    ),
  ];

  Widget wrap(Widget child) => ProviderScope(
    child: MaterialApp(
      home: Scaffold(body: SizedBox(height: 300, child: child)),
    ),
  );

  testWidgets('静的データを表示する', (tester) async {
    await tester.pumpWidget(
      wrap(
        FlgTable<_User>(
          columns: columns,
          items: [_User('太郎', 20), _User('花子', 30)],
        ),
      ),
    );
    expect(find.text('名前'), findsOneWidget);
    expect(find.text('太郎'), findsOneWidget);
    expect(find.text('30'), findsOneWidget);
    expect(find.text('-'), findsNWidgets(2));
  });

  test('TableConfig のJSON往復と不正値', () {
    const config = TableConfig(
      rowHeight: 40,
      pageSize: 10,
      loadMode: LoadMode.infiniteScroll,
      defaultColumnChars: 12,
    );
    final restored = TableConfig.fromJson(config.toJson());
    expect(restored.toJson(), config.toJson());

    final fallback = TableConfig.fromJson({
      'rowHeight': 'x',
      'pageSize': 0,
      'loadMode': 'unknown',
      'defaultColumnChars': null,
    });
    expect(fallback.toJson(), const TableConfig().toJson());
  });

  testWidgets('非同期ローダーで読み込む', (tester) async {
    await tester.pumpWidget(
      wrap(
        FlgTable<_User>(
          columns: columns,
          loader: (q) async => LoadResult(
            items: [_User('次郎', 40)],
            totalCount: 1,
            filteredCount: 1,
            start: 0,
            count: 1,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('次郎'), findsOneWidget);
  });
}
