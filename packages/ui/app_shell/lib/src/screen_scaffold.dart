import 'package:flutter/material.dart';

/// 機能の画面の骨組み(画面案 `tools/open-design` の画面の枠)。AppBar を使わず、画面の見出しと本体を縦に並べる。
///
/// 見出しは、上から「上の文字([overline]。会社名・親の画面の名前など)」「見出し」で、右に「時点」の日付([asOf])と
/// 右側の操作([actions])を置く。戻れるとき(`Navigator.canPop`)は、見出しの下に、文字つきの「戻る」ボタン
/// ([backLabel])を出す(矢印だけのボタンより、押す先が分かる)。
///
/// パターン: Template Method(骨組みを決め、見出しと本体を差し込む)
class ScreenScaffold extends StatelessWidget {
  const ScreenScaffold({
    super.key,
    required this.title,
    this.actions = const [],
    required this.body,
    this.overline,
    this.asOf,
    this.backLabel,
  });

  final String title;
  final List<Widget> actions;
  final Widget body;

  /// 見出しの上の小さな文字(会社名・親の画面の名前など)。
  final String? overline;

  /// 見出しの右の文字(例: 「2026-10-19 時点」)。
  final String? asOf;

  /// 戻るボタンの文字。null のときは「戻る」。
  final String? backLabel;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      children: [
        ScreenTitle(
          title: title,
          actions: actions,
          overline: overline,
          asOf: asOf,
          backLabel: backLabel,
        ),
        Expanded(child: body),
      ],
    ),
  );
}

/// 画面の見出し。上の文字・見出し・(戻れるとき)戻るボタン・右側の「時点」と操作ボタン。
class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    super.key,
    required this.title,
    this.actions = const [],
    this.overline,
    this.asOf,
    this.backLabel,
  });

  final String title;
  final List<Widget> actions;
  final String? overline;
  final String? asOf;
  final String? backLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final canPop = Navigator.of(context).canPop();
    final muted = theme.textTheme.bodySmall?.copyWith(
      color: scheme.onSurfaceVariant,
    );
    return Material(
      color: scheme.surface,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (overline != null && overline!.isNotEmpty)
                        Text(
                          overline!,
                          key: const ValueKey('screenOverline'),
                          style: muted,
                          overflow: TextOverflow.ellipsis,
                        ),
                      Text(
                        title,
                        key: const ValueKey('screenTitle'),
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                if (asOf != null && asOf!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 4),
                    child: Text(
                      asOf!,
                      key: const ValueKey('screenAsOf'),
                      style: muted,
                    ),
                  ),
                ...actions,
              ],
            ),
            if (canPop)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                // pageBack(テスト)・読み上げのために、標準の戻るボタンと同じ説明を付ける
                child: Tooltip(
                  message: MaterialLocalizations.of(context).backButtonTooltip,
                  child: OutlinedButton.icon(
                    key: const ValueKey('screenBack'),
                    icon: const Icon(Icons.arrow_back, size: 18),
                    label: Text(backLabel ?? '戻る'),
                    onPressed: () => Navigator.of(context).maybePop(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
