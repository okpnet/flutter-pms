import 'package:flutter/material.dart';

/// 機能の画面の骨組み。`AppBar` を使わず、画面の見出し([ScreenTitle])と本体を縦に並べる。
///
/// アプリの枠(`AppTitleBar`)の中に入れても、タイトルバーが二重にならない。
/// 戻れる(前の画面がある)ときは、見出しの左に戻るボタンを出す。
class ScreenScaffold extends StatelessWidget {
  const ScreenScaffold({
    super.key,
    required this.title,
    this.actions = const [],
    required this.body,
  });

  final String title;
  final List<Widget> actions;
  final Widget body;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      children: [
        ScreenTitle(title: title, actions: actions),
        Expanded(child: body),
      ],
    ),
  );
}

/// 画面の見出し。タイトル、(戻れるとき)戻るボタン、右側の操作ボタン。
class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key, required this.title, this.actions = const []});

  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final canPop = Navigator.of(context).canPop();
    return Material(
      color: theme.colorScheme.surface,
      child: Container(
        height: 48,
        padding: EdgeInsets.only(left: canPop ? 4 : 16, right: 8),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: theme.dividerColor)),
        ),
        child: Row(
          children: [
            if (canPop)
              BackButton(onPressed: () => Navigator.of(context).maybePop()),
            Expanded(
              child: Text(
                title,
                style: theme.textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            ...actions,
          ],
        ),
      ),
    );
  }
}
