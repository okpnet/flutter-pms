import 'package:flutter/material.dart';
import 'package:view_responsiveness/constants/media_break_point.dart';

import 'breadcrumbs.dart';
import 'content_width.dart';

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
    this.breadcrumbs = const [],
    this.asOf,
    this.backLabel,
  });

  final String title;
  final List<Widget> actions;
  final Widget body;

  /// パンくずリスト(「資源 ▶ 設備 ▶ 編集」)。あるときは、[overline] の代わりに出す。
  /// スマートフォンの幅では、見出しを押すと開閉する。
  final List<BreadcrumbItem> breadcrumbs;

  /// 見出しの上の小さな文字(会社名・親の画面の名前など)。
  final String? overline;

  /// 見出しの右の文字(例: 「2026-10-19 時点」)。
  final String? asOf;

  /// 戻るボタンの文字。null のときは「戻る」。
  final String? backLabel;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: LayoutBuilder(
      builder: (context, constraints) {
        // 内容の幅: スマートフォンは 95%、それ以外は 90%(上限 1600)で中央([ContentWidth])。
        // 見出しの背景は、全幅に敷く
        final width = ContentWidth.ofContext(context, constraints.maxWidth);
        return Column(
          children: [
            Material(
              color: Theme.of(context).colorScheme.surface,
              child: Center(
                child: SizedBox(
                  width: width,
                  child: ScreenTitle(
                    title: title,
                    actions: actions,
                    overline: overline,
                    breadcrumbs: breadcrumbs,
                    asOf: asOf,
                    backLabel: backLabel,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(width: width, child: body),
              ),
            ),
          ],
        );
      },
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
    this.breadcrumbs = const [],
    this.asOf,
    this.backLabel,
  });

  final String title;
  final List<Widget> actions;
  final String? overline;
  final List<BreadcrumbItem> breadcrumbs;
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
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: _TitleBlock(
                    title: title,
                    overline: overline,
                    breadcrumbs: breadcrumbs,
                    muted: muted,
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

/// 見出しの左側。パンくず(または上の文字)と見出し。スマートフォンの幅では、パンくずは
/// 見出しの下に隠し、見出しを押すと開閉する(コンテキストメニューのように)。
class _TitleBlock extends StatefulWidget {
  const _TitleBlock({
    required this.title,
    required this.overline,
    required this.breadcrumbs,
    required this.muted,
  });

  final String title;
  final String? overline;
  final List<BreadcrumbItem> breadcrumbs;
  final TextStyle? muted;

  @override
  State<_TitleBlock> createState() => _TitleBlockState();
}

class _TitleBlockState extends State<_TitleBlock> {
  bool _open = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mobile =
        MediaBreakPoint.of(MediaQuery.sizeOf(context).width) ==
        MediaBreakPoint.mobile;
    final crumbs = widget.breadcrumbs;
    final title = Text(
      widget.title,
      key: const ValueKey('screenTitle'),
      style: theme.textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.w700,
      ),
      overflow: TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (crumbs.isEmpty &&
            widget.overline != null &&
            widget.overline!.isNotEmpty)
          Text(
            widget.overline!,
            key: const ValueKey('screenOverline'),
            style: widget.muted,
            overflow: TextOverflow.ellipsis,
          ),
        // 通常: 「ルート(小)▶ 子(小)▶ 見出し(大)」を 1 行に並べる
        if (crumbs.isNotEmpty && !mobile)
          Breadcrumbs(items: crumbs, title: title)
        // スマートフォン: 見出しだけ。押すと、下にパンくず(「ルート▶ 子▶」)が開く
        else if (crumbs.isNotEmpty)
          InkWell(
            key: const ValueKey('screenTitleToggle'),
            onTap: () => setState(() => _open = !_open),
            borderRadius: BorderRadius.circular(4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(child: title),
                Icon(
                  _open ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          )
        else
          title,
        if (crumbs.isNotEmpty && mobile)
          AnimatedSize(
            duration: const Duration(milliseconds: 150),
            alignment: Alignment.topLeft,
            child: _open
                ? Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Breadcrumbs(items: crumbs, trailingSeparator: true),
                  )
                : const SizedBox(width: double.infinity),
          ),
      ],
    );
  }
}
