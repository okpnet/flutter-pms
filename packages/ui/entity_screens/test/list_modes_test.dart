// 台帳の見た目(画面案): 検索の枠・種別のチップ・件数の文、閲覧と編集の 2 つのモード。
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

class _Labels implements EntityLabels {
  @override
  String entity(String entityKey) => '事業所';
  @override
  String field(String entityKey, String fieldKey) => fieldKey;
  @override
  String reverse(String entityKey, String reverseEntityKey) => '';
}

const _def = EntityDefinition(
  key: 'site',
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(key: 'name'),
    FieldDefinition(key: 'kind', kind: FieldKind.choice, options: ['本社', '工場']),
  ],
);

Widget _host(Widget child) => ProviderScope(
  overrides: [themeLoggerProvider.overrideWithValue(const NoopLoggerProvider())],
  child: Consumer(
    builder: (context, ref, _) =>
        MaterialApp(theme: ref.watch(lightThemeProvider), home: child),
  ),
);

Future<List<String>> _pump(WidgetTester tester, {required bool twoModes}) async {
  tester.view.devicePixelRatio = 1.0;
  tester.view.physicalSize = const Size(1200, 900);
  addTearDown(tester.view.reset);
  final catalog = EntityCatalog()
    ..register(
      InMemoryEntityRepository(_def, [
        const EntityRecord(id: 'a', values: {'code': 'HQ', 'name': '本社ビル', 'kind': '本社'}),
        const EntityRecord(id: 'b', values: {'code': 'KT', 'name': '関東工場', 'kind': '工場'}),
        const EntityRecord(id: 'c', values: {'code': 'KS', 'name': '関西工場', 'kind': '工場'}),
      ]),
    );
  final opened = <String>[];
  await tester.pumpWidget(
    _host(
      EntityListPage(
        entityKey: 'site',
        scope: EntityScope(
          catalog: catalog,
          labels: _Labels(),
          strings: EntityScreenLocale.ja.buildSync(),
          groupLabel: '会社情報',
        ),
        twoModes: twoModes,
        onOpen: (r) async => opened.add(r.id),
        onCreate: () async => opened.add('new'),
      ),
    ),
  );
  await tester.pumpAndSettle();
  return opened;
}

void main() {
  testWidgets('見出し(上の文字・見出し・時点)と、検索の枠・件数の文が出る', (tester) async {
    await _pump(tester, twoModes: false);
    expect(find.text('会社情報'), findsOneWidget); // 上の文字
    expect(find.byKey(const ValueKey('screenTitle')), findsOneWidget);
    expect(find.byKey(const ValueKey('screenAsOf')), findsOneWidget);
    expect(find.text('事業所の一覧'), findsOneWidget);
    expect(find.text('全3件のうち3件を表示。'), findsOneWidget);
    // 検索窓は一覧のカードの見出しの中にある(別のカードにしない)
    expect(
      find.descendant(
        of: find.ancestor(
          of: find.byKey(const ValueKey('listTitle')),
          matching: find.byType(Card),
        ),
        matching: find.byKey(const ValueKey('listSearch')),
      ),
      findsOneWidget,
    );
  });

  test('一覧の幅: 広い画面は 80%(上限 1200)、狭い画面は全幅', () {
    expect(EntityListPage.contentWidth(1150), 920);
    expect(EntityListPage.contentWidth(2000), 1200);
    expect(EntityListPage.contentWidth(800), 800);
  });

  testWidgets('検索の文字と、種別のチップで絞り込める', (tester) async {
    await _pump(tester, twoModes: false);
    await tester.enterText(find.byKey(const ValueKey('listSearch')), '関西');
    await tester.pumpAndSettle();
    expect(find.text('全3件のうち1件を表示。'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('listSearch')), '');
    await tester.tap(find.byKey(const ValueKey('chip:工場')));
    await tester.pumpAndSettle();
    expect(find.text('全3件のうち2件を表示。'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('chip:all')));
    await tester.pumpAndSettle();
    expect(find.text('全3件のうち3件を表示。'), findsOneWidget);
  });

  testWidgets('2 つのモード: はじめは閲覧(新規・行を開く操作は無い)。「編集」で、新規と行を開く操作が使える', (tester) async {
    final opened = await _pump(tester, twoModes: true);
    expect(find.byKey(const ValueKey('listCreate')), findsNothing);
    // 閲覧では、行をダブルクリックしても開かない
    await tester.tap(find.text('KT'));
    await tester.pump(const Duration(milliseconds: 50));
    await tester.tap(find.text('KT'));
    await tester.pumpAndSettle();
    expect(opened, isEmpty);

    await tester.tap(find.byKey(const ValueKey('listEditMode')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('listCreate')), findsOneWidget);
    expect(find.textContaining('ダブルクリック'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('listCreate')));
    await tester.pumpAndSettle();
    expect(opened, ['new']);
    // 「編集を終える」で閲覧に戻る
    await tester.tap(find.byKey(const ValueKey('listEditMode')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('listCreate')), findsNothing);
  });

  testWidgets('選択画面(2 つのモードにしない)は、行を開く操作がそのまま使える', (tester) async {
    final opened = await _pump(tester, twoModes: false);
    expect(find.byKey(const ValueKey('listEditMode')), findsNothing);
    await tester.tap(find.text('KT'));
    await tester.pump(const Duration(milliseconds: 50));
    await tester.tap(find.text('KT'));
    await tester.pumpAndSettle();
    expect(opened, ['b']);
  });
}
