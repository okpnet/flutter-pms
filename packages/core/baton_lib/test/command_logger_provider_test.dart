import 'package:baton_lib/baton_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fake_logger.dart';

void main() {
  test('Widgetなしで ProviderContainer から差し替えたロガーを取得できる', () {
    final fake = FakeLoggerProvider();
    final container = ProviderContainer(
      overrides: [commandLoggerProvider.overrideWithValue(fake)],
    );
    addTearDown(container.dispose);

    expect(container.read(commandLoggerProvider), same(fake));
  });

  test('未差し替えなら読み出し時に失敗する', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    expect(() => container.read(commandLoggerProvider), throwsA(anything));
  });
}
