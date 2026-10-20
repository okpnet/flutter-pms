import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:theme_lib/theme_lib.dart';

import 'fake_logger.dart';

class _App extends ConsumerWidget {
  const _App({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) => MaterialApp(
    theme: ref.watch(lightThemeProvider),
    darkTheme: ref.watch(darkThemeProvider),
    themeMode: ref.watch(themeModeProvider),
    home: Scaffold(body: child),
  );
}

Future<ProviderContainer> _pump(WidgetTester tester, Widget child) async {
  final container = ProviderContainer(
    overrides: [themeLoggerProvider.overrideWithValue(FakeLogger())],
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: container,
      child: _App(child: child),
    ),
  );
  return container;
}

void main() {
  testWidgets('モード切り替えで画面の明るさが変わる', (tester) async {
    late BuildContext captured;
    final container = await _pump(
      tester,
      Builder(
        builder: (c) {
          captured = c;
          return const SizedBox();
        },
      ),
    );
    container.read(themeManagerProvider.notifier).setMode(ThemeMode.light);
    await tester.pumpAndSettle();
    expect(Theme.of(captured).brightness, Brightness.light);

    container.read(themeManagerProvider.notifier).setMode(ThemeMode.dark);
    await tester.pumpAndSettle();
    expect(Theme.of(captured).brightness, Brightness.dark);
  });

  testWidgets('テーマ切り替えがウィジェットへ即時反映される', (tester) async {
    late BuildContext captured;
    final container = await _pump(
      tester,
      Builder(
        builder: (c) {
          captured = c;
          return const SizedBox();
        },
      ),
    );
    final before = Theme.of(captured).colorScheme.primary;
    container.read(themeManagerProvider.notifier).select('ocean');
    await tester.pumpAndSettle();
    expect(Theme.of(captured).colorScheme.primary, isNot(before));
    expect(captured.spacing, 4);
  });

  testWidgets('spaceAll/spaceVertical が SpaceField の値で Padding になる', (
    tester,
  ) async {
    await _pump(
      tester,
      Builder(
        builder: (c) => Column(
          children: [
            const Text('a').spaceAll(c),
            const Text('b').spaceVertical(c),
          ],
        ),
      ),
    );
    final paddings = tester
        .widgetList<Padding>(find.byType(Padding))
        .map((p) => p.padding)
        .toList();
    expect(paddings, contains(const EdgeInsets.all(4)));
    expect(paddings, contains(const EdgeInsets.symmetric(vertical: 4)));
  });

  testWidgets('ボタンのバリアント: secondary は枠線あり・影なし(土台に負けない)', (tester) async {
    late ButtonStyle style;
    await _pump(
      tester,
      Builder(
        builder: (c) {
          style = filledButtonStyle(Theme.of(c), ThemeVariant.secondary);
          return const SizedBox();
        },
      ),
    );
    expect(style.elevation!.resolve({}), 0);
    expect(style.side!.resolve({})!.width, 0.8);
    expect(style.minimumSize!.resolve({}), const Size(128, 46));
  });

  testWidgets('バリアント変換したボタンが描画できる', (tester) async {
    await _pump(
      tester,
      Builder(
        builder: (c) => Column(
          children: [
            for (final v in ThemeVariant.values) ...[
              FilledButton(
                onPressed: () {},
                child: Text('f-${v.name}'),
              ).toVariant(c, v),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ).toVariant(c, v),
              Checkbox(value: true, onChanged: (_) {}).toVariant(c, v),
            ],
            TextFormField().toSearch(c),
          ],
        ),
      ),
    );
    expect(tester.takeException(), isNull);
    expect(find.text('f-primary'), findsOneWidget);
  });

  testWidgets('ThemeExtension が無いテーマでは分かりやすいエラー', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (c) {
            expect(() => c.spacing, throwsA(isA<FlutterError>()));
            return const SizedBox();
          },
        ),
      ),
    );
  });

  test('SpaceField / BorderField の lerp と copyWith', () {
    const a = SpaceField(spacing: 0);
    final mid = a.lerp(const SpaceField(spacing: 10), 0.5);
    expect(mid.spacing, 5);
    expect(a.copyWith(spacing: 2).spacing, 2);
    expect(a.lerp(null, 0.5), a);

    const b = BorderField(radius: 0);
    expect(b.lerp(const BorderField(radius: 8), 0.5).radius, 4);
    expect(b.copyWith(fullRadius: 1).fullRadius, 1);
  });
}
