part of 'button.dart';

class PmsButton {
  static ButtonStyleButton primary(
    BuildContext context, {
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
    return ElevatedButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      style: ButtonStyleHelper.primary(context),
      child: child,
    );
  }

  static ButtonStyleButton secondary(
    BuildContext context, {
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
    return OutlinedButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      style: ButtonStyleHelper.secondary(context),
      child: child,
    );
  }

  static ButtonStyleButton tertiary(
    BuildContext context, {
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
    return TextButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      style: ButtonStyleHelper.tertiary(context),
      child: child!,
    );
  }

  static ButtonStyleButton primaryWithIcon(
    BuildContext context, {
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
    return ElevatedButton.icon(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      style: ButtonStyleHelper.primary(context),
      label: label!,
      icon: icon,
    );
  }

  static ButtonStyleButton secondaryWithIcon(
    BuildContext context, {
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
    return OutlinedButton.icon(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      style: ButtonStyleHelper.secondary(context),
      label: label!,
      icon: icon,
    );
  }

  static ButtonStyleButton tertiaryWithIcon(
    BuildContext context, {
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
    return TextButton.icon(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      style: ButtonStyleHelper.tertiary(context),
      label: label!,
      icon: icon,
    );
  }
}
