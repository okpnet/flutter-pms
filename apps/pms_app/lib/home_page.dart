import 'package:sales/sales_api.dart';
import 'package:shared_master/shared_master_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entity_menu.dart';

/// ホーム。顧客機能の中身は知らず、sales_api の型だけで操作する。
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  Future<void> _pickCustomer(BuildContext context, WidgetRef ref) async {
    final bus = ref.read(commandBusProvider);
    final messenger = ScaffoldMessenger.of(context);

    // 画面遷移して結果(id の文字列)を受け取る
    final id = await bus.execute(const CustomerPickerDestination());
    if (id == null) return;

    // 別の命令で顧客名を引く
    final name = await bus.execute(FindCustomerNameCommand(id: id));
    messenger.showSnackBar(SnackBar(content: Text('選択: $name (id=$id)')));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('PMS')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              FilledButton(
                onPressed: () => ref
                    .read(commandBusProvider)
                    .execute(const CustomerListDestination()),
                child: const Text('顧客一覧を開く'),
              ),
              OutlinedButton(
                onPressed: () => _pickCustomer(context, ref),
                child: const Text('顧客を選択する'),
              ),
              OutlinedButton(
                onPressed: () => ref
                    .read(commandBusProvider)
                    .execute(const ShippingKindListDestination()),
                child: const Text('配送区分台帳を開く'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // 暫定: 業務メニュー(トップメニューのグループ)。共通のシェル部品ができるまでの一覧
          for (final group in entityMenuGroups)
            ExpansionTile(
              title: Text(group.label),
              children: [
                for (final entry in group.entries)
                  ListTile(
                    title: Text(entry.label),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () =>
                        ref.read(commandBusProvider).execute(entry.destination),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
