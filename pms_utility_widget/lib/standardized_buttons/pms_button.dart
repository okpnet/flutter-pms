part of 'button.dart';

class PmsButton extends StandardizedButtonBase with AppButtonColorMixin {
  final ButtonStyleType type;

  PmsButton._({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior,
    super.statesController,
    required super.child,
    required this.type,
  });

  PmsButton._icon({
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
    required super.label,
    required this.type,
  });

  factory PmsButton.primary({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    required Widget? child,
    IconAlignment? iconAlignment,
    String? tooltip,
  }) {
    return PmsButton._(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      type: ButtonStyleType.primary,
      child: child,
    );
  }

  factory PmsButton.secondary({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    required Widget? child,
    IconAlignment? iconAlignment,
    String? tooltip,
  }) {
    return PmsButton._(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      type: ButtonStyleType.secondary,
      child: child,
    );
  }

  factory PmsButton.tertiary({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    required Widget? child,
    IconAlignment? iconAlignment,
    String? tooltip,
  }) {
    return PmsButton._(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      type: ButtonStyleType.tertiary,
      child: child,
    );
  }
  factory PmsButton.primaryWithIcon({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    required Widget? label,
    IconAlignment? iconAlignment,
    String? tooltip,
    required Icon icon,
  }) {
    return PmsButton._icon(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      type: ButtonStyleType.primary,
      label: label,
      icon: icon,
    );
  }

  factory PmsButton.secondaryWithIcon({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    required Widget? label,
    IconAlignment? iconAlignment,
    String? tooltip,
    required Icon icon,
  }) {
    return PmsButton._icon(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      type: ButtonStyleType.secondary,
      label: label,
      icon: icon,
    );
  }

  factory PmsButton.tertiaryWithIcon({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    required Widget? label,
    IconAlignment? iconAlignment,
    String? tooltip,
    required Icon icon,
  }) {
    return PmsButton._icon(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      type: ButtonStyleType.tertiary,
      label: label,
      icon: icon,
    );
  }
  @override
  Widget build(BuildContext context) {
    final style = ButtonStyleHelper.primary(context);
    return switch (type) {
      ButtonStyleType.primary =>
        icon == null
            ? ElevatedButton(onPressed: onPressed, style: style, child: child)
            : ElevatedButton.icon(
                onPressed: onPressed,
                style: style,
                icon: icon!,
                label: label!,
              ),
      ButtonStyleType.secondary =>
        icon == null
            ? OutlinedButton(onPressed: onPressed, style: style, child: child)
            : OutlinedButton.icon(
                onPressed: onPressed,
                style: style,
                icon: icon!,
                label: label!,
              ),
      ButtonStyleType.tertiary =>
        icon == null
            ? TextButton(onPressed: onPressed, style: style, child: child!)
            : TextButton.icon(
                onPressed: onPressed,
                style: style,
                icon: icon!,
                label: label!,
              ),
    };
  }
}
