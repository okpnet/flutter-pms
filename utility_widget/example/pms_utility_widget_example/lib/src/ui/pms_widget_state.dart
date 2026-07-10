import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';

abstract class IPmsWidgetState {
  PmsState get state;
  void dispose();
}

abstract class PmsWidgetState<T extends StatefulWidget> extends State<T>
    implements IPmsWidgetState {
  @override
  void dispose() {
    state.dispose();
    super.dispose();
  }
}
