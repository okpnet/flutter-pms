part of '../ut_input_field.dart';

class UtRadioInput<T> extends StatelessWidget {
  final T? value;
  final UtColorStyle type;
  final String? title;
  final String? subTitle;
  final String? hint;

  const UtRadioInput({
    super.key,
    this.value,
    this.title,
    this.subTitle,
    this.type = UtColorStyle.primary,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    final body = switch (type) {
      UtColorStyle.primary => _primary(),
      _ => throw Exception('Not implement UtRadioInput type.'),
    };
    return UtLayoutMargin(
      child: hint != null ? UtTooltip(title: hint!, child: body) : body,
    );
  }

  Widget _primary() {
    return RadioListTile(
      key: key,
      value: value,
      title: title != null ? Text(title!) : null,
      subtitle: subTitle != null ? Text(subTitle!) : null,
    );
  }

  factory UtRadioInput.primary({
    Key? key,
    T? value,

    String? title,
    String? subTitle,
  }) => UtRadioInput(
    key: key,
    title: title,
    subTitle: subTitle,
    type: UtColorStyle.primary,
    value: value,
  );
}
