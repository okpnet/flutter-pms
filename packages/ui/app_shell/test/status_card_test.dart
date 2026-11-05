import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget _app(Widget child, {ThemeData? theme}) => MaterialApp(
  theme: theme,
  home: Scaffold(body: child),
);

void main() {
  testWidgets('見出し・説明・注記・ボタンを、中央のカードに縦に並べる', (tester) async {
    var pressed = 0;
    await tester.pumpWidget(
      _app(
        StatusCard(
          leading: const StatusIcon(Icons.check),
          title: '完了しました',
          message: '説明です',
          note: '5秒後に移動します',
          actions: [
            FilledButton(onPressed: () => pressed++, child: const Text('今すぐ')),
            OutlinedButton(onPressed: () {}, child: const Text('戻る')),
          ],
        ),
      ),
    );
    expect(find.text('完了しました'), findsOneWidget);
    expect(find.text('説明です'), findsOneWidget);
    expect(find.text('5秒後に移動します'), findsOneWidget);
    expect(find.byType(LinearProgressIndicator), findsNothing);
    final card = tester.getSize(find.byType(Card));
    expect(card.width, lessThanOrEqualTo(480));
    await tester.tap(find.text('今すぐ'));
    expect(pressed, 1);
  });

  testWidgets('説明・注記・ボタンは省略でき、進行バーを出せる', (tester) async {
    await tester.pumpWidget(
      _app(
        const StatusCard(
          leading: CircularProgressIndicator(),
          title: '起動しています',
          showProgress: true,
        ),
      ),
    );
    expect(find.text('起動しています'), findsOneWidget);
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
    expect(find.byType(FilledButton), findsNothing);
  });

  testWidgets('狭い幅でも、あふれずにカードに収まる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(320, 640));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      _app(
        StatusCard(
          leading: const StatusIcon(Icons.error_outline, isError: true),
          title: 'とても長い見出しの文字列が、幅の狭い画面でも折り返して表示されること',
          message: '長い説明も折り返す。' * 8,
          actions: [
            FilledButton(onPressed: () {}, child: const Text('ボタン一')),
            FilledButton(onPressed: () {}, child: const Text('ボタン二')),
            FilledButton(onPressed: () {}, child: const Text('ボタン三')),
          ],
        ),
      ),
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('StatusIcon: 通常は accent-soft、エラーは danger-soft の地(テーマから取る)', (
    tester,
  ) async {
    final theme = ThemeData(
      colorScheme: const ColorScheme.light(
        primaryContainer: Color(0xFFDCEFEF),
        onPrimaryContainer: Color(0xFF0B6B6F),
        errorContainer: Color(0xFFFBE3E1),
        onErrorContainer: Color(0xFFB3261E),
      ),
    );
    BoxDecoration decorationOf(WidgetTester t) {
      final container = t.widget<Container>(
        find.descendant(
          of: find.byType(StatusIcon),
          matching: find.byType(Container),
        ),
      );
      return container.decoration! as BoxDecoration;
    }

    await tester.pumpWidget(_app(const StatusIcon(Icons.check), theme: theme));
    expect(decorationOf(tester).color, const Color(0xFFDCEFEF));
    expect(decorationOf(tester).shape, BoxShape.circle);
    expect(
      tester.widget<Icon>(find.byIcon(Icons.check)).color,
      const Color(0xFF0B6B6F),
    );

    await tester.pumpWidget(
      _app(const StatusIcon(Icons.error_outline, isError: true), theme: theme),
    );
    expect(decorationOf(tester).color, const Color(0xFFFBE3E1));
    expect(
      tester.widget<Icon>(find.byIcon(Icons.error_outline)).color,
      const Color(0xFFB3261E),
    );
    expect(tester.getSize(find.byType(StatusIcon)), const Size(64, 64));
  });
}
