import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_master/shared_master_api.dart';

/// ダッシュボード(ホーム)。画面の枠(タイトルバー・サイドバー)の中に表示する。
///
/// 機能の中身は知らず、各機能の `xxx_api.dart` の型だけで操作する。
/// ボタンは、機能の連携(命令で遷移する)の確認用。
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bus = ref.read(commandBusProvider);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: [
          FilledButton(
            onPressed: () => bus.execute(customerLedgerDestination),
            child: const Text('顧客台帳を開く'),
          ),
          OutlinedButton(
            onPressed: () => bus.execute(supplierLedgerDestination),
            child: const Text('外部供給者台帳を開く'),
          ),
          OutlinedButton(
            onPressed: () => bus.execute(const ShippingKindListDestination()),
            child: const Text('配送区分台帳を開く'),
          ),
        ],
      ),
    );
  }
}
