import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';
import 'package:utility_widget_example/src/manager/state/summary_state.dart';

class TreeGridEditState extends PmsStateValue<Map<String, dynamic>>
    implements ISummaryState {
  SummaryData? _summaryData;
  @override
  SummaryData? get summaryData => _summaryData;

  @override
  void setSummaryValue(SummaryData value) {
    _summaryData = value;
    notifyListeners();
  }
}
