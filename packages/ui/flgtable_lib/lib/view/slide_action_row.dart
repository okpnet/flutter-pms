import 'package:flutter/material.dart';

/// 行を右へスライドさせ、左に現れた正方形のタイルボタン(削除・フラグ)を見せる。
///
/// タイルの色は警告(削除)と情報(フラグ)の慣例に従い、テーマの`error`/`primary`を使う。
/// パターン: Decorator(行に操作タイルを重ねる)
class SlideActionRow extends StatelessWidget {
  const SlideActionRow({
    super.key,
    required this.open,
    required this.size,
    required this.flagged,
    required this.deleteTooltip,
    required this.flagTooltip,
    required this.onDelete,
    required this.onFlag,
    required this.child,
    this.fixedHeight = true,
  });

  /// スライドして操作タイルを表示しているか。
  final bool open;

  /// タイルの一辺。行の高さ以上、タッチの最小サイズ以上にする。
  final double size;
  final bool flagged;
  final String deleteTooltip;
  final String flagTooltip;
  final VoidCallback onDelete;
  final VoidCallback onFlag;
  final Widget child;

  /// 開いているとき、高さをタイルの一辺に合わせる(表の行)。偽なら内容の高さに従う(モバイルのタイル)。
  final bool fixedHeight;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return TweenAnimationBuilder<double>(
      tween: Tween(end: open ? 1 : 0),
      duration: const Duration(milliseconds: 150),
      builder: (context, t, content) {
        if (t == 0) return content!;
        return ClipRect(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                width: size * 2,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _Tile(
                        id: 'delete',
                        size: size,
                        tooltip: deleteTooltip,
                        icon: Icons.delete_outline,
                        background: scheme.error,
                        foreground: scheme.onError,
                        onTap: onDelete,
                      ),
                      _Tile(
                        id: 'flag',
                        size: size,
                        tooltip: flagTooltip,
                        icon: flagged ? Icons.flag : Icons.flag_outlined,
                        background: scheme.primary,
                        foreground: scheme.onPrimary,
                        onTap: onFlag,
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(size * 2 * t, 0),
                child: SizedBox(
                  height: fixedHeight && open ? size : null,
                  child: content,
                ),
              ),
            ],
          ),
        );
      },
      child: child,
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({
    required this.id,
    required this.size,
    required this.tooltip,
    required this.icon,
    required this.background,
    required this.foreground,
    required this.onTap,
  });

  final String id;
  final double size;
  final String tooltip;
  final IconData icon;
  final Color background;
  final Color foreground;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: size,
    height: size,
    child: Material(
      color: background,
      child: Tooltip(
        message: tooltip,
        child: InkWell(
          key: Key('rowAction.$id'),
          onTap: onTap,
          child: Icon(icon, size: size * 0.5, color: foreground),
        ),
      ),
    ),
  );
}
