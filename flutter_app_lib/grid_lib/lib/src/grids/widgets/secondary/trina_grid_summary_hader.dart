import 'package:flutter/material.dart';
import 'package:theme_lib/extenssions/build_context_space_field_theme.dart';

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
                    Text(
                      '条件適用 ${searchResultInfo.filteredNumberOfRecords!}件',
                    ).spaceAll(context),
                  searchResultInfo.hasNumOfRec
                      ? Text(
                          '全 ${searchResultInfo.numberOfRecords ?? 0}件',
                        ).spaceAll(context)
                      : Text('お待ちください'),
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
