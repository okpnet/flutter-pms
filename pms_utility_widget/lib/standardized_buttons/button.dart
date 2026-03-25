import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:pms_utility_widget/constants/button_style_constant.dart';
import 'package:pms_utility_widget/standardized_buttons/button.dart';

part 'primary_button.dart';
part 'secondary_button.dart';
part 'tertiary_button.dart';
part 'primary_icon_button.dart';

enum ButtonStyleType { primary, secondary, tertiary }

mixin AppButtonColorMixin {
  Color bg(BuildContext context) => Theme.of(context).colorScheme.primary;

  Color fg(BuildContext context) => Theme.of(context).colorScheme.onPrimary;
}

abstract class StandardizedButtonBase extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;
  final FocusNode? focusNode;
  final bool? autofocus;
  final Clip? clipBehavior;
  final WidgetStatesController? statesController;
  final Widget? icon;
  final Widget? label;
  final Widget? child;
  final IconAlignment? iconAlignment;
  final String? tooltip;

  const StandardizedButtonBase({
    super.key,
    required this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.focusNode,
    this.autofocus,
    this.clipBehavior,
    this.statesController,
    this.iconAlignment,
    this.tooltip,
    this.child,
    this.label,
    this.icon,
  });
}
