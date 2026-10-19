enum UtInputWidthStyle {
  small(192),
  mid(256),
  large(320),
  infinity(double.infinity);

  final double value;
  const UtInputWidthStyle(this.value);
}

// enum UtInputHeightStyle {
//   small(44),
//   mid(48),
//   large(60);

//   final double value;
//   const UtInputHeightStyle(this.value);
// }

// enum UtInputSizeStyle {
//   smallWxSmallH(UtInputWidthStyle.small, UtInputHeightStyle.small),
//   smallWxMidH(UtInputWidthStyle.small, UtInputHeightStyle.mid),
//   smallWxLargeH(UtInputWidthStyle.small, UtInputHeightStyle.large),

//   midWxSmallH(UtInputWidthStyle.mid, UtInputHeightStyle.small),
//   midWxMidH(UtInputWidthStyle.mid, UtInputHeightStyle.mid),
//   midWxLargeH(UtInputWidthStyle.mid, UtInputHeightStyle.large),

//   largeWxSmallH(UtInputWidthStyle.large, UtInputHeightStyle.small),
//   largeWxMidH(UtInputWidthStyle.large, UtInputHeightStyle.mid),
//   largeWxLargeH(UtInputWidthStyle.large, UtInputHeightStyle.large),

//   infinityWxSmallH(UtInputWidthStyle.infinity, UtInputHeightStyle.small),
//   infinityWxMidH(UtInputWidthStyle.infinity, UtInputHeightStyle.mid),
//   infinityWxLargeH(UtInputWidthStyle.infinity, UtInputHeightStyle.large);

//   final UtInputWidthStyle width;
//   final UtInputHeightStyle height;

//   const UtInputSizeStyle(this.width, this.height);

//   double get widthValue => width.value;
//   double get heightValue => height.value;
// }
