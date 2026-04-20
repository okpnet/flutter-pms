part of '../ut_style.dart';

class UtBody extends StatelessWidget with UtEdgeinsetMixin {
  final Widget? title;
  final Widget body;
  final UtDirection paddingDirection;
  final AlignmentGeometry titleAign;
  UtBody({
    super.key,
    this.title,
    required this.body,
    this.paddingDirection = UtDirection.all,
    this.titleAign = AlignmentGeometry.centerLeft,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = UtLayoutHelper.isMobile(context);
    return LayoutBuilder(
      builder: (context, _constrains) {
        final width = _constrains.widthConstraints().maxWidth;
        final isFullwidth = UtLayoutHelper.isFullwidthFromWidth(width);
        final margin = !isFullwidth
            ? UtBodyConstant.minPaddingSize
            : width * UtBodyConstant.widePaddingBothSideRate;
        return Container(
          alignment: AlignmentGeometry.topCenter,
          margin: edgeInsetsBuilder(
            direction: UtDirection.horizontal,
            value: margin,
          ),
          child: _titleSet(context: context, isMobile: isMobile),
        );
      },
    );
  }

  ///以下の組み合わせ上下に[UtBodyConstant.minPaddingSize]。規定幅より狭い場合は左右にもあわせて[UtBodyConstant.minPaddingSize]があるタイトルセット
  ///タイトル
  ///body
  Widget _titleSet({required BuildContext context, required bool isMobile}) {
    return Column(
      children: [
        if (title != null)
          Padding(
            padding: edgeInsetsBuilder(
              direction: isMobile
                  ? UtDirection.all ^ UtDirection.bottom
                  : UtDirection.top,
              value: UtBodyConstant.minPaddingSize,
            ),
            child: Align(alignment: titleAign, child: title!),
          ),

        Padding(
          padding: edgeInsetsBuilder(
            direction: isMobile ? UtDirection.all : UtDirection.vertical,
            value: UtBodyConstant.minPaddingSize,
          ),
          child: body,
        ),
      ],
    );
  }
}
