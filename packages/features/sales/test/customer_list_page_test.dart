import 'package:sales/src/customer/customer_repository.dart';
import 'package:sales/src/customer/customers_provider.dart';
import 'package:sales/src/customer/pages/customer_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

void main() {
  test('取得元から顧客を取得できる(data_strategist 経由)', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final list = await container.read(customersProvider.future);
    expect(list.map((c) => c.name), ['東京精機', '栃木製作所', '大阪工業']);
  });

  test('改名すると取得結果へ反映される', () async {
    final repo = InMemoryCustomerRepository();
    await repo.rename('3c9a7e10-0000-4000-8000-000000000001', '新名称');
    expect(
      (await repo.findById('3c9a7e10-0000-4000-8000-000000000001'))?.name,
      '新名称',
    );
    expect(await repo.findById('none'), isNull);
  });

  test('skip / take が効く', () async {
    final repo = InMemoryCustomerRepository();
    final list = await repo.find(take: 1, skip: 1);
    expect(list.single.id, '3c9a7e10-0000-4000-8000-000000000002');
  });

  testWidgets('顧客台帳に列と行が表示される', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
        ],
        child: Consumer(
          builder: (context, ref, _) => MaterialApp(
            theme: ref.watch(lightThemeProvider),
            home: const CustomerListPage(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('コード'), findsWidgets);
    expect(find.text('東京精機'), findsOneWidget);
    expect(find.text('C003'), findsOneWidget);
  });
}
