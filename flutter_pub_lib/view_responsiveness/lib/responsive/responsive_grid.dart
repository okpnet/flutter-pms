import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'responsive_cell.dart';
import 'responsive_grid_behavior.dart';

class ResponsiveGrid extends StatelessWidget {
  final List<WrapCell> children;
  final double spacing;
  final double runSpacing;
  final int defaultMobileCells;
  final int defaultTabletCells;
  final int defaultPcCells;
  final Axis direction;
  final WrapAlignment alignment;
  final WrapAlignment runAlignment;
  final WrapCrossAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final Clip clipBehavior;
  final ResponsiveDeviceNotifier? responsiveDeviceNotifier;

  const ResponsiveGrid({
    super.key,
    required this.children,
    this.spacing = 0.0,
    this.runSpacing = 0.0,
    this.defaultMobileCells = 1,
    this.defaultTabletCells = 6,
    this.defaultPcCells = 12,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.runAlignment = WrapAlignment.start,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.clipBehavior = Clip.none,
    this.responsiveDeviceNotifier,
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

        ///描画サイクル（フレーム）が完了した直後に、現在のmedia状態をScopeへ通知
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ResponsiveScope.notifierOf(context)?.update(media);
          responsiveDeviceNotifier?.update(media);
        });

        // 5. 計算ロジッククラス（Behavior）を生成して処理を委譲
        final behavior = ResponsiveGridBehavior(
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
