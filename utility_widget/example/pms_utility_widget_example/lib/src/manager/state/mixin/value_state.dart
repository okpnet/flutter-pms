import 'package:utility_widget_example/src/manager/state/pms_state.dart';

abstract class IValueState<T> extends PmsState {
  T? get value;

  void setValue(T? value);
}

mixin ValueState<T> on PmsState implements IValueState<T> {
  T? _value;

  @override
  get value => _value;

  @override
  void setValue(T? value) {
    if (_value == value) {
      return;
    }
    _value = value;
    notifyListeners();
  }
}
