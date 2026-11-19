import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  _confirmTests();
  testWidgets('主・副のボタンは同じ幅で、中央に横並びになる', (tester) async {
    var primary = 0;
    var secondary = 0;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 800,
            child: ActionButtons(
              primaryLabel: '設定する',
              onPrimary: () => primary++,
              secondaryLabel: '標準に戻す',
              onSecondary: () => secondary++,
            ),
          ),
        ),
      ),
    );
    final a = tester.getRect(find.byKey(const ValueKey('actionPrimary')));
    final b = tester.getRect(find.byKey(const ValueKey('actionSecondary')));
    expect(a.width, b.width);
    expect(a.height, greaterThanOrEqualTo(48));
    expect(a.center.dy, b.center.dy); // 横並び
    expect(a.left, lessThan(b.left));
    // 2 つの中心が、幅 800 の中央(400)にある
    expect((a.left + b.right) / 2, closeTo(400, 0.5));
    await tester.tap(find.text('設定する'));
    await tester.tap(find.text('標準に戻す'));
    expect([primary, secondary], [1, 1]);
  });
}

void _confirmTests() {
  testWidgets('保存・削除・補助の並びと色: 同じ幅で、削除はエラーの色', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 900,
            child: ActionButtons(
              primaryLabel: '保存',
              onPrimary: () {},
              dangerLabel: '削除',
              onDanger: () {},
              tertiaryLabel: '終了',
              onTertiary: () {},
            ),
          ),
        ),
      ),
    );
    final p = tester.getRect(find.byKey(const ValueKey('actionPrimary')));
    final d = tester.getRect(find.byKey(const ValueKey('actionDanger')));
    final t = tester.getRect(find.byKey(const ValueKey('actionTertiary')));
    expect(p.width, d.width);
    expect(d.width, t.width);
    expect(p.left, lessThan(d.left));
    expect(d.left, lessThan(t.left));
    final style = tester
        .widget<OutlinedButton>(find.byKey(const ValueKey('actionDanger')))
        .style!;
    final scheme = Theme.of(tester.element(find.text('削除'))).colorScheme;
    expect(style.foregroundColor!.resolve({}), scheme.error);
  });

  testWidgets('確認のダイアログ: 実行は true、取り消しは false', (tester) async {
    bool? result;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => TextButton(
            onPressed: () async => result = await showConfirmDialog(
              context,
              title: '確認',
              message: '消しますか',
              confirmLabel: '削除',
              cancelLabel: '取り消し',
              destructive: true,
            ),
            child: const Text('開く'),
          ),
        ),
      ),
    );
    await tester.tap(find.text('開く'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('取り消し'));
    await tester.pumpAndSettle();
    expect(result, false);
    await tester.tap(find.text('開く'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('削除'));
    await tester.pumpAndSettle();
    expect(result, true);
  });
}
