import 'package:flutter/material.dart';

import 'app_shell_labels.dart';
import 'menu_model.dart';

/// [UserContainer] の表示パターン。
enum UserContainerSize {
  /// タイトルバー向け。小さめの顔写真のみ。プルダウンアイコンは出さず、タップでメニューを開く。
  small,

  /// サイドバー向け。標準的な顔写真 + 表示項目。メニューがあるときだけ ▼ を出す。
  medium,

  /// ダイアログ向け。大きめの顔写真 + 表示項目 + 呼び出し元が渡す詳細。メニューは持たない。
  large,
}

/// [UserContainer] に表示する項目(medium・large で選べる)。
enum UserField { name, callName, role, department }

/// 呼び出し元が渡す詳細情報を、表示のたびに作るデリゲート(large)。
typedef UserDetailBuilder = Widget Function(BuildContext context, AppUser user);

/// ログインユーザーの表示(顔写真・名前・呼称・役割・部署)と、ユーザーメニュー(設定・ログアウトなど)。
///
/// 表示パターンは [UserContainerSize]。
/// - small: 顔写真のみ。[actions] があればタップでメニュー(▼なし)
/// - medium: 顔写真 + [fields]。[actions] があるときだけ ▼ とメニュー
/// - large: 大きな顔写真 + [fields] + [detail]。メニューは持たない
///
/// [actions] が空のときは、▼ もメニューも出さない。
class UserContainer extends StatelessWidget {
  const UserContainer({
    super.key,
    required this.user,
    this.actions = const [],
    this.size = UserContainerSize.medium,
    this.fields = const {UserField.name, UserField.role},
    this.detail,
    this.labels = const AppShellLabels(),
  });

  final AppUser user;
  final List<UserMenuAction> actions;
  final UserContainerSize size;

  /// 表示する項目(small では無視)。
  final Set<UserField> fields;

  /// 詳細情報の表示(large だけ)。
  final UserDetailBuilder? detail;
  final AppShellLabels labels;

  static double avatarRadius(UserContainerSize size) => switch (size) {
    UserContainerSize.small => 14,
    UserContainerSize.medium => 18,
    UserContainerSize.large => 48,
  };

  String? _value(UserField f) {
    final v = switch (f) {
      UserField.name => user.name,
      UserField.callName => user.callName,
      UserField.role => user.role,
      UserField.department => user.department,
    };
    return v.isEmpty ? null : v;
  }

  Widget _avatar() {
    final radius = avatarRadius(size);
    return CircleAvatar(
      radius: radius,
      backgroundImage: user.photo,
      child: user.photo == null
          ? Text(
              user.name.isEmpty ? '?' : user.name.characters.first,
              style: TextStyle(fontSize: radius * 0.9),
            )
          : null,
    );
  }

  Widget _texts(ThemeData theme) {
    final large = size == UserContainerSize.large;
    final items = <Widget>[];
    for (final f in UserField.values) {
      if (!fields.contains(f)) continue;
      final v = _value(f);
      if (v == null) continue;
      final style = f == UserField.name
          ? (large ? theme.textTheme.titleLarge : theme.textTheme.labelLarge)
          : theme.textTheme.bodySmall;
      items.add(Text(v, style: style));
    }
    return Column(
      crossAxisAlignment: large
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: items,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    switch (size) {
      case UserContainerSize.small:
        return _withMenu(_avatar());
      case UserContainerSize.medium:
        return _withMenu(
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              _avatar(),
              if (fields.isNotEmpty) _texts(theme),
              if (actions.isNotEmpty) const Icon(Icons.arrow_drop_down),
            ],
          ),
        );
      case UserContainerSize.large:
        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
          children: [
            _avatar(),
            if (fields.isNotEmpty) _texts(theme),
            ?detail?.call(context, user),
          ],
        );
    }
  }

  Widget _withMenu(Widget child) {
    if (actions.isEmpty) return child;
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
      child: child,
    );
  }
}
