part of '../ut_input_field.dart';

class UtCheckboxInput extends StatelessWidget with UtCheckboxStyleMixin {
  final UtPriorityStyle type;
  final ValueChanged<bool?> onChanged;
  final bool? value;
  final String? label;
  final String? hint;

  UtCheckboxInput({
    super.key,
    required this.type,
    required this.onChanged,
    this.value,
    this.label,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    final body = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        switch (type) {
          UtPriorityStyle.primary => _primary(context),
          UtPriorityStyle.secondary => _secondary(context),
          UtPriorityStyle.tertiary => _tertiary(context),
        },
        if (label != null)
          UtLayoutCrevice.margin(
            direction: UtDirection.all ^ UtDirection.left,
            child: Text(label!),
          ),
      ],
    );
    return UtLayoutCrevice.margin(
      child: hint != null ? UtTooltip(title: hint!, child: body) : body,
    );
  }

  Widget _primary(BuildContext context) {
    return Checkbox(
      key: key,
      value: value,
      onChanged: onChanged,
      fillColor: primary(context),
    );
  }

  Widget _secondary(BuildContext context) {
    return Checkbox(
      key: key,
      value: value,
      onChanged: onChanged,
      fillColor: transparent(),
      checkColor: secondaryColor(context),
      side: secondarySide(context),
    );
  }

  Widget _tertiary(BuildContext context) {
    return Checkbox(
      key: key,
      value: value,
      onChanged: onChanged,
      fillColor: transparent(),
      checkColor: secondaryColor(context),
      side: tertiarySide(),
    );
  }

  factory UtCheckboxInput.primary({
    Key? key,
    String? label,
    required ValueChanged<bool?> onChanged,
    bool? value,
  }) => UtCheckboxInput(
    key: key,
    onChanged: onChanged,
    type: UtPriorityStyle.primary,
    label: label,
    value: value,
  );
  factory UtCheckboxInput.secondary({
    Key? key,
    String? label,
    required ValueChanged<bool?> onChanged,
    bool? value,
  }) => UtCheckboxInput(
    key: key,
    onChanged: onChanged,
    type: UtPriorityStyle.secondary,
    label: label,
    value: value,
  );
  factory UtCheckboxInput.tertiary({
    Key? key,
    String? label,
    required ValueChanged<bool?> onChanged,
    bool? value,
  }) => UtCheckboxInput(
    key: key,
    onChanged: onChanged,
    type: UtPriorityStyle.tertiary,
    label: label,
    value: value,
  );
}
