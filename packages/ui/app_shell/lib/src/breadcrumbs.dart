import 'package:flutter/material.dart';

/// パンくずリストの 1 項目。[onTap] があれば、押せる(戻り先)。無ければ、押せない(いまの画面・画面を持たないグループ)。
class BreadcrumbItem {
  const BreadcrumbItem(this.label, {this.onTap});

  final String label;
  final VoidCallback? onTap;

  Map<String, Object?> toJson() => {'label': label, 'tappable': onTap != null};
}

/// パンくずリスト(「資源 ▶ 設備 ▶ 編集」)。左から右へ、小さな塗りの三角を挟んで並べる。
/// 最後の項目(いまの画面)は押せず、少し濃い色で出す。
class Breadcrumbs extends StatelessWidget {
  const Breadcrumbs({super.key, required this.items});

  final List<BreadcrumbItem> items;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
    );
    final last = items.length - 1;
    return Wrap(
      key: const ValueKey('screenBreadcrumb'),
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 2,
      children: [
        for (var i = 0; i < items.length; i++) ...[
          if (i > 0) _separator(theme),
          _crumb(context, i, items[i], i == last, muted),
        ],
      ],
    );
  }

  Widget _separator(ThemeData theme) {
    final size = (theme.textTheme.bodySmall?.fontSize ?? 12) * 0.7;
    return CustomPaint(
      size: Size(size, size),
      painter: _TrianglePainter(theme.colorScheme.onSurfaceVariant),
    );
  }

  Widget _crumb(
    BuildContext context,
    int i,
    BreadcrumbItem item,
    bool isLast,
    TextStyle? muted,
  ) {
    final scheme = Theme.of(context).colorScheme;
    final text = Text(
      item.label,
      key: ValueKey('crumb:$i'),
      style: isLast ? muted?.copyWith(color: scheme.onSurface) : muted,
      overflow: TextOverflow.ellipsis,
    );
    if (item.onTap == null || isLast) return text;
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

class _TrianglePainter extends CustomPainter {
  _TrianglePainter(this.color);

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(size.width * 0.25, 0)
      ..lineTo(size.width * 0.9, size.height / 2)
      ..lineTo(size.width * 0.25, size.height)
      ..close();
    canvas.drawPath(path, Paint()..color = color);
  }

  @override
  bool shouldRepaint(_TrianglePainter old) => old.color != color;
}
