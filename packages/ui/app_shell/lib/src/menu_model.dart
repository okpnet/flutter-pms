import 'package:flutter/widgets.dart';

/// メニューの1項目。
class AppMenuItem {
  const AppMenuItem({
    required this.id,
    required this.label,
    required this.onSelected,
    this.icon,
    this.selected = false,
  });

  final String id;
  final String label;
  final IconData? icon;
  final bool selected;
  final VoidCallback onSelected;
}

/// メニューのグループ(開閉する見出しと項目)。
class AppMenuGroup {
  const AppMenuGroup({
    required this.id,
    required this.label,
    required this.items,
    this.icon,
  });

  final String id;
  final String label;
  final IconData? icon;
  final List<AppMenuItem> items;

  /// 選択中の項目を含むか(自動で開く)。
  bool get hasSelected => items.any((i) => i.selected);
}

/// サイドバーとハンバーガーメニューが共有するメニュー。
class AppMenu {
  const AppMenu({this.topItems = const [], this.groups = const []});

  /// グループに入らない項目(例: ダッシュボード)。グループの前に並ぶ。
  final List<AppMenuItem> topItems;
  final List<AppMenuGroup> groups;

  bool get isEmpty => topItems.isEmpty && groups.isEmpty;
}

/// ログインユーザーの表示用の情報。
class AppUser {
  const AppUser({required this.name, this.role = '', this.photo});

  final String name;

  /// 役割・所属など(名前の下に出す)。
  final String role;

  /// 顔写真。null のときは名前の頭文字を丸で表示する。
  final ImageProvider? photo;
}

/// ユーザーメニュー(設定・ログアウトなど)の1項目。
class UserMenuAction {
  const UserMenuAction({
    required this.label,
    required this.onSelected,
    this.icon,
  });

  final String label;
  final IconData? icon;
  final VoidCallback onSelected;
}
