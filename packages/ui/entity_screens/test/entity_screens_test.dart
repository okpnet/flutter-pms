import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

class _Labels implements EntityLabels {
  @override
  String entity(String entityKey) => switch (entityKey) {
    'kind' => '区分',
    'node' => 'ノード',
    'note' => '注記',
    _ => entityKey,
  };

  @override
  String field(String entityKey, String fieldKey) => '$entityKey.$fieldKey';
}

const _kind = EntityDefinition(
  key: 'kind',
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(key: 'name'),
    FieldDefinition(key: 'memo', kind: FieldKind.multiline, required: false),
  ],
);

const _node = EntityDefinition(
  key: 'node',
  isTree: true,
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(key: 'name'),
    FieldDefinition(key: 'kind', kind: FieldKind.reference, reference: 'kind'),
    FieldDefinition(key: 'qty', kind: FieldKind.number, required: false),
    FieldDefinition(key: 'due', kind: FieldKind.date, required: false),
    FieldDefinition(
      key: 'state',
      kind: FieldKind.choice,
      options: ['受付', '完了'],
      required: false,
    ),
  ],
);

const _note = EntityDefinition(
  key: 'note',
  owner: 'node',
  fields: [FieldDefinition(key: 'text')],
);

EntityRecord _r(String id, Map<String, String> v, [String? parent]) =>
    EntityRecord(id: id, values: v, parentId: parent);

EntityCatalog _catalog() => EntityCatalog()
  ..register(
    InMemoryEntityRepository(_kind, [
      _r('k1', {'code': 'K1', 'name': '製品'}),
      _r('k2', {'code': 'K2', 'name': '部品'}),
    ]),
  )
  ..register(
    InMemoryEntityRepository(_node, [
      _r('n1', {'code': 'N1', 'name': 'ルート', 'kind': 'k1'}),
      _r('n2', {'code': 'N2', 'name': '子', 'kind': 'k2'}, 'n1'),
    ]),
  )
  ..register(
    InMemoryEntityRepository(_note, [
      _r('t1', {'text': '注記A'}, 'n1'),
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
  group('リポジトリ', () {
    test('必須・数値・日付・選択肢を検証する', () async {
      final repo = InMemoryEntityRepository(_node);
      await expectLater(
        repo.save(_r('', {'qty': 'x', 'due': '2026-13-40', 'state': '不明'})),
        throwsA(
          isA<EntityValidationException>().having((e) => e.errors, 'errors', {
            'code': EntityFieldError.required,
            'name': EntityFieldError.required,
            'kind': EntityFieldError.required,
            'qty': EntityFieldError.invalidNumber,
            'due': EntityFieldError.invalidDate,
            'state': EntityFieldError.invalidChoice,
          }),
        ),
      );
    });

    test('新規は UUID を採番し、保存した値を返す', () async {
      final repo = InMemoryEntityRepository(_kind);
      final saved = await repo.save(_r('', {'code': ' A ', 'name': 'x'}));
      expect(saved.id, matches(RegExp(r'^[0-9a-f-]{36}$')));
      expect(saved.valueOf('code'), 'A');
    });

    test('ツリーは自分や子孫を親にできない', () async {
      final repo = _catalog().repository('node')!;
      await expectLater(
        repo.save(_r('n1', {'code': 'N1', 'name': 'ルート', 'kind': 'k1'}, 'n2')),
        throwsA(
          isA<EntityValidationException>().having(
            (e) => e.errors[EntityValidationException.parentKey],
            'parent',
            EntityFieldError.parentCycle,
          ),
        ),
      );
    });
  });

  group('登録簿', () {
    test('参照の選択肢は「先頭2項目」の表示になる', () async {
      final options = await _catalog().options('kind');
      expect(options.map((o) => o.label), ['K1 製品', 'K2 部品']);
    });

    test('専用の画面を持つ実体は lookup で参照される', () async {
      final catalog = EntityCatalog()
        ..registerLookup(
          'customer',
          () async => [const EntityOption('c1', 'A社')],
        );
      expect((await catalog.options('customer')).single.label, 'A社');
    });

    test('配下がある・参照されている実体は削除できない', () async {
      final catalog = _catalog();
      await expectLater(
        catalog.delete('node', 'n1'),
        throwsA(
          isA<EntityInUseException>().having(
            (e) => e.reason,
            'reason',
            EntityBlockReason.hasChildren,
          ),
        ),
      );
      await expectLater(
        catalog.delete('kind', 'k1'),
        throwsA(
          isA<EntityInUseException>().having(
            (e) => e.reason,
            'reason',
            EntityBlockReason.referenced,
          ),
        ),
      );
    });

    test('削除すると、所有する子も一緒に消える', () async {
      final catalog = _catalog();
      await catalog.delete('node', 'n2');
      await catalog.delete('node', 'n1');
      expect(await catalog.repository('node')!.findById('n1'), isNull);
      expect(await catalog.repository('note')!.findByParent('n1'), isEmpty);
    });
  });

  group('画面', () {
    testWidgets('台帳(ツリー)に列と行が表示される', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1200, 800));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(
        _host(
          EntityListPage(
            entityKey: 'node',
            scope: _scope(_catalog()),
            onOpen: (_) async {},
            onCreate: () async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('ノード'), findsOneWidget);
      expect(find.text('node.code'), findsWidgets);
      expect(find.text('ルート'), findsOneWidget);
      // 参照は表示名になる
      expect(find.text('K1 製品'), findsOneWidget);
    });

    testWidgets('台帳(フラット)に行が表示される', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1200, 800));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(
        _host(
          EntityListPage(
            entityKey: 'kind',
            scope: _scope(_catalog()),
            onOpen: (_) async {},
            onCreate: () async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('製品'), findsOneWidget);
      expect(find.text('部品'), findsOneWidget);
    });

    testWidgets('編集: 必須未入力はエラー、子の台帳が下に出る', (tester) async {
      await tester.binding.setSurfaceSize(const Size(900, 1600));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(
        _host(
          EntityEditPage(
            entityKey: 'node',
            id: 'n1',
            scope: _scope(_catalog()),
            onOpenChild: (_, _, _) async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('注記'), findsOneWidget);
      expect(find.text('注記A'), findsOneWidget);
      await tester.enterText(find.widgetWithText(TextField, 'node.name *'), '');
      await tester.tap(find.text('保存'));
      await tester.pumpAndSettle();
      expect(find.text('必須です'), findsOneWidget);
    });

    testWidgets('編集: 使用中は削除確認のあとエラーを表示する', (tester) async {
      await tester.binding.setSurfaceSize(const Size(900, 1600));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(
        _host(
          EntityEditPage(
            entityKey: 'kind',
            id: 'k1',
            scope: _scope(_catalog()),
            onOpenChild: (_, _, _) async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('削除'));
      await tester.pumpAndSettle();
      expect(find.text('削除の確認'), findsOneWidget);
      await tester.tap(
        find.descendant(
          of: find.byType(AlertDialog),
          matching: find.text('削除'),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('他で使用中のため削除できません'), findsOneWidget);
    });
  });
}
