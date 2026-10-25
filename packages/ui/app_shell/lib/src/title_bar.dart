import 'package:flutter/material.dart';

import 'app_shell_labels.dart';
import 'menu_model.dart';
import 'user_container.dart';

/// タイトルバー。アプリのタイトル(または画像)、モバイルのときのハンバーガーボタン、ログインユーザー。
///
/// ユーザー([user])が null(ログインしていない・権限が無い)のときは、ハンバーガーとユーザーを出さない。
class AppTitleBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTitleBar({
    super.key,
    required this.title,
    this.logo,
    this.user,
    this.userActions = const [],
    this.showHamburger = false,
    this.onOpenMenu,
    this.compactUser = false,
    this.labels = const AppShellLabels(),
  });

  final String title;

  /// タイトルの前に置く画像(ロゴ)。
  final Widget? logo;
  final AppUser? user;
  final List<UserMenuAction> userActions;

  /// ハンバーガーボタンを出す(モバイル)。
  final bool showHamburger;
  final VoidCallback? onOpenMenu;
  final bool compactUser;
  final AppShellLabels labels;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return AppBar(
      backgroundColor: scheme.primary,
      foregroundColor: scheme.onPrimary,
      automaticallyImplyLeading: false,
      leading: showHamburger && user != null
          ? IconButton(
              tooltip: labels.openMenu,
              icon: const Icon(Icons.menu),
              onPressed: onOpenMenu,
            )
          : null,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [?logo, Text(title)],
      ),
      actions: [
        if (user != null)
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: UserContainer(
              user: user!,
              actions: userActions,
              compact: compactUser,
              labels: labels,
            ),
          ),
      ],
    );
  }
}
