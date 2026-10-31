import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart' show Size;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:shared_master/shared_master.dart';
import 'package:shared_master/shared_master_api.dart';
import 'package:shared_master/src/stakeholder/stakeholder_module.dart';
import 'package:theme_lib/theme_lib.dart';

void main() {
  const module = StakeholderModule();

  test('サプライヤー・顧客の選択は、利害関係者の台帳を役割で絞った選択画面になる', () {
    final supplier = Uri.parse(
      module.locationOf(const EntityPickerDestination('supplier'))!,
    );
    expect(supplier.path, '/e/stakeholder/pick');
    expect(supplier.queryParameters, {'f.is_supplier': 'はい', 'as': 'supplier'});
    final customer = Uri.parse(
      module.locationOf(const EntityPickerDestination('customer'))!,
    );
    expect(customer.queryParameters, {'f.is_customer': 'はい', 'as': 'customer'});
    // 別名でない実体は、従来どおり
    expect(
      module.locationOf(const EntityPickerDestination('stakeholder')),
      '/e/stakeholder/pick',
    );
  });

  testWidgets('サプライヤーの選択: 見出しは「サプライヤーの選択」、外部供給者だけが並び、選ぶと選択の結果が返る', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(1200, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      FeatureHost(
        title: '共有マスタ',
        modules: const [SharedMasterModule()],
        entries: const [FeatureHostEntry('起点', customerLedgerDestination)],
        logger: const NoopLoggerProvider(),
        overrides: [
          themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
        ],
        themeOf: (ref) => ref.watch(lightThemeProvider),
      ),
    );
    await tester.pumpAndSettle();
    final container = ProviderScope.containerOf(
      tester.element(find.text('起点')),
    );
    final future = container
        .read(commandBusProvider)
        .execute(const EntityPickerDestination('supplier'));
    await tester.pumpAndSettle();

    expect(find.text('サプライヤーの選択'), findsOneWidget);
    expect(find.text('北斗ファスナー株式会社'), findsWidgets);
    expect(find.text('北斗機械株式会社'), findsNothing);

    // 行の操作(ダブルクリック)で選んで戻る
    await tester.tap(find.text('S-001'));
    await tester.pump(const Duration(milliseconds: 50));
    await tester.tap(find.text('S-001'));
    await tester.pumpAndSettle();
    final selection = await future;
    expect(selection?.entityKey, 'supplier');
    expect(selection?.id, '9c2cec53-0000-4000-8000-000000000004');
    expect(selection?.label, contains('北斗ファスナー'));
  });
}
