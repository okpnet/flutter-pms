import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../customers_provider.dart';

/// 顧客を1件選んで id を返す(CustomerPickerDestination の遷移先)。
class CustomerPickerPage extends ConsumerWidget {
  const CustomerPickerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customers = ref.watch(customersProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('顧客を選択')),
      body: ListView(
        children: [
          for (final c in customers)
            ListTile(
              title: Text(c.name),
              subtitle: Text('ID: ${c.id}'),
              onTap: () => context.pop<int?>(c.id),
            ),
        ],
      ),
    );
  }
}
