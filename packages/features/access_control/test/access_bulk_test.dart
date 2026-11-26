import 'package:access_control/access_control.dart';
import 'package:access_control/access_control_api.dart';
import 'package:access_control/src/entities/access_control_definitions.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

EntityDefinition _def(String key) =>
    accessControlDefinitions.firstWhere((d) => d.key == key);

const _department = EntityDefinition(
  key: 'department',
  fields: [FieldDefinition(key: 'name')],
);
const _staff = EntityDefinition(
  key: 'staff',
  fields: [FieldDefinition(key: 'name')],
);

EntityRecord _path(String id, String name, String path) => EntityRecord(
  id: id,
  values: {'name_ja': name, 'name_en': name, 'usecase_path': path},
);

class _Fixture {
  _Fixture() {
    catalog.register(
      InMemoryEntityRepository(_department, [
        const EntityRecord(id: 'd1', values: {'name': '製造部'}),
        const EntityRecord(id: 'd2', values: {'name': '品質保証部'}),
      ]),
    );
    catalog.register(
      InMemoryEntityRepository(_staff, [
        const EntityRecord(id: 's1', values: {'name': '田中'}),
      ]),
    );
    catalog.register(
      InMemoryEntityRepository(_def('accesspath'), [
        _path('p1', '受注', '/e/order'),
        _path('p2', '発注', '/e/purchase'),
        _path('p3', '在庫', '/e/stock'),
      ]),
    );
    dept = InMemoryEntityRepository(_def('deptaccesspath'), [
      const EntityRecord(
        id: 'r1',
        values: {'department': 'd1', 'access_path': 'p1', 'write': flagOn},
      ),
      const EntityRecord(
        id: 'r2',
        values: {'department': 'd1', 'access_path': 'p2'},
      ),
      const EntityRecord(
        id: 'r3',
        values: {'department': 'd2', 'access_path': 'p3'},
      ),
    ]);
    person = InMemoryEntityRepository(_def('staffaccesspermission'));
    catalog.register(
      InMemoryEntityRepository(_def('effectiveaccesspath'), [
        const EntityRecord(
          id: 'e1',
          values: {
            'staff': 's1',
            'access_path': 'p1',
            'can_write': flagOn,
            'from_department': flagOn,
          },
        ),
        const EntityRecord(
          id: 'e2',
          values: {
            'staff': 's1',
            'access_path': 'p3',
            'can_write': '',
            'from_staff': flagOn,
          },
        ),
      ]),
    );
    catalog.register(dept);
    catalog.register(person);
  }

  final catalog = EntityCatalog();
  late final InMemoryEntityRepository dept;
  late final InMemoryEntityRepository person;
}

