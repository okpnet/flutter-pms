import 'dart:convert';

import 'package:backstage/backstage.dart';
import 'package:backstage_example/main.dart';
import 'package:flutter/material.dart' show Size, ValueKey;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

void main() {
  Future<void> open(WidgetTester tester, InMemoryBackstageStore store) async {
    await tester.binding.setSurfaceSize(const Size(1000, 1400));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ExampleApp(logger: const NoopLoggerProvider(), store: store),
    );
    await tester.pumpAndSettle();
    expect(find.text('裏設定 (example)'), findsOneWidget);
    await tester.tap(find.text('裏設定のページ'));
    await tester.pumpAndSettle();
  }

  testWidgets('example が起動し、裏設定のページを開いて保存できる', (tester) async {
    final store = InMemoryBackstageStore();
    await open(tester, store);
    expect(find.text('裏設定'), findsOneWidget);
    expect(find.text('既定値'), findsWidgets, reason: '見本の既定値が出どころとして出る');

    await tester.enterText(
      find.byKey(const ValueKey('field-pocketbaseUrl')),
      'http://192.168.1.103:8090',
    );
    await tester.tap(find.byKey(const ValueKey('save')));
    await tester.pumpAndSettle();
    expect(jsonDecode(store.value!), {'pocketbaseUrl': 'http://192.168.1.103:8090'});
    expect(find.byKey(const ValueKey('notice')), findsOneWidget);
  });

  testWidgets('保管庫の値は、既定値より優先して出る(出どころ「裏設定」)', (tester) async {
    final store = InMemoryBackstageStore('{"logLevel":"debug"}');
    await open(tester, store);
    expect(find.text('裏設定'), findsWidgets);
    expect(find.text('debug'), findsWidgets);
  });
}
