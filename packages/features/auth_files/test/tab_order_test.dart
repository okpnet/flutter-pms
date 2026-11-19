import 'package:auth_files/src/pages/form_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('タブキーで ID → パスワード → ボタンの順に移り、余分な停止がない', (tester) async {
    final a = TextEditingController();
    final b = TextEditingController();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              FieldRow(controller: a, label: 'id', requiredLabel: '必須', autofocus: true),
              FieldRow(controller: b, label: 'pw', requiredLabel: '必須'),
              FilledButton(onPressed: () {}, child: const Text('go')),
            ],
          ),
        ),
      ),
    );
    await tester.pump();
    String where() {
      final w = FocusManager.instance.primaryFocus?.context;
      if (w == null) return 'none';
      if (w.findAncestorWidgetOfExactType<FilledButton>() != null) return 'button';
      final field = w.findAncestorWidgetOfExactType<TextField>();
      return field?.controller == a ? 'id' : field?.controller == b ? 'pw' : 'other';
    }

    final seen = <String>[where()];
    for (var i = 0; i < 2; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);
      await tester.pump();
      seen.add(where());
    }
    expect(seen, ['id', 'pw', 'button']);
  });
}
