import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';

import '../../i18n/strings_provider.dart';
import '../customers_provider.dart';

/// 顧客の編集。保存すると取得元を更新して戻る。
///
/// 配送区分の選択は、顧客の編集を拡張するときに `shared_master_api.dart` の
/// `ShippingKindPickerDestination` で接続する(sales の CLAUDE.md の条件)。
class CustomerEditPage extends ConsumerStatefulWidget {
  const CustomerEditPage({super.key, required this.id});

  /// パスから復元した id(UUID の文字列)。
  final String? id;

  @override
  ConsumerState<CustomerEditPage> createState() => _CustomerEditPageState();
}

class _CustomerEditPageState extends ConsumerState<CustomerEditPage> {
  final _name = TextEditingController();
  Customer? _customer;
  bool _loading = true;
  String Function(SalesStrings t)? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final id = widget.id;
    try {
      final customer = id == null
          ? null
          : await ref.read(customerRepositoryProvider).findById(id);
      if (!mounted) return;
      setState(() {
        _customer = customer;
        _name.text = customer?.name ?? '';
        _loading = false;
      });
    } catch (e, s) {
      ref
          .read(loggerProvider)
          .error('[customer] 顧客の取得に失敗: id=$id', ex: e, trace: s);
      if (mounted) {
        setState(() {
          _loading = false;
          _error = (t) => t.customer.loadFailed;
        });
      }
    }
  }

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final customer = _customer;
    if (customer == null) return;
    try {
      await ref
          .read(customerRepositoryProvider)
          .rename(customer.id, _name.text);
    } catch (e, s) {
      ref
          .read(loggerProvider)
          .error('[customer] 顧客の更新に失敗: ${customer.toJson()}', ex: e, trace: s);
      setState(() => _error = (t) => t.customer.saveFailed);
      return;
    }
    ref.invalidate(customersProvider);
    if (mounted) context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(salesStringsProvider);
    final customer = _customer;
    final error = _error?.call(t);
    return Scaffold(
      appBar: AppBar(title: Text(t.customer.editTitle)),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : customer == null
          ? Center(child: Text(error ?? t.customer.notFound))
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${t.customer.fields.id}: ${customer.id}'),
                  Text('${t.customer.fields.code}: ${customer.code}'),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      labelText: t.customer.fields.name,
                    ),
                  ),
                  if (error != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        error,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  const SizedBox(height: 16),
                  FilledButton(onPressed: _save, child: Text(t.common.save)),
                ],
              ),
            ),
    );
  }
}
