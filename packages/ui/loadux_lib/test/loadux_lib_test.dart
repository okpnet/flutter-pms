import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loadux_lib/loadux_lib.dart';

Widget _app(Widget child, {ThemeData? theme}) =>
    MaterialApp(theme: theme, home: Scaffold(body: child));

Size _circle(WidgetTester tester) =>
    tester.getSize(find.byKey(const ValueKey('loadingCircle')));

void main() {
  testWidgets('既定の見た目(テーマに LoadingTheme が無いとき)', (tester) async {
    await tester.pumpWidget(_app(const LoadingIndicator()));
    expect(_circle(tester).width, LoadingTheme.fallback.size);
    final p = tester.widget<CircularProgressIndicator>(
      find.byType(CircularProgressIndicator),
    );
    expect(p.strokeWidth, LoadingTheme.fallback.strokeWidth);
  });

  testWidgets('テーマの LoadingTheme で見た目を差し替えられる。引数が優先', (tester) async {
    final theme = ThemeData(
      extensions: const [
        LoadingTheme(color: Colors.red, strokeWidth: 6, size: 48, barHeight: 9),
      ],
    );
    await tester.pumpWidget(_app(const LoadingIndicator(), theme: theme));
    var p = tester.widget<CircularProgressIndicator>(
      find.byType(CircularProgressIndicator),
    );
    expect(p.color, Colors.red);
    expect(p.strokeWidth, 6);
    expect(_circle(tester).width, 48);

    await tester.pumpWidget(
      _app(const LoadingIndicator(size: 16, strokeWidth: 2), theme: theme),
    );
    p = tester.widget<CircularProgressIndicator>(
      find.byType(CircularProgressIndicator),
    );
    expect(p.strokeWidth, 2);
    expect(_circle(tester).width, 16);

    await tester.pumpWidget(_app(const LoadingBar(), theme: theme));
    expect(
      tester
          .widget<LinearProgressIndicator>(find.byType(LinearProgressIndicator))
          .minHeight,
      9,
    );
  });

  testWidgets('centered は中央に置き、文言を円の下に出す', (tester) async {
    await tester.pumpWidget(
      _app(const LoadingIndicator.centered(label: '読み込み中')),
    );
    expect(find.text('読み込み中'), findsOneWidget);
    expect(find.byType(Center), findsWidgets);
  });
}
