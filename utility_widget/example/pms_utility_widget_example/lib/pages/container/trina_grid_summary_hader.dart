import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/src/manager/model/summary_data.dart';

class TrinaGridSummaryHader extends StatelessWidget {
  final SummaryData summaryData;
  final Widget? leading;
  final Widget? ending;

  const TrinaGridSummaryHader({
    super.key,
    required this.summaryData,
    this.leading,
    this.ending,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ?leading,
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: .end,
            children: [
              if (summaryData.hasFilterNumOfRec)
                UtLayoutPadding(
                  direction: .all,
                  child: UtText.label(
                    '条件適用 ${summaryData.filteredNumberOfRecords!}件',
                  ),
                ),
              UtLayoutPadding(
                direction: .all,
                child: summaryData.hasNumOfRec
                    ? UtText.label('全 ${summaryData.numberOfRecords!}件')
                    : UtText('お待ちください'),
              ),
            ],
          ),
        ),
        ?ending,
      ],
    );
  }
}
