import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

void main() {
  testWidgets('テーマ切り替えとダーク切り替えが画面に反映される', (tester) async {
    tester.view.physicalSize = const Size(1600, 1200);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    final container = ProviderContainer(
      overrides: [themeLoggerProvider.overrideWithValue(_NullLogger())],
    );
    addTearDown(container.dispose);
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: const ExampleApp(),
      ),
    );
    expect(find.text('Primary'), findsOneWidget);

    await tester.tap(find.text('Dark'));
    await tester.pumpAndSettle();
    expect(
      Theme.of(tester.element(find.text('Primary'))).brightness,
      Brightness.dark,
    );

    await tester.tap(find.text('Ocean'));
    await tester.pumpAndSettle();
    expect(container.read(themeManagerProvider).activeId, 'ocean');
  });
}

class _NullLogger implements ILoggerProvider {
  @override
  int get level => 0;

  @override
  void debug(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void info(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void warn(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void error(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) {}
}
