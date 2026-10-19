import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../customers_provider.dart';

/// 顧客の編集。保存すると一覧の状態を更新して戻る。
class CustomerEditPage extends ConsumerStatefulWidget {
  const CustomerEditPage({super.key, required this.id});

  /// パスから復元した id。数値でなければ null。
  final int? id;

  @override
  ConsumerState<CustomerEditPage> createState() => _CustomerEditPageState();
}

class _CustomerEditPageState extends ConsumerState<CustomerEditPage> {
  late final TextEditingController _name;
  Customer? _customer;

  @override
  void initState() {
    super.initState();
    final id = widget.id;
    _customer = id == null
        ? null
        : ref.read(customersProvider.notifier).findById(id);
    _name = TextEditingController(text: _customer?.name ?? '');
  }

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  void _save() {
    final customer = _customer;
    if (customer == null) return;
    ref.read(customersProvider.notifier).rename(customer.id, _name.text);
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final customer = _customer;
    return Scaffold(
      appBar: AppBar(title: const Text('顧客の編集')),
      body: customer == null
          ? const Center(child: Text('顧客が見つかりません'))
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ID: ${customer.id}'),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _name,
                    decoration: const InputDecoration(labelText: '顧客名'),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(onPressed: _save, child: const Text('保存')),
                ],
              ),
            ),
    );
  }
}
