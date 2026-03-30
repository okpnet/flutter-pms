part of '../ut_field.dart';

class FiledContainerStyleHelper {
  static Widget fitWrapField({
    UtWidhSizeType widthType = UtWidhSizeType.s,
    required BuildContext context,
    required Widget child,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: widthType == UtWidhSizeType.l
              ? const BoxConstraints()
              : BoxConstraints(maxWidth: widthType.width),
          child: child,
        );
      },
    );
  }
}
