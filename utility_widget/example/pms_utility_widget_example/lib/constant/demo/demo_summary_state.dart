import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';

class DemoSummaryState extends PmsState {
  SummaryData? _summaryData;

  SummaryData? get summaryData => _summaryData;

  void setValue(SummaryData value) {
    _summaryData = value;
    notifyListeners();
  }
}
