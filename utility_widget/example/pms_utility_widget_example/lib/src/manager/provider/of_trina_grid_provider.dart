import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/constant/demo/demo_summary_state.dart';

abstract interface class IGridStateManagerOfTrinaGrid {
  TrinaGridStateManager get stateManager;
}

abstract interface class ISummaryOfTrinaGrid {
  DemoSummaryState get summaryState;
}
