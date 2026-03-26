import 'package:flutter/material.dart';
import 'package:pms_utility_widget/constants/button_style_constant.dart';
import 'package:pms_utility_widget/extends/mixin_widget_helper.dart';

part 'primary_button.dart';
part 'secondary_button.dart';
part 'tertiary_button.dart';
part 'primary_icon_button.dart';
part 'button_enums.dart';
part 'secondary_icon_button.dart';
part 'tertiary_icon_button.dart';
part 'button_style_helper.dart';
part 'pms_button.dart';

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
  final Widget? child;
  final IconAlignment? iconAlignment;
  final String? tooltip;
  final Widget? icon;
  final Widget? label;

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

abstract class StandardizedIconButtonBase extends StandardizedButtonBase {
  final ButtonSize size;

  ButtonStyle createButtonStyle(BuildContext context);

  const StandardizedIconButtonBase({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior,
    super.statesController,
    required super.icon,
    this.size = ButtonSize.small,
  });

  @override
  Widget build(BuildContext context) {
    final style = createButtonStyle(context);
    return IconButton(
      onPressed: onPressed,
      style: style,
      icon: icon!,
      iconSize: size.iconSize,
    );
  }
}