Future<void> _open(
  WidgetTester tester,
  _Fixture f, {
  String location = '/access-control/bulk',
}) async {
  await tester.binding.setSurfaceSize(const Size(1200, 1400));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  final router = GoRouter(
    initialLocation: location,
    routes: [
      ...const AccessControlModule().routes.where(
        (r) => r is GoRoute && r.path == AccessControlModule.bulkPath,
      ),
    ],
  );
  await tester.pumpWidget(
    ProviderScope(
      overrides: [entityCatalogProvider.overrideWithValue(f.catalog)],
      child: MaterialApp.router(routerConfig: router),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> _pick(WidgetTester tester, String label) async {
  await tester.tap(find.byType(DropdownButtonFormField<String>));
  await tester.pumpAndSettle();
  await tester.tap(find.text(label).last);
  await tester.pumpAndSettle();
}

bool _checked(WidgetTester tester, String key) =>
    tester.widget<Checkbox>(find.byKey(Key(key))).value ?? false;

void main() {
  test('遷移先はパスに変換でき、JSON にできる。メニューの先頭に出る', () {
    const m = AccessControlModule();
    expect(
      m.locationOf(const AccessBulkDestination()),
      '/access-control/bulk?scope=department',
    );
    expect(
      m.locationOf(const AccessBulkDestination(scope: 'staff', targetId: 's1')),
      '/access-control/bulk?scope=staff&id=s1',
    );
    expect(
      const AccessBulkDestination(
        scope: 'staff',
        targetId: 's1',
      ).toJson()['targetId'],
      's1',
    );
  });

  testWidgets('部署を選ぶと、保存済みの許可・書き込みがチェックに出る。選ぶまでは案内だけ', (tester) async {
    final f = _Fixture();
    await _open(tester, f);
    expect(find.byKey(const Key('ab-pick-target')), findsOneWidget);
    await _pick(tester, '製造部');
    expect(_checked(tester, 'ab-allow:p1'), isTrue);
    expect(_checked(tester, 'ab-write:p1'), isTrue);
    expect(_checked(tester, 'ab-allow:p2'), isTrue);
    expect(_checked(tester, 'ab-write:p2'), isFalse);
    expect(_checked(tester, 'ab-allow:p3'), isFalse);
    expect(find.text('変更はありません。'), findsOneWidget);
  });

  testWidgets('チェックを変えてまとめて保存できる(追加・削除・書き込みの変更だけを送る)', (tester) async {
    final f = _Fixture();
    await _open(tester, f);
    await _pick(tester, '製造部');
    await tester.tap(find.byKey(const Key('ab-allow:p3'))); // 追加
    await tester.tap(find.byKey(const Key('ab-allow:p2'))); // 削除
    await tester.tap(find.byKey(const Key('ab-write:p1'))); // 書き込みを外す
    await tester.pump();
    expect(find.text('3 件の変更があります(色の付いた行)。'), findsOneWidget);
    await tester.tap(find.byKey(const Key('ab-save')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ab-saved')), findsOneWidget);

    final rows = await f.dept.find(take: 100);
    final mine = {
      for (final r in rows)
        if (r.valueOf('department') == 'd1') r.valueOf('access_path'): r,
    };
    expect(mine.keys.toSet(), {'p1', 'p3'});
    expect(mine['p1']!.valueOf('write'), '');
    expect(
      rows.any((r) => r.valueOf('department') == 'd2'),
      isTrue,
    ); // 別の部署は変わらない
    expect(find.text('変更はありません。'), findsNothing); // 保存のあとは「保存しました。」
  });

  testWidgets('許可を外すと書き込みも外れる。書き込みは、許可があるときだけ選べる。「元に戻す」で読み直す', (tester) async {
    final f = _Fixture();
    await _open(tester, f);
    await _pick(tester, '製造部');
    expect(
      tester.widget<Checkbox>(find.byKey(const Key('ab-write:p3'))).onChanged,
      isNull,
    );
    await tester.tap(find.byKey(const Key('ab-allow:p1')));
    await tester.pump();
    expect(_checked(tester, 'ab-write:p1'), isFalse);
    await tester.tap(find.byKey(const Key('ab-reset')));
    await tester.pumpAndSettle();
    expect(_checked(tester, 'ab-allow:p1'), isTrue);
    expect(_checked(tester, 'ab-write:p1'), isTrue);
  });

  testWidgets('「表示中をすべて許可」は絞り込みの範囲だけに働く', (tester) async {
    final f = _Fixture();
    await _open(tester, f);
    await _pick(tester, '品質保証部');
    await tester.enterText(find.byKey(const Key('ab-filter')), '在庫');
    await tester.pump();
    expect(find.byKey(const Key('ab-allow:p1')), findsNothing);
    await tester.tap(find.byKey(const Key('ab-none')));
    await tester.pump();
    await tester.enterText(find.byKey(const Key('ab-filter')), '発注');
    await tester.pump();
    await tester.tap(find.byKey(const Key('ab-all')));
    await tester.pump();
    await tester.enterText(find.byKey(const Key('ab-filter')), '');
    await tester.pump();
    expect(_checked(tester, 'ab-allow:p3'), isFalse); // 「在庫」は外した
    expect(_checked(tester, 'ab-allow:p2'), isTrue); // 「発注」は許可した
    expect(_checked(tester, 'ab-allow:p1'), isFalse);
  });

  testWidgets('担当者でも同じに設定できる(担当者の許可の台帳へ書く)', (tester) async {
    final f = _Fixture();
    await _open(tester, f, location: '/access-control/bulk?scope=staff');
    await _pick(tester, '田中');
    await tester.tap(find.byKey(const Key('ab-allow:p1')));
    await tester.pump();
    await tester.tap(find.byKey(const Key('ab-write:p1')));
    await tester.pump();
    await tester.tap(find.byKey(const Key('ab-save')));
    await tester.pumpAndSettle();
    final rows = await f.person.find(take: 100);
    expect(rows.single.valueOf('staff'), 's1');
    expect(rows.single.valueOf('access_path'), 'p1');
    expect(rows.single.valueOf('write'), flagOn);
  });

  testWidgets('実効: 担当者を選ぶと、部署から受け継ぐ分を含めた権限が読み取り専用で出る(保存・一括の操作は無い)', (
    tester,
  ) async {
    final f = _Fixture();
    await _open(tester, f, location: '/access-control/bulk?scope=effective');
    await _pick(tester, '田中');
    // 権限のあるパスだけが出る(p2 は無い)
    expect(find.byKey(const Key('ab-allow:p1')), findsOneWidget);
    expect(find.byKey(const Key('ab-allow:p3')), findsOneWidget);
    expect(find.byKey(const Key('ab-allow:p2')), findsNothing);
    expect(_checked(tester, 'ab-write:p1'), isTrue);
    expect(_checked(tester, 'ab-write:p3'), isFalse);
    expect(
      tester.widget<Checkbox>(find.byKey(const Key('ab-allow:p1'))).onChanged,
      isNull,
    );
    expect(
      tester.widget<Checkbox>(find.byKey(const Key('ab-write:p1'))).onChanged,
      isNull,
    );
    // 部署から受け継いだ分に印
    expect(find.byKey(const Key('ab-from-dept:p1')), findsOneWidget);
    expect(find.byKey(const Key('ab-from-dept:p3')), findsNothing);
    expect(find.byKey(const Key('ab-save')), findsNothing);
    expect(find.byKey(const Key('ab-all')), findsNothing);
  });

  testWidgets('台帳(アクセスパス・部署・担当者・実効)の入口が、画面の下にある(メニューには出さない)', (tester) async {
    final f = _Fixture();
    await _open(tester, f);
    for (final k in [
      'accesspath',
      'deptaccesspath',
      'staffaccesspermission',
      'effectiveaccesspath',
    ]) {
      expect(find.byKey(Key('ab-ledger:$k')), findsOneWidget);
    }
  });
}
