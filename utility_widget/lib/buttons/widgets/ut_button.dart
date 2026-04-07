part of '../ut_button.dart';

class UtButton extends StatelessWidget {
  final String label;
  final Icon? icon;
  final UtColorStyle type;
  final VoidCallback onPressed;
  final String? hint;

  const UtButton({
    super.key,
    this.icon,
    required this.label,
    required this.type,
    required this.onPressed,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return UtLayoutWidgetHelper.containerAllMargin(
      child: switch (type) {
        UtColorStyle.primary => _primary(context),
        UtColorStyle.secondary => _secondary(context),
        UtColorStyle.tertiary => _tertiary(context),
      },
    );
  }

  Widget _primary(BuildContext context) {
    return icon == null
        ? ElevatedButton(
            key: key,
            onPressed: onPressed,
            style: UtButtonStyleHelper.primary(context),
            child: Text(label),
          )
        : ElevatedButton.icon(
            key: key,
            onPressed: onPressed,
            style: UtButtonStyleHelper.primary(context),
            label: Text(label),
            icon: icon,
          );
  }

  Widget _secondary(BuildContext context) {
    return icon == null
        ? OutlinedButton(
            key: key,
            onPressed: onPressed,
            style: UtButtonStyleHelper.secondary(context),
            child: Text(label),
          )
        : OutlinedButton.icon(
            key: key,
            onPressed: onPressed,
            style: UtButtonStyleHelper.secondary(context),
            label: Text(label),
            icon: icon,
          );
  }

  Widget _tertiary(BuildContext context) {
    return icon == null
        ? TextButton(
            key: key,
            onPressed: onPressed,
            style: UtButtonStyleHelper.tertiary(context),
            child: Text(label),
          )
        : TextButton.icon(
            key: key,
            onPressed: onPressed,
            style: UtButtonStyleHelper.tertiary(context),
            icon: icon,
            label: Text(label),
          );
  }

  factory UtButton.primary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    Tooltip? tooltip,
  }) => UtButton(
    key: key,
    label: label,
    type: UtColorStyle.primary,
    onPressed: onPressed,
  );

  factory UtButton.secondary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    Tooltip? tooltip,
  }) => UtButton(
    key: key,
    label: label,
    type: UtColorStyle.secondary,
    onPressed: onPressed,
  );
  factory UtButton.tertiary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    Tooltip? tooltip,
  }) => UtButton(
    key: key,
    label: label,
    type: UtColorStyle.tertiary,
    onPressed: onPressed,
  );
  factory UtButton.primaryWithIcon({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    required Icon icon,
    Tooltip? tooltip,
  }) => UtButton(
    key: key,
    label: label,
    icon: icon,
    type: UtColorStyle.primary,
    onPressed: onPressed,
  );

  factory UtButton.secondaryWithIcon({
    Key? key,
    required String label,
    required Icon icon,
    required VoidCallback onPressed,
    Tooltip? tooltip,
  }) => UtButton(
    key: key,
    label: label,
    icon: icon,
    type: UtColorStyle.secondary,
    onPressed: onPressed,
  );
  factory UtButton.tertiaryWithIcon({
    Key? key,
    required String label,
    required Icon icon,
    required VoidCallback onPressed,
    Tooltip? tooltip,
  }) => UtButton(
    key: key,
    label: label,
    icon: icon,
    type: UtColorStyle.tertiary,
    onPressed: onPressed,
  );
}
