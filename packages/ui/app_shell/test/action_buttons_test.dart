import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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
