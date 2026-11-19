import 'package:flutter/material.dart';

/// パンくずリストの 1 項目。[onTap] があれば、押せる(戻り先)。無ければ、押せない(画面を持たないグループ)。
class BreadcrumbItem {
  const BreadcrumbItem(this.label, {this.onTap});

  final String label;
  final VoidCallback? onTap;

  Map<String, Object?> toJson() => {'label': label, 'tappable': onTap != null};
}

/// パンくずリスト + 見出し。「ルート(小)▶ 子(小)▶ 見出し(大)」を、1 行に左から右へ並べる
/// (区切りは小さな塗りの三角)。
///
/// [title] を渡すと、最後の三角のあとに見出しを置く(文字の基線をそろえる)。渡さないときは、項目だけを並べる
/// ([trailingSeparator] が真なら、最後の項目のあとにも三角を付ける。スマートフォンで見出しの下に開く行)。
class Breadcrumbs extends StatelessWidget {
  const Breadcrumbs({
    super.key,
    required this.items,
    this.title,
    this.trailingSeparator = false,
  });

  final List<BreadcrumbItem> items;

  /// 見出し(大きな文字)。
  final Widget? title;

  /// 見出しが無いとき、最後の項目のあとにも三角を付ける。
  final bool trailingSeparator;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
    );
    return Row(
      key: const ValueKey('screenBreadcrumb'),
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        for (var i = 0; i < items.length; i++) ...[
          if (i > 0) _separator(theme),
          Flexible(child: _crumb(context, i, items[i], muted)),
        ],
        if (title != null) ...[
          if (items.isNotEmpty) _separator(theme),
          Flexible(child: title!),
        ] else if (trailingSeparator && items.isNotEmpty)
          _separator(theme),
      ],
    );
  }

  /// 小さな三角(▶)。文字と基線がそろうよう、文字で描く。
  Widget _separator(ThemeData theme) {
    final size = (theme.textTheme.bodySmall?.fontSize ?? 12) * 0.7;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        '▶',
        key: const ValueKey('crumbSeparator'),
        style: TextStyle(
          fontSize: size,
          color: theme.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }

  Widget _crumb(
    BuildContext context,
    int i,
    BreadcrumbItem item,
    TextStyle? muted,
  ) {
    final scheme = Theme.of(context).colorScheme;
    if (item.onTap == null) {
      return Text(
        item.label,
        key: ValueKey('crumb:$i'),
        style: muted,
        overflow: TextOverflow.ellipsis,
      );
    }
    return InkWell(
      onTap: item.onTap,
      borderRadius: BorderRadius.circular(4),
      child: Text(
        item.label,
        key: ValueKey('crumb:$i'),
        style: muted?.copyWith(color: scheme.primary),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
