import 'package:entity_screens/entity_screens.dart';
import 'package:entity_screens/src/pages/entity_scope.dart' show columnsOf;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

class _Labels implements EntityLabels {
  @override
  String entity(String entityKey) => switch (entityKey) {
    'item' => '品目',
    'sup' => '品目仕入先',
    _ => entityKey,
  };
  @override
  String field(String entityKey, String fieldKey) =>
      switch ('$entityKey.$fieldKey') {
        'sup.cost__off' => '言い値（都度確認）',
        _ => '$entityKey.$fieldKey',
      };
  @override
  String reverse(String entityKey, String reverseEntityKey) => 'サプライヤー';
}

const _item = EntityDefinition(
  key: 'item',
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(key: 'name'),
    FieldDefinition(
      key: 'purchase',
      kind: FieldKind.flag,
      required: false,
      lockedBy: 'sup',
    ),
  ],
);

const _sup = EntityDefinition(
  key: 'sup',
  owner: 'item',
  nest: NestedList(parent: 'item', where: {'purchase': '1'}),
  uniqueKeys: [
    ['supplier'],
  ],
  fields: [
    FieldDefinition(key: 'supplier'),
    FieldDefinition(key: 'days', kind: FieldKind.number, ge: 0),
    FieldDefinition(key: 'lot', kind: FieldKind.number, gt: 0),
    FieldDefinition(
      key: 'cost',
      kind: FieldKind.number,
      required: false,
      ge: 0,
      needUnless: 'asking',
    ),
    FieldDefinition(
      key: 'asking',
      kind: FieldKind.flag,
      required: false,
      toggle: true,
      disables: 'cost',
    ),
  ],
);

EntityRecord _r(String id, Map<String, String> v, [String? parent]) =>
    EntityRecord(id: id, values: v, parentId: parent);

