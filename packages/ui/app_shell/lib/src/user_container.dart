import 'package:flutter/material.dart';

import 'app_shell_labels.dart';
import 'menu_model.dart';

/// ログインユーザーの表示(顔写真・名前・役割)と、ユーザーメニュー(設定・ログアウトなど)。
///
/// [compact] のときは名前と役割を隠し、顔写真だけを表示する。
class UserContainer extends StatelessWidget {
  const UserContainer({
    super.key,
    required this.user,
    this.actions = const [],
    this.compact = false,
    this.labels = const AppShellLabels(),
  });

  final AppUser user;
  final List<UserMenuAction> actions;
  final bool compact;
  final AppShellLabels labels;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final avatar = CircleAvatar(
      radius: 16,
      backgroundImage: user.photo,
      child: user.photo == null
          ? Text(user.name.isEmpty ? '?' : user.name.characters.first)
          : null,
    );
    final content = Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        avatar,
        if (!compact)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(user.name, style: theme.textTheme.labelLarge),
              if (user.role.isNotEmpty)
                Text(user.role, style: theme.textTheme.bodySmall),
            ],
          ),
        if (actions.isNotEmpty) const Icon(Icons.arrow_drop_down),
      ],
    );
    if (actions.isEmpty) return content;
    return PopupMenuButton<UserMenuAction>(
      tooltip: labels.userMenu,
      onSelected: (a) => a.onSelected(),
      itemBuilder: (context) => [
        for (final a in actions)
          PopupMenuItem(
            value: a,
            child: Row(
              spacing: 8,
              children: [
                if (a.icon != null) Icon(a.icon, size: 18),
                Text(a.label),
              ],
            ),
          ),
      ],
      child: content,
    );
  }
}
