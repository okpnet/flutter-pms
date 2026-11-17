import 'dart:typed_data';

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
  String reverse(String entityKey, String reverseEntityKey) => '';
}

/// 記録だけをする、ファイルの出し入れの代役。
class _Transfer implements IEntityFileTransfer {
  final downloaded = <String>[];
  var uploads = 0;
  bool failUpload = false;
  bool failDownload = false;

  @override
  Future<EntityFile?> pickAndUpload() async {
    if (failUpload) throw StateError('boom');
    uploads++;
    return EntityFile(
      id: 'f-new-$uploads',
      name: 'new$uploads.pdf',
      mediaType: 'application/pdf',
    );
  }

  @override
  Future<bool> download(EntityFile file) async {
    if (failDownload) throw StateError('boom');
    downloaded.add(file.id);
    return true;
  }
}

const _definition = EntityDefinition(
  key: 'doc',
  fields: [
    FieldDefinition(key: 'title', required: true),
    FieldDefinition(key: 'attachment', kind: FieldKind.file),
  ],
);

final _old = EntityFile(
  id: 'f-old',
  name: 'old.pdf',
  mediaType: 'application/pdf',
);

EntityScope _scope(EntityCatalog catalog, IEntityFileTransfer transfer) =>
    EntityScope(
      catalog: catalog,
      labels: _Labels(),
      strings: EntityScreenLocale.ja.buildSync(),
      fileTransfer: transfer,
    );

EntityCatalog _catalog() => EntityCatalog()
  ..register(
    InMemoryEntityRepository(_definition, [
      EntityRecord(
        id: 'd1',
        values: {'title': 'A', 'attachment': _old.toValue()},
      ),
      const EntityRecord(id: 'd2', values: {'title': 'B'}),
    ]),
  );

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

void main() {
  test('値は JSON の文字列で持ち回り、読み戻せる。壊れた値・空は null', () {
    final v = EntityFile.tryParse(_old.toValue());
    expect(v?.id, 'f-old');
    expect(v?.name, 'old.pdf');
    expect(v?.mediaType, 'application/pdf');
    expect(EntityFile.tryParse(''), isNull);
    expect(EntityFile.tryParse('not json'), isNull);
    expect(EntityFile.tryParse('{"name":"x"}'), isNull);
    expect(
      EntityFile(id: 'i', name: '').label,
      'i',
      reason: '名前が無ければ ID',
    );
  });

  testWidgets('台帳: ファイル名が表示され、押すとダウンロードする', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final transfer = _Transfer();
    await tester.pumpWidget(
      _host(
        EntityListPage(
          entityKey: 'doc',
          scope: _scope(_catalog(), transfer),
          showCreate: false,
          onOpen: (r) async {},
          onCreate: () async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('old.pdf'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('file:attachment:d1')));
    await tester.pumpAndSettle();
    expect(transfer.downloaded, ['f-old']);
    expect(find.text('保存しました'), findsOneWidget);
    // ファイルの無い行にはボタンが無い
    expect(find.byKey(const ValueKey('file:attachment:d2')), findsNothing);
  });

  testWidgets('台帳: ダウンロードに失敗したら、通知して落ちない', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final transfer = _Transfer()..failDownload = true;
    await tester.pumpWidget(
      _host(
        EntityListPage(
          entityKey: 'doc',
          scope: _scope(_catalog(), transfer),
          showCreate: false,
          onOpen: (r) async {},
          onCreate: () async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('file:attachment:d1')));
    await tester.pumpAndSettle();
    expect(find.text('ダウンロードに失敗しました'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('編集: アップロードで値が変わり、保存すると取得元に残る', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 1100));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final transfer = _Transfer();
    final catalog = _catalog();
    await tester.pumpWidget(
      _host(
        EntityEditPage(
          entityKey: 'doc',
          id: 'd1',
          scope: _scope(catalog, transfer),
          onOpenChild: (_, _, _) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('old.pdf'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('fileUpload:attachment')));
    await tester.pumpAndSettle();
    expect(find.text('new1.pdf'), findsOneWidget);
    expect(transfer.uploads, 1);

    await tester.tap(find.text('保存'));
    await tester.pumpAndSettle();
    final saved = await catalog.repository('doc')!.findById('d1');
    expect(EntityFile.tryParse(saved!.valueOf('attachment'))?.id, 'f-new-1');
  });

  testWidgets('編集: ファイルの無い行は「ファイルなし」。アップロードに失敗したら項目にエラー', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 1100));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final transfer = _Transfer()..failUpload = true;
    await tester.pumpWidget(
      _host(
        EntityEditPage(
          entityKey: 'doc',
          id: 'd2',
          scope: _scope(_catalog(), transfer),
          onOpenChild: (_, _, _) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('ファイルなし'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('fileUpload:attachment')));
    await tester.pumpAndSettle();
    expect(find.text('アップロードに失敗しました'), findsOneWidget);
    expect(find.text('ファイルなし'), findsOneWidget);
  });

  test('窓口が差し込まれていないときは、使うと UnsupportedError', () {
    const t = UnsupportedEntityFileTransfer();
    expect(t.pickAndUpload(), throwsA(isA<UnsupportedError>()));
    expect(t.download(_old), throwsA(isA<UnsupportedError>()));
    // 使わない import の警告を避けるための参照
    expect(Uint8List(0), isEmpty);
  });
}
