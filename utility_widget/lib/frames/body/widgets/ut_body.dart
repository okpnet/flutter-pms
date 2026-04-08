part of '../ut_body.dart';

class UtBody {
  ///以下の組み合わせ上下に[UtBodyConstant.minPaddingSize]。規定幅より狭い場合は左右にもあわせて[UtBodyConstant.minPaddingSize]があるタイトルセット
  ///タイトル
  ///body
  static Widget _titleSet({
    required BuildContext context,
    required String title,
    required bool isNarrow,
    Widget? body,
  }) {
    return Column(
      children: [
        Padding(
          padding: isNarrow
              ? EdgeInsets.all(UtBodyConstant.minPaddingSize)
              : EdgeInsets.only(
                  top: UtBodyConstant.minPaddingSize,
                  bottom: UtBodyConstant.minPaddingSize,
                ),
          child: Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text(
              title,
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
        ?body,
      ],
    );
  }

  ///左右にスペースのない標準タイトルセット
  static Widget titleSet({
    required BuildContext context,
    required String title,
    Widget? body,
  }) {
    final isNarrow = UtLayoutHelper.isNarrow(context);
    return _titleSet(
      context: context,
      title: title,
      isNarrow: isNarrow,
      body: body,
    );
  }

  ///左右に[UtBodyConstant.minPaddingSize]を持つタイトルセット
  static Widget titleSetBothPaddingNarrow({
    required BuildContext context,
    required String title,
    CrossAxisAlignment crossAxisAligment = CrossAxisAlignment.start,
    Widget? body,
  }) {
    final isNarrow = UtLayoutHelper.isNarrow(context);
    return Row(
      crossAxisAlignment: crossAxisAligment,
      children: [
        SizedBox(width: UtBodyConstant.minPaddingSize),
        _titleSet(context: context, title: title, isNarrow: isNarrow),
        SizedBox(width: UtBodyConstant.minPaddingSize),
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
