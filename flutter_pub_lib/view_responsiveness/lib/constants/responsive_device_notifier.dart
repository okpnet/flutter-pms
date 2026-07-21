import 'package:flutter/material.dart';

import 'media_break_point.dart';

///メディアサイズの変更通知
class ResponsiveDeviceNotifier extends ValueNotifier<MediaBreakPoint> {
  ResponsiveDeviceNotifier(MediaBreakPoint? defaultValue)
    : super(defaultValue ?? MediaBreakPoint.pc);

  void update(MediaBreakPoint newBreakPoint) {
    if (value != newBreakPoint) {
      value = newBreakPoint;
    }
  }
}
