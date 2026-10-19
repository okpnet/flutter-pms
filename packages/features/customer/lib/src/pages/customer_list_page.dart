import 'package:customer_api/customer_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../customers_provider.dart';

/// 顧客一覧。行をタップすると編集へ(遷移も CommandBus 経由)。
class CustomerListPage extends ConsumerWidget {
  const CustomerListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customers = ref.watch(customersProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('顧客一覧')),
      body: ListView(
        children: [
          for (final c in customers)
            ListTile(
              leading: Text('${c.id}'),
              title: Text(c.name),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => ref
                  .read(commandBusProvider)
                  .execute(CustomerEditDestination(id: c.id)),
            ),
        ],
      ),
    );
  }
}
