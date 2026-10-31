import 'package:entity_screens/entity_screens.dart';
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

const _view = EntityDefinition(
  key: 'onhand',
  viewOnly: true,
  fields: [
    FieldDefinition(key: 'code', readOnly: true, required: false),
    FieldDefinition(
      key: 'qty',
      kind: FieldKind.number,
      readOnly: true,
      required: false,
    ),
  ],
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

void main() {
  testWidgets('読み取り専用の実体の編集画面は、保存・削除を出さず、値だけを表示する', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final catalog = EntityCatalog()
      ..register(
        InMemoryEntityRepository(_view, [
          EntityRecord(id: 'r1', values: {'code': 'I-1', 'qty': '120'}),
        ]),
      );
    final scope = EntityScope(
      catalog: catalog,
      labels: _Labels(),
      strings: EntityScreenLocale.ja.buildSync(),
    );
    await tester.pumpWidget(
      _host(
        EntityEditPage(
          entityKey: 'onhand',
          id: 'r1',
          scope: scope,
          onOpenChild: (_, _, _) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('120'), findsOneWidget);
    expect(find.text(scope.strings.save), findsNothing);
    expect(find.text(scope.strings.delete), findsNothing);
  });
}
