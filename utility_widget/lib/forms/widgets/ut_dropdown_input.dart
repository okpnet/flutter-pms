part of '../ut_input_field.dart';

class UtDropdownInput<T> extends StatelessWidget {
  final T? initialValue;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final String? label;
  final List<DropdownMenuItem<T>>? items;
  final ValueChanged<T?>? onChanged;
  final UtColorStyle type;

  const UtDropdownInput({
    super.key,
    this.initialValue,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.label,
    this.items = const [],
    this.type = UtColorStyle.primary,
  });

  @override
  Widget build(BuildContext context) {
    return UtLayoutWidgetHelper.containerAllMargin(
      child: switch (type) {
        UtColorStyle.primary => _primary(),
        _ => throw Exception('Not implement UtDropdownInput type.'),
      },
    );
  }

  Widget _primary() {
    return DropdownButtonFormField<T>(
      initialValue: initialValue,
      decoration: InputDecoration(
        border: InputTextStyleHelper.primary(),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        label: label != null ? Text(label!) : null,
        contentPadding: EdgeInsets.symmetric(
          horizontal: UtInputFieldConstant.PADDING_H,
        ),
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
  }) => UtDropdownInput<T>(
    key: key,
    onChanged: onChanged,
    initialValue: initialValue,
    items: [],
    label: label,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    type: UtColorStyle.primary,
  );
}
