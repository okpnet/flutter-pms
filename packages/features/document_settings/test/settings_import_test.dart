import 'dart:convert';
import 'dart:typed_data';

import 'package:document_settings/document_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

/// 選ぶファイルを決めておく窓口(OS のダイアログは使わない)。
class _FakePicker implements ISettingsFilePicker {
  _FakePicker(this.file);
  PickedSettingsFile? file;

  @override
  Future<PickedSettingsFile?> pick() async => file;
}

PickedSettingsFile _file(String name, Object content) =>
    PickedSettingsFile(name: name, bytes: Uint8List.fromList(content is String ? utf8.encode(content) : utf8.encode(jsonEncode(content))));

Widget _app(_FakePicker picker, InMemoryAppSettingsGateway gateway) {
  final router = GoRouter(initialLocation: DocumentSettingsPaths.home, routes: const DocumentSettingsModule().routes);
  return ProviderScope(
    overrides: [
      documentSettingsGatewayProvider.overrideWithValue(gateway),
      documentSettingsIsAdminProvider.overrideWithValue(true),
      documentSettingsFilePickerProvider.overrideWithValue(picker),
    ],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _openJson(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1500, 1300));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
  await tester.tap(find.text('JSON'));
  await tester.pumpAndSettle();
}

Future<void> _tap(WidgetTester tester, String key) async {
  await tester.ensureVisible(find.byKey(Key(key)));
  await tester.tap(find.byKey(Key(key)));
  await tester.pumpAndSettle();
}

const _pattern = 'b467dcd7-42c1-47bd-9a85-a4121cb2519b';

void main() {
  testWidgets('JSON ファイルの取り込み: スキーマに通れば、フォームに入り未保存になる(保存は別)', (tester) async {
    final g = InMemoryAppSettingsGateway();
    final picker = _FakePicker(
      _file('settings.json', {
        'version': 1,
        'stamp': {
          'position': {'anchor': 'bottomLeft'},
        },
        'approval': {
          'patterns': {'document': _pattern},
        },
      }),
    );
    await _openJson(tester, _app(picker, g));
    await _tap(tester, 'ds-json-import');
    expect(find.byKey(const Key('ds-json-imported')), findsOneWidget);
    expect(find.textContaining('settings.json を取り込みました'), findsOneWidget);
    expect(find.byKey(const Key('ds-json-issues')), findsNothing);
    expect(find.byKey(const Key('ds-unsaved')), findsOneWidget);
    expect(g.saveCount, 0); // 取り込んだだけでは保存しない

    await _tap(tester, 'ds-save');
    expect(g.saveCount, 1);
    final saved = g.value! as Map;
    expect(((saved['stamp'] as Map)['position'] as Map)['anchor'], 'bottomLeft');
    expect(((saved['approval'] as Map)['patterns'] as Map)['document'], _pattern);
  });

  testWidgets('取り込み: スキーマの誤りは、場所つきで一覧に出して、何も取り込まない', (tester) async {
    final g = InMemoryAppSettingsGateway();
    final picker = _FakePicker(
      _file('bad.json', {
        'version': 1,
        'stamp': {
          'opacity': 3,
          'opacty': 1,
          'position': {'anchor': 'middle'},
        },
        'approval': {
          'patterns': {'document': 'not-a-uuid'},
        },
      }),
    );
    await _openJson(tester, _app(picker, g));
    await _tap(tester, 'ds-json-import');
    expect(find.byKey(const Key('ds-json-issues')), findsOneWidget);
    expect(find.textContaining('スキーマの誤りが'), findsOneWidget);
    expect(find.textContaining('/stamp/position/anchor'), findsOneWidget);
    expect(find.textContaining('/stamp/opacity'), findsOneWidget);
    expect(find.textContaining('/approval/patterns/document'), findsOneWidget);
    expect(find.byKey(const Key('ds-json-imported')), findsNothing);
    expect(find.byKey(const Key('ds-unsaved')), findsNothing); // 何も取り込んでいない
  });

  testWidgets('取り込み: JSON として読めないファイル・取り消しは、何も変えない', (tester) async {
    final g = InMemoryAppSettingsGateway();
    final picker = _FakePicker(_file('broken.json', '{ broken'));
    await _openJson(tester, _app(picker, g));
    await _tap(tester, 'ds-json-import');
    expect(find.text('JSON として読めません。'), findsOneWidget);
    expect(find.byKey(const Key('ds-unsaved')), findsNothing);

    picker.file = null; // ダイアログの取り消し
    await _tap(tester, 'ds-json-import');
    expect(find.byKey(const Key('ds-unsaved')), findsNothing);
  });

  testWidgets('取り込み: BOM つきの UTF-8 も読める', (tester) async {
    final g = InMemoryAppSettingsGateway();
    final body = utf8.encode(
      jsonEncode({
        'version': 1,
        'approval': {
          'patterns': {'document': _pattern},
        },
      }),
    );
    final picker = _FakePicker(PickedSettingsFile(name: 'bom.json', bytes: Uint8List.fromList([0xEF, 0xBB, 0xBF, ...body])));
    await _openJson(tester, _app(picker, g));
    await _tap(tester, 'ds-json-import');
    expect(find.byKey(const Key('ds-json-imported')), findsOneWidget);
  });

  testWidgets('「反映」もスキーマで検査する: 誤りがあれば反映しない', (tester) async {
    final g = InMemoryAppSettingsGateway();
    await _openJson(tester, _app(_FakePicker(null), g));
    final box = find.byKey(const Key('ds-json-0'));
    await tester.enterText(box, jsonEncode({'version': 1, 'stamp': {'shape': {'kind': 'triangle'}}}));
    await _tap(tester, 'ds-json-apply');
    expect(find.byKey(const Key('ds-json-issues')), findsOneWidget);
    expect(find.textContaining('/stamp/shape/kind'), findsOneWidget);
    expect(find.byKey(const Key('ds-unsaved')), findsNothing);

    await tester.enterText(box, jsonEncode({'version': 1, 'stamp': {'shape': {'kind': 'circle'}}}));
    await _tap(tester, 'ds-json-apply');
    expect(find.byKey(const Key('ds-json-issues')), findsNothing);
    expect(find.byKey(const Key('ds-unsaved')), findsOneWidget);
  });
}
