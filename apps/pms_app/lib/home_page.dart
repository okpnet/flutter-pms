import 'package:customer_api/customer_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ホーム。顧客機能の中身は知らず、customer_api の型だけで操作する。
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  Future<void> _pickCustomer(BuildContext context, WidgetRef ref) async {
    final bus = ref.read(commandBusProvider);
    final messenger = ScaffoldMessenger.of(context);

    // 画面遷移して結果(int?)を受け取る
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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
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
          ],
        ),
      ),
    );
  }
}
