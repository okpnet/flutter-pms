part of '../ut_decoration.dart';

class UtContentsText extends StatelessWidget with UtEdgeinsetMixin {
  final String label;
  final String title;
  final UtTextSizeStyle? sizeStyle;
  final Icon? prefixIcon;
  final Alignment? lablelAlign;
  final Alignment? titleAlign;

  UtContentsText({
    super.key,
    required this.label,
    required this.title,
    this.prefixIcon,
    this.lablelAlign,
    this.titleAlign,
    this.sizeStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edgeInsetsBuilder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: edgeInsetsBuilder(),
            alignment: lablelAlign,
            child: UtText.label(label),
          ),
          prefixIcon == null
              ? Container(
                  margin: EdgeInsets.only(
                    left: UtSpaceStyle.xl.value,
                    right: UtSpaceStyle.xl.value,
                    top: UtSpaceStyle.ls.value,
                  ),
                  child: UtText.sectionSubTitle(title),
                )
              : Container(
                  margin: EdgeInsets.only(
                    left: UtSpaceStyle.xl.value,
                    right: UtSpaceStyle.xl.value,
                    top: UtSpaceStyle.ls.value,
                  ),
                  child: Container(
                    alignment: titleAlign,
                    child: Row(
                      mainAxisSize: .min,
                      mainAxisAlignment: .start,
                      children: [
                        Container(alignment: .centerLeft, child: prefixIcon),
                        Container(
                          margin: edgeInsetsBuilder(direction: .horizontal),
                          alignment: .center,
                          child: UtText.sectionSubTitle(title),
                        ),
                      ],
                    ),
                  ),
                ),
          Divider(),
        ],
      ),
    );
  }

  factory UtContentsText.of({
    Key? key,
    required String label,
    required String title,
    Icon? prefixIcon,
  }) {
    return UtContentsText(
      label: label,
      title: title,
      lablelAlign: .centerLeft,
      titleAlign: .bottomLeft,
      sizeStyle: .md,
      prefixIcon: prefixIcon,
    );
  }
}
