import 'package:flutter/material.dart';

mixin MixinWidgetHelper {
  static Color bg(BuildContext context) =>
      Theme.of(context).colorScheme.primary;

  static Color fg(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimary;
}
