import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'wrap_cell.dart';
import 'wrap_frame_behavior.dart';

class WrapFrame extends StatelessWidget {
  final List<WrapCell> children;
  final double spacing;
  final double runSpacing;
  final int defaultMobileCells;
  final int defaultTabletCells;
  final int defaultPcCells;
  // その他のWrapプロパティは省略（必要に応じて追加してください）

  const WrapFrame({
    super.key,
    required this.children,
    this.spacing = 0.0,
    this.runSpacing = 0.0,
    this.defaultMobileCells = 1,
    this.defaultTabletCells = 6,
    this.defaultPcCells = 12,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final widgetWidth = constraints.maxWidth;
        final media = MediaBreakPoint.of(widgetWidth);

        final maxCells = media == MediaBreakPoint.pc
            ? defaultPcCells
            : media == MediaBreakPoint.tablet
            ? defaultTabletCells
            : defaultMobileCells;

        // 5. 計算ロジッククラス（Behavior）を生成して処理を委譲
        final behavior = WrapFrameBehavior(
          totalWidth: widgetWidth,
          media: media,
          maxCells: maxCells,
          spacing: spacing,
        );

        final List<Widget> wrapChildren = [];

        for (final cell in children) {
          // 2. 表示フラグのチェック
          if (!behavior.shouldShow(cell.layout)) continue;

          // 3. オフセット（空白）の追加
          final offset = behavior.getOffset(cell.layout);
          if (offset > 0) {
            wrapChildren.add(
              SizedBox(
                width: behavior.calculateWidth(offset),
                child: const SizedBox.shrink(),
              ),
            );
          }

          // 本体の描画
          final flex = behavior.getFlex(cell.layout);
          wrapChildren.add(
            SizedBox(
              width: behavior.calculateWidth(flex),
              child: Row(children: [Expanded(child: cell)]),
            ),
          );
        }

        return Wrap(
          spacing: spacing,
          runSpacing: runSpacing,
          children: wrapChildren,
        );
      },
    );
  }
}
