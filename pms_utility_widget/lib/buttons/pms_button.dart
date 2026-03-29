part of 'button.dart';

class PmsButton {
  static Widget primary(
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
    return LayoutWidgetHelper.paddingField(
      child: ElevatedButton(
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
      ),
    );
  }

  static Widget secondary(
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
    return LayoutWidgetHelper.paddingField(
      child: OutlinedButton(
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
      ),
    );
  }

  static Widget tertiary(
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
    return LayoutWidgetHelper.paddingField(
      child: TextButton(
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
      ),
    );
  }

  static Widget primaryWithIcon(
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
    return LayoutWidgetHelper.paddingField(
      child: ElevatedButton.icon(
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
      ),
    );
  }

  static Widget secondaryWithIcon(
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
    return LayoutWidgetHelper.paddingField(
      child: OutlinedButton.icon(
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
      ),
    );
  }

  static Widget tertiaryWithIcon(
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
    return LayoutWidgetHelper.paddingField(
      child: TextButton.icon(
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
      ),
    );
  }
}
