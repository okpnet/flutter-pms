import 'package:dashboard_container/dashboard_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:settings_keeper/settings_keeper.dart';

void main() {
  test('配置の保存先の識別子は、ユーザーごとに違い、保存先の規則に合う', () {
    expect(DashboardContainerOriginator.keyFor(null), 'dashboard_containers');
    expect(DashboardContainerOriginator.keyFor(''), 'dashboard_containers');
    final a = DashboardContainerOriginator.keyFor('yamada');
    final b = DashboardContainerOriginator.keyFor('Yamada');
    final c = DashboardContainerOriginator.keyFor('山田');
    expect({a, b, c}.length, 3, reason: '大文字・日本語でも別のユーザーは別の識別子');
    expect(DashboardContainerOriginator.keyFor('yamada'), a, reason: '同じIDは同じ');
    for (final key in [a, b, c]) {
      expect(() => validateSettingsKey(key), returnsNormally, reason: key);
    }
  });

  test('持ち主を指定した持ち主は、その識別子で保存する', () {
    final originator = DashboardContainerOriginator(
      read: () => const [],
      apply: (_) {},
      owner: 'yamada',
    );
    expect(
      originator.settingsKey,
      DashboardContainerOriginator.keyFor('yamada'),
    );
    expect(originator.createMemento().key, originator.settingsKey);
  });
}
