part of '../ut_button.dart';

enum UtIconButtonSizeStyle {
  small(12),
  mediam(24),
  large(36);

  final double iconSize;
  const UtIconButtonSizeStyle(this.iconSize);
  Size get size => Size(iconSize, iconSize);
}

enum UtButtonWidthStyle {
  small(160),
  mid(224),
  large(288),
  infinity(double.infinity);

  final double value;
  const UtButtonWidthStyle(this.value);
}

enum UtButtonHeightStyle {
  small(36),
  mid(44),
  large(66);

  final double value;
  const UtButtonHeightStyle(this.value);
}

enum UtButtonSizeStyle {
  smallWxSmallH(UtButtonWidthStyle.small, UtButtonHeightStyle.small),
  smallWxMidH(UtButtonWidthStyle.small, UtButtonHeightStyle.mid),
  smallWxLargeH(UtButtonWidthStyle.small, UtButtonHeightStyle.large),

  midWxSmallH(UtButtonWidthStyle.mid, UtButtonHeightStyle.small),
  midWxMidH(UtButtonWidthStyle.mid, UtButtonHeightStyle.mid),
  midWxLargeH(UtButtonWidthStyle.mid, UtButtonHeightStyle.large),

  largeWxSmallH(UtButtonWidthStyle.large, UtButtonHeightStyle.small),
  largeWxMidH(UtButtonWidthStyle.large, UtButtonHeightStyle.mid),
  largeWxLargeH(UtButtonWidthStyle.large, UtButtonHeightStyle.large),

  infinityWxSmallH(UtButtonWidthStyle.infinity, UtButtonHeightStyle.small),
  infinityWxMidH(UtButtonWidthStyle.infinity, UtButtonHeightStyle.mid),
  infinityWxLargeH(UtButtonWidthStyle.large, UtButtonHeightStyle.large);

  final UtButtonWidthStyle width;
  final UtButtonHeightStyle height;

  const UtButtonSizeStyle(this.width, this.height);

  double get widthValue => width.value;
  double get heightValue => height.value;

  Size get size => Size(widthValue, heightValue);
}
