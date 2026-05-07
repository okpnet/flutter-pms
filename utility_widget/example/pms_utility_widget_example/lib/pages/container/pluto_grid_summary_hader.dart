import 'package:utility_widget/utiritiy_widget.dart';

final class SummaryData {
  final int? numberOfRecords;
  final int? filteredNumberOfRecords;

  bool get hasNumOfRec => numberOfRecords != null;

  bool get hasFilterNumOfRec => filteredNumberOfRecords != null;

  const SummaryData({this.numberOfRecords, this.filteredNumberOfRecords});
  SummaryData copyWith({int? numberOfRecords, int? filteredNumberOfRecords}) {
    return SummaryData(
      numberOfRecords: numberOfRecords ?? this.numberOfRecords,
      filteredNumberOfRecords:
          filteredNumberOfRecords ?? this.filteredNumberOfRecords,
    );
  }
}

class PlutoGridSummaryHader extends StatelessWidget {
  final SummaryData summaryData;
  final Widget? leading;
  final Widget? ending;

  const PlutoGridSummaryHader({
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
