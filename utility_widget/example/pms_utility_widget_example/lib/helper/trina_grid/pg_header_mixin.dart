import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/demo_summary_state.dart';
import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/pages/container/trina_grid_summary_hader.dart';

abstract interface class IHeaderOfTrinaGrid {
  DemoSummaryState get summaryState;
}

///ヘッダー管理Mixin
mixin PgHeaderMixin {
  final summaryNotifier = ValueNotifier<SummaryData>(SummaryData());

  void setSummaryData(SummaryData data) {
    summaryNotifier.value = data;
  }

  Widget buildHeader() {
    return ValueListenableBuilder<SummaryData>(
      valueListenable: summaryNotifier,
      builder: (context, value, _) {
        return TrinaGridSummaryHader(summaryData: value);
      },
    );
  }
}
