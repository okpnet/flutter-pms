import 'package:flutter/material.dart';
import 'package:view_responsiveness/constants/constants.dart';

///メディアサイズ変更通知のスコープを定義する
class ResponsiveScope extends InheritedNotifier<ResponsiveDeviceNotifier> {
  const ResponsiveScope({
    super.key,
    required ResponsiveDeviceNotifier super.notifier,
    required super.child,
  });

  static MediaBreakPoint? of(BuildContext context) {
    final inherited = context
        .dependOnInheritedWidgetOfExactType<ResponsiveScope>();
    return inherited?.notifier?.value;
  }

  static ResponsiveDeviceNotifier? notifierOf(BuildContext context) {
    final inherited = context
        .dependOnInheritedWidgetOfExactType<ResponsiveScope>();
    return inherited?.notifier;
  }
}
