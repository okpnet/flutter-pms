import 'package:mock_up/contents/_shared/grids/grid_scope_service/grid_summary_notifier.dart';
import 'package:mock_up/contents/_shared/grids/models/summary_model.dart';

import '../../../../imports.dart';

part 'grid_summary_converter.g.dart';

@riverpod
GridSummaryConverter resultConvert(Ref ref) {
  final notifier = ref.watch(gridSummaryProvider.notifier);
  return GridSummaryConverter(notifier);
}

class GridSummaryConverter
    implements IResultAdapterConverter<Map<String, dynamic>> {
  final GridSummaryNotifier summaryNotifier;

  GridSummaryConverter(this.summaryNotifier);

  @override
  IResultAdapter convertTo(Map<String, dynamic> result) {
    ///合計モデルに変換
    final result = SummaryModel(numberOfRecord: 0, rows: []);
    summaryNotifier.update(result);
    return result;
  }
}