EntityCatalog _catalog() => EntityCatalog()
  ..register(
    InMemoryEntityRepository(_item, [
      _r('i1', {'code': 'I1', 'name': '丸棒', 'purchase': '1'}),
      _r('i2', {'code': 'I2', 'name': 'ボルト', 'purchase': '1'}),
      _r('i3', {'code': 'I3', 'name': '製品A', 'purchase': ''}),
    ]),
  )
  ..register(
    InMemoryEntityRepository(_sup, [
      _r('s1', {
        'supplier': '北斗',
        'days': '5',
        'lot': '100',
        'cost': '180',
        'asking': '',
      }, 'i1'),
      _r('s2', {
        'supplier': '大和',
        'days': '7',
        'lot': '200',
        'cost': '',
        'asking': '1',
      }, 'i1'),
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
  group('検証', () {
    test('数値の下限(以上・より大きい)', () async {
      final repo = InMemoryEntityRepository(_sup);
      await expectLater(
        repo.save(
          _r('', {
            'supplier': 'A',
            'days': '-1',
            'lot': '0',
            'cost': '-5',
          }, 'i1'),
        ),
        throwsA(
          isA<EntityValidationException>().having((e) => e.errors, 'errors', {
            'days': EntityFieldError.belowMinimum,
            'lot': EntityFieldError.notAboveMinimum,
            'cost': EntityFieldError.belowMinimum,
          }),
        ),
      );
      await repo.save(
        _r('', {'supplier': 'A', 'days': '0', 'lot': '1', 'cost': '0'}, 'i1'),
      );
    });

    test('言い値でなければ単価は必須。言い値なら単価を空にして保存する', () async {
      final repo = InMemoryEntityRepository(_sup);
      await expectLater(
        repo.save(
          _r('', {'supplier': 'A', 'days': '1', 'lot': '1', 'cost': ''}, 'i1'),
        ),
        throwsA(
          isA<EntityValidationException>().having((e) => e.errors, 'errors', {
            'cost': EntityFieldError.required,
          }),
        ),
      );
      final saved = await repo.save(
        _r('', {
          'supplier': 'A',
          'days': '1',
          'lot': '1',
          'cost': '99',
          'asking': '1',
        }, 'i1'),
      );
      expect(saved.valueOf('cost'), '');
    });

    test('同じ親の中でサプライヤーの二重登録は不可。別の親なら可', () async {
      final repo = InMemoryEntityRepository(_sup, [
        _r('s1', {
          'supplier': '北斗',
          'days': '5',
          'lot': '100',
          'cost': '180',
        }, 'i1'),
      ]);
      final dup = _r('', {
        'supplier': '北斗',
        'days': '1',
        'lot': '1',
        'cost': '1',
      }, 'i1');
      await expectLater(
        repo.save(dup),
        throwsA(isA<EntityValidationException>()),
      );
      await repo.save(
        _r('', {'supplier': '北斗', 'days': '1', 'lot': '1', 'cost': '1'}, 'i2'),
      );
    });
  });

  group('編集画面', () {
    testWidgets('言い値をオンにすると単価が無効になって空になり、オフで必須に戻る', (tester) async {
      await tester.binding.setSurfaceSize(const Size(900, 1200));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(
        _host(
          EntityEditPage(
            entityKey: 'sup',
            id: 's1',
            scope: _scope(_catalog()),
            onOpenChild: (_, _, _) async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      TextField cost() =>
          tester.widget(find.widgetWithText(TextField, 'sup.cost'));
      expect(cost().enabled, isTrue);
      expect(cost().controller!.text, '180');

      await tester.tap(find.byKey(const ValueKey('flag:asking')));
      await tester.pumpAndSettle();
      expect(cost().enabled, isFalse);
      expect(cost().controller!.text, '');

      await tester.tap(find.byKey(const ValueKey('flag:asking')));
      await tester.pumpAndSettle();
      expect(cost().enabled, isTrue);
      await tester.tap(find.text('保存'));
      await tester.pumpAndSettle();
      expect(find.text('必須です'), findsOneWidget);
    });

    testWidgets('下限の文言を出す', (tester) async {
      await tester.binding.setSurfaceSize(const Size(900, 1200));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(
        _host(
          EntityEditPage(
            entityKey: 'sup',
            id: 's1',
            scope: _scope(_catalog()),
            onOpenChild: (_, _, _) async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.enterText(find.widgetWithText(TextField, 'sup.lot *'), '0');
      await tester.tap(find.text('保存'));
      await tester.pumpAndSettle();
      expect(find.text('0 より大きい値を入力してください'), findsOneWidget);
    });

    testWidgets('子(仕入先)がある間は、購入品のチェックを外せない。理由は項目の下に出る', (tester) async {
      await tester.binding.setSurfaceSize(const Size(900, 1200));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final catalog = _catalog();
      await tester.pumpWidget(
        _host(
          EntityEditPage(
            entityKey: 'item',
            id: 'i1',
            scope: _scope(catalog),
            onOpenChild: (_, _, _) async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('flag:purchase')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('保存'));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('flagError:purchase')), findsOneWidget);
      expect(find.text('品目仕入先 がある間は外せません'), findsOneWidget);
      final saved = await catalog.repository('item')!.findById('i1');
      expect(saved!.valueOf('purchase'), '1');
    });

    testWidgets('子の無い品目は、購入品のチェックを外せる', (tester) async {
      await tester.binding.setSurfaceSize(const Size(900, 1200));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final catalog = _catalog();
      await tester.pumpWidget(
        _host(
          EntityEditPage(
            entityKey: 'item',
            id: 'i2',
            scope: _scope(catalog),
            onOpenChild: (_, _, _) async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('flag:purchase')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('保存'));
      await tester.pumpAndSettle();
      final saved = await catalog.repository('item')!.findById('i2');
      expect(saved!.valueOf('purchase'), '');
    });
  });

  group('台帳', () {
    testWidgets('真偽の列は はい/いいえ、無効になった単価は文言を出す', (tester) async {
      final item = columnsOf(_item, _Labels(), const {});
      final purchase = item.firstWhere((c) => c.key == 'purchase');
      expect(purchase.getter(_r('x', {'purchase': '1'})), 'はい');
      expect(purchase.getter(_r('x', {'purchase': ''})), 'いいえ');
      final sup = columnsOf(_sup, _Labels(), const {});
      final cost = sup.firstWhere((c) => c.key == 'cost');
      expect(cost.getter(_r('x', {'cost': '', 'asking': '1'})), '言い値（都度確認）');
      expect(cost.getter(_r('x', {'cost': '180', 'asking': ''})), '180');
    });
  });

  group('表の中の表', () {
    Future<void> pump(
      WidgetTester tester,
      EntityCatalog catalog, {
      List<String>? added,
    }) async {
      await tester.binding.setSurfaceSize(const Size(1200, 1400));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(
        _host(
          EntityNestedPage(
            entityKey: 'sup',
            scope: _scope(catalog),
            onAdd: (parentId) async => added?.add(parentId),
            onEdit: (child) async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
    }

    testWidgets('購入品の品目だけを親にして、子の表(サプライヤー)を開いた状態で出す', (tester) async {
      await pump(tester, _catalog());
      expect(find.text('丸棒'), findsOneWidget);
      expect(find.text('ボルト'), findsOneWidget);
      expect(find.text('製品A'), findsNothing);
      // 子の表: 初期状態はすべて開く
      expect(find.text('北斗'), findsOneWidget);
      expect(find.text('大和'), findsOneWidget);
      // 言い値の行は、単価の欄に文言
      expect(find.text('言い値（都度確認）'), findsOneWidget);
      // 親ごとの子の数
      expect(find.text('サプライヤー数'), findsNWidgets(2));
    });

    testWidgets('行ごとに開閉でき、検索で絞り込める', (tester) async {
      await pump(tester, _catalog());
      await tester.tap(find.byKey(const ValueKey('toggle:I1')));
      await tester.pumpAndSettle();
      expect(find.text('北斗'), findsNothing);
      await tester.tap(find.byKey(const ValueKey('toggle:I1')));
      await tester.pumpAndSettle();
      expect(find.text('北斗'), findsOneWidget);

      await tester.enterText(find.byKey(const ValueKey('nestedSearch')), 'ボルト');
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('parent:i1')), findsNothing);
      expect(find.byKey(const ValueKey('parent:i2')), findsOneWidget);
    });

    testWidgets('編集モードで「追加」が出て、親の id を渡す', (tester) async {
      final added = <String>[];
      await pump(tester, _catalog(), added: added);
      expect(find.byKey(const ValueKey('add:I1')), findsNothing);
      await tester.tap(find.byKey(const ValueKey('nestedEdit')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('add:I1')));
      await tester.pumpAndSettle();
      expect(added, ['i1']);
    });
  });
}
