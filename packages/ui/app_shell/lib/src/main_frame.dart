import 'package:flutter/material.dart';
import 'package:view_responsiveness/constants/media_break_point.dart';

import 'app_shell_labels.dart';
import 'hamburger_menu.dart';
import 'menu_model.dart';
import 'side_bar.dart';
import 'title_bar.dart';

/// マルチメインフレーム: タイトルバー + サイドバー + メインの3つの子を持つ。
///
/// 画面の幅に応じて、モバイルはサイドバーをハンバーガーメニューにし、
/// タブレット(または [sidebarIconOnly])はアイコンだけのサイドバー、PC は通常のサイドバーにする。
/// ユーザー([user])が null(ログインしていない・権限が無い)のときは、サイドバーもハンバーガーも出さない。
class MultiMainFrame extends StatelessWidget {
  const MultiMainFrame({
    super.key,
    required this.title,
    required this.menu,
    required this.body,
    this.user,
    this.userActions = const [],
    this.logo,
    this.sidebarIconOnly = false,
    this.labels = const AppShellLabels(),
  });

  final String title;
  final Widget? logo;
  final AppMenu menu;
  final Widget body;
  final AppUser? user;
  final List<UserMenuAction> userActions;

  /// 設定でアイコンだけにする。
  final bool sidebarIconOnly;
  final AppShellLabels labels;

  @override
  Widget build(BuildContext context) {
    final point = MediaBreakPoint.of(MediaQuery.sizeOf(context).width);
    final mobile = point == MediaBreakPoint.mobile;
    final hasMenu = user != null && !menu.isEmpty;
    final iconOnly = point == MediaBreakPoint.tablet || sidebarIconOnly;
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppTitleBar(
        title: title,
        logo: logo,
        user: user,
        userActions: userActions,
        showHamburger: mobile && hasMenu,
        onOpenMenu: () => scaffoldKey.currentState?.openDrawer(),
        compactUser: mobile,
        labels: labels,
      ),
      drawer: mobile && hasMenu ? HamburgerMenu(menu: menu) : null,
      body: Row(
        children: [
          if (!mobile && hasMenu) SideBar(menu: menu, iconOnly: iconOnly),
          Expanded(child: body),
        ],
      ),
    );
  }
}

/// シングルメインフレーム: タイトルバーとメインの子を1つ持つ(ログイン・ログアウトなど)。
/// サイドバー・ハンバーガーは出さない。
class SingleMainFrame extends StatelessWidget {
  const SingleMainFrame({
    super.key,
    required this.title,
    required this.body,
    this.logo,
  });

  final String title;
  final Widget? logo;
  final Widget body;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppTitleBar(title: title, logo: logo),
    body: body,
  );
}

/// 選択フレーム: タイトルバー・サイドバーを持たず、ほかのフレームと併用する(選択画面の枠)。
class SelectionFrame extends StatelessWidget {
  const SelectionFrame({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) => Material(child: body);
}
