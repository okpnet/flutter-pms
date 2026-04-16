import 'package:utility_widget/styles/export/ut_widget_design.dart';

class UtInputSizeStyle {
  final double smallWidth = 100;
  final double midWidth = 100;
  final double largeWidth = 100;

  final double smallHight = 100;
  final double midHight = 100;
  final double largeHight = 100;

  double get heightt => _getHight();

  double get width => _getWidth();

  @RangeValues(0x1, 0xF)
  final int value;

  UtInputSizeStyle(this.value);

  static UtInputSizeStyle smallWxSmallH = UtInputSizeStyle(0x5);
  static UtInputSizeStyle smallWxMidH = UtInputSizeStyle(0x6);
  static UtInputSizeStyle smallWxLargeH = UtInputSizeStyle(0x7);

  static UtInputSizeStyle midWxSmallH = UtInputSizeStyle(0x9);
  static UtInputSizeStyle midWxMidH = UtInputSizeStyle(0xA);
  static UtInputSizeStyle midWxLargeH = UtInputSizeStyle(0xB);

  static UtInputSizeStyle largeWxSmallH = UtInputSizeStyle(0xD);
  static UtInputSizeStyle largeWxMidH = UtInputSizeStyle(0xE);
  static UtInputSizeStyle largeWxLargeH = UtInputSizeStyle(0xF);

  double _getHight() {
    final hightBit = value ^ 0xC;
    return switch (hightBit) {
      0x1 => smallHight,
      0x2 => midHight,
      0x3 => largeHight,
      _ => throw Exception('out of range'),
    };
  }

  double _getWidth() {
    final widthBit = value ^ 0xC;
    return switch (widthBit) {
      0x1 => smallWidth,
      0x2 => midWidth,
      0x3 => largeWidth,
      _ => throw Exception('out of range'),
    };
  }
}
