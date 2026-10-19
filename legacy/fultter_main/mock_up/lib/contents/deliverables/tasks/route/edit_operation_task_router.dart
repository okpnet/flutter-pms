import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/deliverables/tasks/edit_operation_task.dart';

import '../../../../imports.dart';

part 'edit_operation_task_router.g.dart';

abstract class EditOperationTaskRouterContet {
  static const String name = 'operation_task_edit';
  static const String path = '/items/operation/edit';
}

@TypedGoRoute<EditOperationTaskRouter>(
  path: EditOperationTaskRouterContet.path,
  name: EditOperationTaskRouterContet.name,
)
class EditOperationTaskRouter extends GoRouteData
    with $EditOperationTaskRouter {
  const EditOperationTaskRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditOperationTask();
  }
}
