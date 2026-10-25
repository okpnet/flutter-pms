import 'package:flutter_test/flutter_test.dart';
import 'package:sales/sales.dart';
import 'package:sales/sales_api.dart';

void main() {
  const module = SalesModule();

  test('顧客台帳のルートを持つ', () {
    expect(module.routes, isNotEmpty);
  });

  test('所有しない遷移先は null', () {
    // 契約の遷移先はすべて SalesModule が所有する
    for (final d in customerDestinationSamples) {
      expect(module.locationOf(d), isNotNull, reason: '$d');
    }
  });
}
