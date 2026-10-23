import 'dart:ui' show PathMetric;

import 'package:flutter/material.dart';

import 'tree_config.dart';

/// 階層の関係線を描く。
///
/// [lastFlags]は祖先から自分までの各レベルが「兄弟の最後か」を表す。
/// 祖先のレベルは、最後でなければ縦線を通す。自分のレベルは親の線から自分のアイコンへつなぐ。
class TreeLinePainter extends CustomPainter {
  TreeLinePainter({
    required this.lastFlags,
    required this.unit,
    required this.iconBox,
    required this.color,
    required this.width,
    required this.style,
  });

  final List<bool> lastFlags;

  /// 1レベルあたりのインデント幅(px)。
  final double unit;

  /// アイコン領域の幅(px)。線はアイコンの中心を通る。
  final double iconBox;
  final Color color;
  final double width;
  final TreeLineStyle style;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = width
      ..style = PaintingStyle.stroke;
    final mid = size.height / 2;
    final levels = lastFlags.length;
    for (var k = 0; k < levels; k++) {
      // k番目の祖先のアイコン中心の位置。
      final x = k * unit + iconBox / 2;
      final own = k == levels - 1;
      if (own) {
        // 自分: 上から中央までの縦線(最後でなければ下まで)と、アイコンへの横線。
        _line(canvas, paint, Offset(x, 0), Offset(x, lastFlags[k] ? mid : size.height));
        _line(canvas, paint, Offset(x, mid), Offset((k + 1) * unit + 2, mid));
      } else if (!lastFlags[k]) {
        _line(canvas, paint, Offset(x, 0), Offset(x, size.height));
      }
    }
  }

  void _line(Canvas canvas, Paint paint, Offset a, Offset b) {
    if (style == TreeLineStyle.solid) {
      canvas.drawLine(a, b, paint);
      return;
    }
    final on = style == TreeLineStyle.dashed ? 4.0 : width;
    final gap = style == TreeLineStyle.dashed ? 3.0 : width * 2;
    final path = Path()
      ..moveTo(a.dx, a.dy)
      ..lineTo(b.dx, b.dy);
    for (final PathMetric m in path.computeMetrics()) {
      var d = 0.0;
      while (d < m.length) {
        final end = (d + on).clamp(0.0, m.length);
        canvas.drawPath(m.extractPath(d, end), paint);
        d += on + gap;
      }
    }
  }

  @override
  bool shouldRepaint(TreeLinePainter old) =>
      old.unit != unit ||
      old.iconBox != iconBox ||
      old.color != color ||
      old.width != width ||
      old.style != style ||
      !_same(old.lastFlags, lastFlags);

  static bool _same(List<bool> a, List<bool> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
