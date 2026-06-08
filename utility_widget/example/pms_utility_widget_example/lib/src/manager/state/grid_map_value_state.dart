import 'package:utility_widget_example/src/manager/state/mixin/grid_summary_state.dart';
import 'package:utility_widget_example/src/manager/state/mixin/value_state.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';

class GridMapValueState extends PmsState
    with GridSummaryState, ValueState<Map<String, dynamic>> {}
