import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/deliverables/tasks/_tasks.dart';

import '../../../../imports.dart';

part 'edit_task_router.g.dart';

abstract class EditTaskRouterContent {
  static const String name = 'task';
  static const String path = '/items/tasks/edit';
}

@TypedGoRoute<EditTaskRouter>(
  path: EditTaskRouterContent.path,
  name: EditTaskRouterContent.name,
)
class EditTaskRouter extends GoRouteData with $EditTaskRouter {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditTask();
  }
}
