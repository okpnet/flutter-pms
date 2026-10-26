import 'package:dashboard_container_example/main.dart';
import 'package:flutter/material.dart' show Size, ValueKey;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';

void main() {
  testWidgets('example が起動し、初期の配置(Full・1/2・1/4)を表示する', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1300, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ExampleApp(
        logger: const NoopLoggerProvider(),
        storage: InMemorySettingsStorage(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('container:full')), findsOneWidget);
    expect(find.byKey(const ValueKey('container:half')), findsOneWidget);
    expect(find.byKey(const ValueKey('container:quarter')), findsOneWidget);
    // Full は 3 つ、1/2 は 2 つ、1/4 は 1 つ
    expect(find.byKey(const ValueKey('count:f3')), findsOneWidget);
    expect(find.byKey(const ValueKey('count:h2')), findsOneWidget);
    expect(find.byKey(const ValueKey('count:h3')), findsNothing);
    expect(find.byKey(const ValueKey('count:q1')), findsOneWidget);
  });
}
