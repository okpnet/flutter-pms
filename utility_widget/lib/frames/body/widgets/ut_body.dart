part of '../ut_body.dart';

class UtBody extends StatelessWidget with UtEdgeinsetMixin {
  final String? title;
  final Widget body;
  final UtDirection paddingDirection;
  UtBody({
    super.key,
    this.title,
    required this.body,
    this.paddingDirection = UtDirection.all,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  ///以下の組み合わせ上下に[UtBodyConstant.minPaddingSize]。規定幅より狭い場合は左右にもあわせて[UtBodyConstant.minPaddingSize]があるタイトルセット
  ///タイトル
  ///body
  Widget _titleSet({required BuildContext context, required bool isNarrow}) {
    return Column(
      children: [
        if (title != null)
          Padding(
            padding: edgeInsetsBuilder(
              direction: isNarrow
                  ? UtDirection.all ^ UtDirection.bottom
                  : UtDirection.top,
              value: UtBodyConstant.minPaddingSize,
            ),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(
                title!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: UtFontScale.of(
                    context: context,
                    scale: UtBodyConstant.titleFontSizeScale,
                  ),
                ),
              ),
            ),
          ),
        Padding(
          padding: edgeInsetsBuilder(
            direction: isNarrow ? UtDirection.all : UtDirection.vertical,
            value: UtBodyConstant.minPaddingSize,
          ),
          child: body,
        ),
      ],
    );
  }

  ///左右にスペースのない標準タイトルセット
  Widget titleSet({required BuildContext context, Widget? body}) {
    final isNarrow = UtLayoutHelper.isNarrow(context);
    return _titleSet(context: context, isNarrow: isNarrow);
  }

  ///左右に[UtBodyConstant.minPaddingSize]を持つタイトルセット
  Widget bothPadding({
    required BuildContext context,
    required bool contentsNarrow,
    required bool isNarrow,
  }) {
    final marginWidth = UtLayoutHelper.isNarrow(context)
        ? UtBodyConstant.minPaddingSize
        : MediaQuery.of(context).size.width *
              UtBodyConstant.widePaddingBothSideRate;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: marginWidth),
        _titleSet(context: context, isNarrow: isNarrow),
        SizedBox(width: marginWidth),
      ],
    );
  }

  ///左右に[UtBodyConstant.minPaddingSize]を持つタイトルセット
  static Widget titleSetBothPaddingWide({
    required BuildContext context,
    required String title,
    CrossAxisAlignment crossAxisAligment = CrossAxisAlignment.start,
    Widget? body,
  }) {
    final width = MediaQuery.of(context).size.width;
    final isNarrow = UtLayoutHelper.isNarrow(context);
    final paddingWidth = isNarrow
        ? UtBodyConstant.minPaddingSize
        : width * UtBodyConstant.widePaddingBothSideRate;
    return Row(
      crossAxisAlignment: crossAxisAligment,
      children: [
        SizedBox(width: paddingWidth),
        _titleSet(context: context, title: title, isNarrow: isNarrow),
        SizedBox(width: paddingWidth),
      ],
    );
  }
}
