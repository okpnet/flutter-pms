import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../avatar/user_avatar_provider.dart';
import '../i18n/strings_provider.dart';

/// ユーザー情報の表示パターン(small・medium・large)を並べて確認する画面。
///
/// 実際の枠は [UserContainer] を使う。ここは、各パターンの見た目とプルダウンの振る舞いの確認用。
class UserDisplayPage extends ConsumerStatefulWidget {
  const UserDisplayPage({super.key});

  @override
  ConsumerState<UserDisplayPage> createState() => _UserDisplayPageState();
}

class _UserDisplayPageState extends ConsumerState<UserDisplayPage> {
  String? _picked;

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(userProfileStringsProvider);
    final summary = ref.watch(userSummaryProvider);
    final photo = ref.watch(userAvatarProvider).value?.image;
    final user = AppUser(
      name: summary?.name ?? '',
      role: t.display.sampleSubtitle,
      photo: photo,
      heading: t.display.sampleHeading,
    );
    // 提供者が項目を決める: 見出しが空なら表示しない。
    final noHeading = AppUser(
      name: user.name,
      role: user.role,
      photo: user.photo,
    );
    List<UserMenuAction> actions() => [
      for (final (label, icon) in [
        (t.display.menuSettings, Icons.settings),
        (t.display.menuLogout, Icons.logout),
      ])
        UserMenuAction(
          label: label,
          icon: icon,
          onSelected: () =>
              setState(() => _picked = t.display.picked(label: label)),
        ),
    ];
    Widget section(String label, Widget child) => Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [Text(label), child],
        ),
      ),
    );
    return ScreenScaffold(
      title: t.display.title,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          section(
            t.display.small,
            UserContainer(
              user: user,
              size: UserContainerSize.small,
              actions: actions(),
            ),
          ),
          section(
            t.display.medium,
            UserContainer(
              user: noHeading,
              actions: actions(),
            ),
          ),
          section(t.display.mediumNoMenu, UserContainer(user: noHeading)),
          section(
            t.display.large,
            UserContainer(
              user: user,
              size: UserContainerSize.large,
              actions: actions(),
              detail: (context, u) => Text(t.display.detail),
            ),
          ),
          if (_picked != null) Text(_picked!),
        ],
      ),
    );
  }
}
