import 'package:mock_up/contents/deliverables/tasks/tree_task.dart';
import 'package:mock_up/imports.dart';

part 'tree_task_router.g.dart';

abstract class TreeTaskRouterContent {
  static const String name = 'task_tree';
  static const String path = '/items/tasks/tree';
}

@TypedGoRoute<TreeTaskRouter>(
  path: TreeTaskRouterContent.path,
  name: TreeTaskRouterContent.name,
)
class TreeTaskRouter extends GoRouteData with $TreeTaskRouter {
  const TreeTaskRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TreeTask();
  }
}
