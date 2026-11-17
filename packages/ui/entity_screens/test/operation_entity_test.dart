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

/// 追記だけの操作の実体(実行の確認・隠した項目・種類つきの失敗)。
const _op = EntityDefinition(
  key: 'op',
  confirmSave: true,
  inMenu: false,
  fields: [
    FieldDefinition(
      key: 'target',
      required: false,
      readOnly: true,
      hidden: true,
    ),
    FieldDefinition(key: 'reason', required: false),
  ],
);

/// 保存すると、決めた結果になる取得元(成功・種類つきの失敗)。
class _Repo extends InMemoryEntityRepository {
  _Repo(super.definition, this.fail);

  final EntityFailureKind? fail;
  EntityRecord? saved;

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    if (fail != null) throw EntityFailureException(fail!);
    saved = record;
    return record;
  }
}

Widget _host(Widget child) => ProviderScope(
  overrides: [
    themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
  ],
  child: Consumer(
    builder: (context, ref, _) => MaterialApp(
      theme: ref.watch(lightThemeProvider),
      home: Scaffold(body: child),
    ),
  ),
);

EntityScope _scope(EntityCatalog c) => EntityScope(
  catalog: c,
  labels: _Labels(),
  strings: EntityScreenLocale.ja.buildSync(),
);

Future<void> _open(WidgetTester tester, EntityCatalog c) async {
  await tester.binding.setSurfaceSize(const Size(900, 900));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    _host(
      EntityEditPage(
        entityKey: 'op',
        scope: _scope(c),
        initialValues: const {'target': 'inventory_request:abc'},
        onOpenChild: (_, _, _) async {},
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('hidden の項目は出さず、初期値は保存に渡す。確認で実行すると保存され、完了が通知される', (tester) async {
    final repo = _Repo(_op, null);
    final c = EntityCatalog()..register(repo);
    await _open(tester, c);
    expect(find.text('op.target'), findsNothing);
    expect(find.text('op.reason'), findsOneWidget);
    await tester.tap(find.text('保存'));
    await tester.pumpAndSettle();
    expect(find.text('実行の確認'), findsOneWidget);
    expect(repo.saved, isNull); // 確認の前は保存されない
    await tester.tap(find.text('実行'));
    await tester.pumpAndSettle();
    expect(repo.saved?.valueOf('target'), 'inventory_request:abc');
  });

  testWidgets('確認で取り消すと、保存されない', (tester) async {
    final repo = _Repo(_op, null);
    final c = EntityCatalog()..register(repo);
    await _open(tester, c);
    await tester.tap(find.text('保存'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('キャンセル'));
    await tester.pumpAndSettle();
    expect(repo.saved, isNull);
    expect(find.text('実行の確認'), findsNothing);
  });

  testWidgets('種類つきの失敗は、種類に合う文を出す(「保存に失敗しました」ではない)', (tester) async {
    final repo = _Repo(_op, EntityFailureKind.noLocation);
    final c = EntityCatalog()..register(repo);
    await _open(tester, c);
    await tester.tap(find.text('保存'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('実行'));
    await tester.pumpAndSettle();
    expect(find.text('棚に場所が設定されていないため実行できません'), findsOneWidget);
    expect(find.text('保存に失敗しました'), findsNothing);
  });

  testWidgets('compactFlags は、オンのときだけ印を出し、オフは空。actionsFirst はボタンの列が先頭', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(1200, 600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    const def = EntityDefinition(
      key: 'open',
      viewOnly: true,
      compactFlags: true,
      actionsFirst: true,
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'is_a', kind: FieldKind.flag),
      ],
      rowActions: [
        RowAction(key: 'go', target: 'op', initialValues: {'target': 'id'}),
      ],
    );
    final c = EntityCatalog()
      ..register(
        InMemoryEntityRepository(def, [
          const EntityRecord(id: 'r1', values: {'code': 'R1', 'is_a': flagOn}),
          const EntityRecord(id: 'r2', values: {'code': 'R2', 'is_a': ''}),
        ]),
      );
    await tester.pumpWidget(
      _host(
        EntityListPage(
          entityKey: 'open',
          scope: _scope(c),
          showCreate: false,
          onOpen: (r) async {},
          onCreate: () async {},
          onAction: (a, r) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('✓'), findsOneWidget);
    expect(find.text('はい'), findsNothing);
    expect(find.text('いいえ'), findsNothing);
    // ボタンの列(op.go)が、データの列(open.code)より左にある
    final goX = tester.getTopLeft(find.text('open.go').first).dx;
    final codeX = tester.getTopLeft(find.text('open.code').first).dx;
    expect(goX, lessThan(codeX));
  });
}
