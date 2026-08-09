import '../../../../imports.dart';
import '../models/models.dart';

part 'grid_summary_notifier.g.dart';

@riverpod
class GridSummaryNotifier extends _$GridSummaryNotifier {
  @override
  SummaryModel? build() => null;

  void init() => state = null;

  void update(SummaryModel model) => state = model;
}
