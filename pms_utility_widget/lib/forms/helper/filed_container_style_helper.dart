part of '../field.dart';

class FiledContainerStyleHelper {
  static Widget fitWrapField({
    WidhSizeType widthType = WidhSizeType.s,
    required BuildContext context,
    required Widget child,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: widthType == WidhSizeType.l
              ? const BoxConstraints()
              : BoxConstraints(maxWidth: widthType.width),
          child: child,
        );
      },
    );
  }
}
