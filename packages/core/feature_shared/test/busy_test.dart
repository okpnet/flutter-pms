import 'dart:async';

import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('run: 実行中だけ処理中になり、終わると(失敗しても)戻る。二重には実行しない', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final notifier = container.read(busyProvider.notifier);
    final gate = Completer<int>();
    final first = notifier.run('計算中', () => gate.future);
    expect(container.read(busyProvider).isBusy, isTrue);
    expect(container.read(busyProvider).message, '計算中');
    // 処理中の二重実行は、何もしない
    expect(await notifier.run('計算中', () async => 1), isNull);
    gate.complete(7);
    expect(await first, 7);
    expect(container.read(busyProvider).isBusy, isFalse);

    await expectLater(
      notifier.run('計算中', () async => throw StateError('失敗')),
      throwsStateError,
    );
    expect(container.read(busyProvider).isBusy, isFalse);
  });

  testWidgets('処理中は、画面全体の操作と戻る操作が無効になり、経過時間が進む', (tester) async {
    var taps = 0;
    late ProviderContainer container;
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          builder: (context, child) => BusyScope(child: child!),
          home: Builder(
            builder: (context) {
              container = ProviderScope.containerOf(context);
              return Scaffold(
                body: ElevatedButton(
                  onPressed: () => taps++,
                  child: const Text('実行'),
                ),
              );
            },
          ),
        ),
      ),
    );
    await tester.tap(find.text('実行'));
    expect(taps, 1);

    final gate = Completer<void>();
    final running = container
        .read(busyProvider.notifier)
        .run('計算中', () => gate.future);
    await tester.pump();
    expect(find.byKey(const ValueKey('busyBarrier')), findsOneWidget);
    expect(find.text('計算中'), findsOneWidget);
    // 押しても反応しない
    await tester.tap(find.text('実行'), warnIfMissed: false);
    expect(taps, 1);
    // 戻る操作も止める
    final popScope = tester.widget<PopScope>(
      find
          .descendant(
            of: find.byType(BusyScope),
            matching: find.byType(PopScope),
          )
          .first,
    );
    expect(popScope.canPop, isFalse);
    // 経過時間が進む(処理が止まっていない表示)
    expect(find.text('経過時間 00:00'), findsOneWidget);
    await tester.pump(const Duration(seconds: 3));
    expect(find.text('経過時間 00:03'), findsOneWidget);

    gate.complete();
    await running;
    await tester.pump();
    expect(find.byKey(const ValueKey('busyBarrier')), findsNothing);
    await tester.tap(find.text('実行'));
    expect(taps, 2);
  });
}
