import 'package:app_shell/app_shell.dart';
import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../i18n/strings_provider.dart';

/// ダッシュボード。件数のコンテナ(`dashboard_container`)の領域を置く。
///
/// 表示するときに、保存された配置を設定から読み込む。「配置を編集」で、コンテナ・項目の
/// 追加・削除・並び替え・大きさを変える(変更はすぐに設定として保存する)。
class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  bool _editing = false;

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(appCoreStringsProvider).dashboard;
    return ScreenScaffold(
      title: t.title,
      actions: [
        TextButton.icon(
          key: const ValueKey('dashboardEdit'),
          icon: Icon(_editing ? Icons.check : Icons.edit_outlined),
          label: Text(_editing ? t.done : t.edit),
          onPressed: () => setState(() => _editing = !_editing),
        ),
      ],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: _editing
            ? const DashboardContainerEditor()
            : const DashboardContainerArea(),
      ),
    );
  }
}
