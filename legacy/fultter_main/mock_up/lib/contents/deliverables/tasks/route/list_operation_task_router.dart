import 'package:mock_up/contents/deliverables/tasks/list_operatin_task.dart';
import 'package:mock_up/imports.dart';

part 'list_operation_task_router.g.dart';

abstract class ListOperationTaskRouterContent {
  static const String name = 'operation_task_edit';
  static const String path = '/items/operation/edit';
}

@TypedGoRoute<ListOperationTaskRouter>(
  path: ListOperationTaskRouterContent.path,
  name: ListOperationTaskRouterContent.name,
)
class ListOperationTaskRouter extends GoRouteData
    with $ListOperationTaskRouter {
  const ListOperationTaskRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListOperatinTask();
  }
}
