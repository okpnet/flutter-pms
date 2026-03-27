part of 'field.dart';

class InputTextHelper with MixinWidgetHelper {
  static InputBorder primary() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(InputFieldConstant.RADIUS),
      ),
    );
  }
}
