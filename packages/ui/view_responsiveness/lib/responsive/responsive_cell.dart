import 'package:flutter/material.dart';

import 'responsive_cell_layout.dart';

class ResponsiveCell extends StatelessWidget {
  final ResponsiveCellLayout layout; // 1. 引数をクラスに集約
  final Widget child;

  const ResponsiveCell({
    super.key,
    this.layout = const ResponsiveCellLayout(), // デフォルトレイアウト
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Align(alignment: layout.alignment, child: child);
  }
}
