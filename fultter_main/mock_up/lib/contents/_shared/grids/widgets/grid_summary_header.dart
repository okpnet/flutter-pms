import '../../../../imports.dart';
import '../grid_scope_service/grid_summary_notifier.dart';

class GridSummaryHeader extends ConsumerWidget {
  const GridSummaryHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summayr = ref.watch(gridSummaryProvider);
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: .end,
            children: [
              if (summayr?.filteredNumberOfRecords != null)
                Text(
                  '条件適用 ${summayr!.filteredNumberOfRecords}件',
                ).spaceAll(context),

              summayr == null
                  ? Text('お待ちください').spaceAll(context)
                  : Text('全 ${summayr.numberOfRecord}件').spaceAll(context),
            ],
          ),
        ),
      ],
    );
  }
}
