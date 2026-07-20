import 'package:flutter/material.dart';

import 'wrap_cell_layout.dart';

class WrapCell extends StatelessWidget {
  final WrapCellLayout layout; // 1. 引数をクラスに集約
  final Widget child;

  const WrapCell({
    super.key,
    this.layout = const WrapCellLayout(), // デフォルトレイアウト
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Align(alignment: layout.alignment, child: child);
  }
}
