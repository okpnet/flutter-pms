import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../i18n/strings_provider.dart';
import '../customers_provider.dart';

/// 顧客を1件選んで id を返す(CustomerPickerDestination の遷移先)。
class CustomerPickerPage extends ConsumerWidget {
  const CustomerPickerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(salesStringsProvider).customer;
    final customers = ref.watch(customersProvider);
    return Scaffold(
      appBar: AppBar(title: Text(t.pickerTitle)),
      body: customers.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('${t.loadFailed}: $e')),
        data: (list) => ListView(
          children: [
            for (final c in list)
              ListTile(
                title: Text(c.name),
                subtitle: Text(c.code),
                onTap: () => context.pop<String?>(c.id),
              ),
          ],
        ),
      ),
    );
  }
}
