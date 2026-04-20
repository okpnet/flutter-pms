part of '../ut_input_field.dart';

class UtDropdownInput<T> extends StatelessWidget with UtInputTextStyleMixin {
  final T? initialValue;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final String? label;
  final List<DropdownMenuItem<T>>? items;
  final ValueChanged<T?>? onChanged;
  final UtPriorityStyle type;
  final String? hint;
  final UtInputWidthStyle widthStyle;

  const UtDropdownInput({
    super.key,
    this.initialValue,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.label,
    this.items = const [],
    this.type = UtPriorityStyle.primary,
    this.hint,
    this.widthStyle = UtInputWidthStyle.infinity,
  });

  @override
  Widget build(BuildContext context) {
    final body = switch (type) {
      UtPriorityStyle.primary => _primary(),
      _ => throw Exception('Not implement UtDropdownInput type.'),
    };
    return UtLayoutCrevice.margin(
      child: hint != null
          ? UtTooltip(
              title: hint!,
              child: SizedBox(width: widthStyle.value, child: body),
            )
          : SizedBox(width: widthStyle.value, child: body),
    );
  }

  Widget _primary() {
    return DropdownButtonFormField<T>(
      initialValue: initialValue,
      decoration: InputDecoration(
        border: primary(),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        label: label != null ? Text(label!) : null,
        // contentPadding: createPadddingInsets(),
      ),
      items: items,
      onChanged: onChanged,
    );
  }

  factory UtDropdownInput.primary({
    Key? key,
    T? initialValue,
    Icon? suffixIcon,
    Icon? prefixIcon,
    String? label,
    List<DropdownMenuItem<T>>? items,
    ValueChanged<T?>? onChanged,
    required hint,
  }) => UtDropdownInput<T>(
    key: key,
    onChanged: onChanged,
    initialValue: initialValue,
    items: items,
    label: label,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    type: UtPriorityStyle.primary,
  );
}
