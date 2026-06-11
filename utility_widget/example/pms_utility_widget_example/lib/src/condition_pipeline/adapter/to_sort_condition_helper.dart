import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/src/condition_pipeline/adapter/to_serarch_condition_helper.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/nodes/root_condition.dart';

import '../condition/fields/sort_condition.dart';
import '../condition/search_condition.dart';

class ToSortConditionHelper {
  static SearchCondition fromTrinaLazyPaginationRequest({
    required TrinaLazyPaginationRequest request,
    required int take,
  }) {
    final condition = ToSerarchConditionHelper.toConditionsFromFilterRows(
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
      field: column.field,
      order: column.sort.isAscending ? Order.asc : Order.desc,
    );
  }
}
