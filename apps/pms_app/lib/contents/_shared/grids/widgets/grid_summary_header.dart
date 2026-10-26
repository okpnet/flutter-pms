import '../../../../i18n/strings_provider.dart';
import '../../../../imports.dart';
import '../grid_scope_service/grid_summary_notifier.dart';

class GridSummaryHeader extends ConsumerWidget {
  const GridSummaryHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(appStringsProvider);
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
                  t.grid.filtered(count: summayr!.filteredNumberOfRecords ?? 0),
                ).spaceAll(context),

              summayr == null
                  ? Text(t.grid.wait).spaceAll(context)
                  : Text(
                      t.grid.total(count: summayr.numberOfRecord),
                    ).spaceAll(context),
            ],
          ),
        ),
      ],
    );
  }
}
