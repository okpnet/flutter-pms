// Project imports:
import '../../../../imports.dart';
import '../departments.dart';

part 'tree_department_router.g.dart';

abstract class TreeDepartmentConstant {
  static const String name = 'department';
  static const String path = '/corporation/department/tree';
}

@TypedGoRoute<TreeDepartmentRouter>(
  path: TreeDepartmentConstant.path,
  name: TreeDepartmentConstant.name,
)
class TreeDepartmentRouter extends GoRouteData with $TreeDepartmentRouter {
  const TreeDepartmentRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TreeDepartment();
  }
}
