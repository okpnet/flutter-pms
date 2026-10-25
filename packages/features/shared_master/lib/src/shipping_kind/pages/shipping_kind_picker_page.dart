import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../i18n/strings_provider.dart';
import '../shipping_kinds_provider.dart';

/// 配送区分を1件選んで id を返す(ShippingKindPickerDestination の遷移先)。
class ShippingKindPickerPage extends ConsumerWidget {
  const ShippingKindPickerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(sharedMasterStringsProvider).shippingKind;
    final kinds = ref.watch(shippingKindsProvider);
    return ScreenScaffold(
      title: t.pickerTitle,
      body: kinds.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('${t.loadFailed}: $e')),
        data: (list) => ListView(
          children: [
            for (final k in list)
              ListTile(
                title: Text(k.name),
                subtitle: Text(k.code),
                onTap: () => context.pop<String?>(k.id),
              ),
          ],
        ),
      ),
    );
  }
}
