import 'package:utility_widget/utiritiy_widget.dart';
import '../../grid/state/states.dart';

class TrinaGridSummaryHader extends StatelessWidget {
  final SearchResultInfoState searchResultInfoState;
  final Widget? leading;
  final Widget? ending;

  const TrinaGridSummaryHader({
    super.key,
    required this.searchResultInfoState,
    this.leading,
    this.ending,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: searchResultInfoState,
      builder: (context, _) {
        final searchResultInfo = searchResultInfoState.model;
        return Row(
          children: [
            ?leading,
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: .end,
                children: [
                  if (searchResultInfo.hasFilterNumOfRec)
                    UtLayoutPadding(
                      direction: .all,
                      child: UtText.label(
                        '条件適用 ${searchResultInfo.filteredNumberOfRecords!}件',
                      ),
                    ),
                  UtLayoutPadding(
                    direction: .all,
                    child: searchResultInfo.hasNumOfRec
                        ? UtText.label(
                            '全 ${searchResultInfo.numberOfRecords ?? 0}件',
                          )
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
