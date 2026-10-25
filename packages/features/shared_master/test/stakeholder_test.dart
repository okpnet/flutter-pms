import 'package:baton_lib/baton_lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_master/shared_master_api.dart';
import 'package:shared_master/src/stakeholder/stakeholder_module.dart';

EntityCatalog _catalog() {
  const module = StakeholderModule();
  final container = ProviderContainer();
  addTearDown(container.dispose);
  final registered = Provider<void>(
    (ref) => module.registerHandlers(CommandHandlerRegistry(), ref),
  );
  container.read(registered);
  return container.read(entityCatalogProvider);
}

void main() {
  const module = StakeholderModule();

  test('顧客台帳・外部供給者台帳は、同じ実体を役割で絞って開く', () {
    final customer = module.locationOf(customerLedgerDestination);
    final supplier = module.locationOf(supplierLedgerDestination);
    expect(Uri.parse(customer!).path, '/e/stakeholder');
    expect(Uri.parse(customer).queryParameters, {'f.is_customer': 'はい'});
    expect(Uri.parse(supplier!).queryParameters, {'f.is_supplier': 'はい'});
  });

  test('新規は、台帳の役割のフラグを初期値にする', () {
    final location = module.locationOf(
      const EntityEditDestination(
        stakeholderEntityKey,
        initialValues: {'is_customer': 'はい'},
      ),
    );
    expect(Uri.parse(location!).path, '/e/stakeholder/new');
    expect(Uri.parse(location).queryParameters, {'d.is_customer': 'はい'});
  });

  test('顧客・外部供給者の選択肢は、役割で絞った利害関係者', () async {
    final catalog = _catalog();
    final all = await catalog.repository(stakeholderEntityKey)!.find(take: 1000);
    final customers = await catalog.options('customer');
    final suppliers = await catalog.options('supplier');
    expect(customers, isNotEmpty);
    expect(suppliers, isNotEmpty);
    expect(
      customers.map((o) => o.id),
      [for (final r in all) if (r.valueOf('is_customer') == 'はい') r.id],
    );
    expect(
      customers.map((o) => o.id).toSet().intersection(
        suppliers.map((o) => o.id).toSet(),
      ),
      isEmpty,
    );
  });

  test('顧客コードの重複は保存できない', () async {
    final catalog = _catalog();
    final repository = catalog.repository(stakeholderEntityKey)!;
    final first = (await repository.find(take: 1)).first;
    expect(
      () => repository.save(
        EntityRecord(
          id: '',
          values: {...first.values, 'name': '別の名称'},
        ),
      ),
      throwsA(isA<EntityValidationException>()),
    );
  });
}
