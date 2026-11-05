import 'package:flutter/material.dart';

import 'app_shell_labels.dart';
import 'menu_model.dart';

/// [UserContainer] の表示パターン。
enum UserContainerSize {
  /// タイトルバー向け。小さめの顔写真のみ。プルダウンアイコンは出さず、タップでメニューを開く。
  small,

  /// サイドバー向け。標準的な顔写真 + 表示項目。メニューがあるときだけ ▼ を出す。
  medium,

  /// ダイアログ向け。大きめの顔写真 + 表示項目 + 呼び出し元が渡す詳細。操作([UserContainer.actions])はボタンの行にする。
  large,
}

/// 呼び出し元が渡す詳細情報を、表示のたびに作るデリゲート(large)。
typedef UserDetailBuilder = Widget Function(BuildContext context, AppUser user);

/// ログインユーザーの表示(顔写真 + 見出し・タイトル・サブタイトル)と、ユーザーメニュー(設定・ログアウトなど)。
///
/// 表示する項目は提供者(アプリなど)が決める。[AppUser.heading](見出し)・[AppUser.name](タイトル)・
/// [AppUser.role](サブタイトル)のうち、空のものは表示しない。
///
/// 表示パターンは [UserContainerSize]。
/// - small: 顔写真のみ。[actions] があればタップでメニュー(▼なし)
/// - medium: 顔写真 + 項目。[actions] があるときだけ ▼ とメニュー
/// - large: 左に顔写真・右に項目(幅に合わせて省略)、中央にボタンの行([actions])、その下に
///   [detail]([detailAlignment] で寄せる)。狭いときは項目が顔写真の下へ回り込む。
///   タイトルバーに入れて高さが溢れるのは、提供者の責任(large はダイアログ向け)
///
/// [actions] が空のときは、▼もメニューもボタンも出さない。
class UserContainer extends StatelessWidget {
  const UserContainer({
    super.key,
    required this.user,
    this.actions = const [],
    this.size = UserContainerSize.medium,
    this.detail,
    this.detailAlignment = Alignment.center,
    this.labels = const AppShellLabels(),
  });

  final AppUser user;
  final List<UserMenuAction> actions;
  final UserContainerSize size;

  /// 詳細情報の表示(large だけ)。
  final UserDetailBuilder? detail;

  /// 詳細の寄せ(左寄せ・右寄せ・上寄せ・下寄せ。既定は中央)。
  final AlignmentGeometry detailAlignment;
  final AppShellLabels labels;

  /// large の周囲の余白。
  static const double largePadding = 16;

  /// large で、これより狭いとラベル群を顔写真の下へ回り込ませる幅。
  static const double wrapWidth = 240;

  static double avatarRadius(UserContainerSize size) => switch (size) {
    UserContainerSize.small => 14,
    UserContainerSize.medium => 18,
    UserContainerSize.large => 48,
  };

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

  Widget? _texts(ThemeData theme) {
    final large = size == UserContainerSize.large;
    Text line(String text, TextStyle? style) =>
        Text(text, style: style, maxLines: 1, overflow: TextOverflow.ellipsis);
    final items = <Widget>[
      if (user.heading.isNotEmpty)
        line(user.heading, theme.textTheme.labelSmall),
      if (user.name.isNotEmpty)
        line(
          user.name,
          large ? theme.textTheme.titleLarge : theme.textTheme.labelLarge,
        ),
      if (user.role.isNotEmpty) line(user.role, theme.textTheme.bodySmall),
    ];
    if (items.isEmpty) return null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: items,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final texts = _texts(theme);
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
              ?texts,
              if (actions.isNotEmpty) const Icon(Icons.arrow_drop_down),
            ],
          ),
        );
      case UserContainerSize.large:
        return Padding(
          padding: const EdgeInsets.all(largePadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 12,
            children: [
              _largeHeader(texts),
              if (actions.isNotEmpty)
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.center,
                  children: [
                    for (final a in actions)
                      OutlinedButton.icon(
                        onPressed: a.onSelected,
                        icon: a.icon == null ? null : Icon(a.icon, size: 18),
                        label: Text(a.label),
                      ),
                  ],
                ),
              if (detail != null)
                Align(
                  alignment: detailAlignment,
                  child: detail!(context, user),
                ),
            ],
          ),
        );
    }
  }

  /// large の上段。左に顔写真、右にラベル群。置かれた幅が狭いときは、顔写真の下へラベル群を回り込ませる
  /// (顔写真は縮めない)。画面幅ではなく置かれた幅で決める(ダイアログに入るため。view_responsiveness は画面幅用)。
  Widget _largeHeader(Widget? texts) {
    final avatar = _avatar();
    if (texts == null) return Center(child: avatar);
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < wrapWidth) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [avatar, texts],
          );
        }
        return Row(
          spacing: 16,
          children: [
            avatar,
            Expanded(child: texts),
          ],
        );
      },
    );
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
