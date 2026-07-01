import 'package:condition_pipeline/condition_pipeline.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/src/manager/service/helpers/to_serarch_condition_helper.dart';

class ToSortConditionHelper {
  static SearchCondition fromTrinaLazyPaginationRequest({
    required TrinaLazyPaginationRequest request,
    required int take,
  }) {
    final condition = ToConditionHelper.toConditionsFromFilterRows(
      request.filterRows,
    );
    if (condition case RootCondition root) {
      root.setSiblingsRule(.and);
      if (request.sortColumn != null) {
        root.addChild(toSortOrderFromTrinaColumn(request.sortColumn!));
        root.take = take;
        root.skip = take * request.page;
      }
    }
    return condition;
  }

  static SortCondition toSortOrderFromTrinaColumn(TrinaColumn column) {
    return SortCondition(
      field: (trinColumn) => column.field,
      isDesc: column.sort.isDescending,
    );
  }
}
