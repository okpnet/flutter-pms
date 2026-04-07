part of '../ut_input_field.dart';

class InputTextStyleHelper with UtMixinWidgetHelper {
  static InputBorder primary() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(UtInputFieldConstant.RADIUS),
      ),
    );
  }
}
