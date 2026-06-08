import 'dart:ffi';

import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/src/manager/state/mixin/grid_summary_state.dart';

class TrinaGridSummaryHader extends StatelessWidget {
  final IGridSummaryState summaryState;
  final Widget? leading;
  final Widget? ending;

  const TrinaGridSummaryHader({
    super.key,
    required this.summaryState,
    this.leading,
    this.ending,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: summaryState,
      builder: (context, _) {
        final summaryData = summaryState.summaryData;
        return Row(
          children: [
            ?leading,
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: .end,
                children: [
                  if (summaryData != null && summaryData!.hasFilterNumOfRec)
                    UtLayoutPadding(
                      direction: .all,
                      child: UtText.label(
                        '条件適用 ${summaryData.filteredNumberOfRecords!}件',
                      ),
                    ),
                  UtLayoutPadding(
                    direction: .all,
                    child: summaryData != null && summaryData.hasNumOfRec
                        ? UtText.label('全 ${summaryData.numberOfRecords ?? 0}件')
                        : UtText('お待ちください'),
                  ),
                ],
              ),
            ),
            ?ending,
          ],
        );
      },
    );
  }
}
