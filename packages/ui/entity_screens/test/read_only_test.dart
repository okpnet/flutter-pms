import 'package:entity_screens/entity_screens.dart';
import 'package:entity_screens/src/pages/entity_scope.dart' show columnsOf;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

class _Labels implements EntityLabels {
  @override
  String entity(String entityKey) => entityKey;
  @override
  String field(String entityKey, String fieldKey) => '$entityKey.$fieldKey';
  @override
  String reverse(String entityKey, String reverseEntityKey) => reverseEntityKey;
}

const _purchase = EntityDefinition(
  key: 'purchase',
  fields: [
    FieldDefinition(key: 'code'),
    // 集計の値(必須でも、入力・検証の対象にしない)
    FieldDefinition(key: 'amount', kind: FieldKind.number, readOnly: true),
  ],
);

EntityCatalog _catalog() => EntityCatalog()
  ..register(
    InMemoryEntityRepository(_purchase, [
      EntityRecord(id: 'p1', values: {'code': 'P1', 'amount': '2400000'}),
    ]),
  );

Widget _host(Widget child) => ProviderScope(
  overrides: [
    themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
  ],
  child: Consumer(
    builder: (context, ref, _) =>
        MaterialApp(theme: ref.watch(lightThemeProvider), home: child),
  ),
);

EntityScope _scope(EntityCatalog catalog) => EntityScope(
  catalog: catalog,
  labels: _Labels(),
  strings: EntityScreenLocale.ja.buildSync(),
);

void main() {
  test('読み取り専用の項目は、入力が空でも検証エラーにならない', () async {
    final repo = InMemoryEntityRepository(_purchase);
    final saved = await repo.save(
      EntityRecord(id: '', values: {'code': 'P2', 'amount': ''}),
    );
    expect(saved.valueOf('code'), 'P2');
  });

  testWidgets('編集画面は読み取り専用の項目を表示だけにし、保存しても値は変わらない', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final catalog = _catalog();
    await tester.pumpWidget(
      _host(
        EntityEditPage(
          entityKey: 'purchase',
          id: 'p1',
          scope: _scope(catalog),
          onOpenChild: (_, _, _) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    // 表示だけ(入力欄ではない)
    expect(
      (tester.widget(find.byKey(const ValueKey('readonly:amount'))) as Text)
          .data,
      '2400000',
    );
    expect(find.widgetWithText(TextField, 'purchase.amount'), findsNothing);

    await tester.enterText(
      find.widgetWithText(TextField, 'purchase.code *'),
      'P9',
    );
    await tester.tap(find.text('保存'));
    await tester.pumpAndSettle();
    final saved = await catalog.repository('purchase')!.findById('p1');
    expect(saved!.valueOf('code'), 'P9');
    expect(saved.valueOf('amount'), '2400000');
  });

  testWidgets('台帳は読み取り専用の項目を、読み取り専用の列にする', (tester) async {
    final columns = columnsOf(_purchase, _Labels(), const {});
    expect(columns.firstWhere((c) => c.key == 'amount').readOnly, isTrue);
    expect(columns.firstWhere((c) => c.key == 'code').readOnly, isFalse);
  });
}
