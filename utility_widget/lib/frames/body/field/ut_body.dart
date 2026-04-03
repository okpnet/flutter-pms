part of '../ut_body.dart';

class UtBody {
  static Widget titleSet({
    required BuildContext context,
    required String title,
    Widget? body,
  }) {
    final width = MediaQuery.of(context).size.width;
    final isNarrow = UtLayoutConstant.desktopStyleWidthBoundary > width;
    return Column(
      children: [
        Padding(
          padding: isNarrow
              ? EdgeInsets.all(UtBodyConstant.minPaddingBothSides)
              : EdgeInsets.only(
                  top: UtBodyConstant.minPaddingBothSides,
                  bottom: UtBodyConstant.minPaddingBothSides,
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
      ],
    );
  }
}
