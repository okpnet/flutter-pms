import 'package:condition_pipeline/condition_pipeline.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/src/condition_pipeline/adapter/to_serarch_condition_helper.dart';
import 'package:utility_widget_example/src/manager/provider/grid_provider.dart';

abstract class IDepartmentTreeLoad {
  IConditionCallback get toCondition;
  InitConditionCallback get toInitCondition;
}

mixin DepartmentMixin {
  ///最初以降の展開時の条件式
  IConditionCallback toCondition = (TrinaGridStateManager state, TrinaRow row) {
    final rootCondition = ToConditionHelper.toConditionsFromFilterRows(
      state.filterRows,
    );
    final branch = rootCondition.addBranch();

    final condition = ToConditionHelper.toConditionFromDataRow(
      row: row,
      fieldId: 'id',
      operator: EqualOperator(),
    );
    branch.addChild(condition);
    return rootCondition;
  };

  ///読み込み最初の条件式。以降は[IConditionCallback]が呼ばれる
  InitConditionCallback toInitCondition = (TrinaRow? row) {
    final root = RootCondition();
    final branch = root.addBranch();

    final conditionRoot = ToConditionHelper.toFieldRefCondition(
      fieldId: 'parent_id',
      toField: 'id',
      operator: EqualOperator(),
    );

    branch.addChild(conditionRoot);
    return root;
  };
}
