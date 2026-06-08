import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';

abstract class IGridSummaryState extends PmsState {
  SummaryData? get summaryData;
  void setSummaryValue(SummaryData value);
}

///データの合計情報の状態管理
mixin GridSummaryState on PmsState implements IGridSummaryState {
  SummaryData? _summaryData;
  @override
  SummaryData? get summaryData => _summaryData;

  @override
  void setSummaryValue(SummaryData value) {
    _summaryData = value;
    notifyListeners();
  }
}
