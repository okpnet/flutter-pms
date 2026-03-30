part of '../ut_button.dart';

class UtButton {
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
    return UtLayoutWidgetHelper.paddingField(
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
        style: UtButtonStyleHelper.primary(context),
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
    return UtLayoutWidgetHelper.paddingField(
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
        style: UtButtonStyleHelper.secondary(context),
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
    return UtLayoutWidgetHelper.paddingField(
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
        style: UtButtonStyleHelper.tertiary(context),
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
    return UtLayoutWidgetHelper.paddingField(
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
        style: UtButtonStyleHelper.primary(context),
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
    return UtLayoutWidgetHelper.paddingField(
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
        style: UtButtonStyleHelper.secondary(context),
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
    return UtLayoutWidgetHelper.paddingField(
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
        style: UtButtonStyleHelper.tertiary(context),
        label: label!,
        icon: icon,
      ),
    );
  }
}
