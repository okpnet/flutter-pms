// Project imports:
import '../../../../imports.dart';
import '../departments.dart';

part 'edit_department_router.g.dart';

abstract class EditDepartmentConstant {
  static const String name = 'edit_department';
  static const String path = '/corporation/department/edit';
}

@TypedGoRoute<EditDepartmentRouter>(
  path: EditDepartmentConstant.path,
  name: EditDepartmentConstant.name,
)
class EditDepartmentRouter extends GoRouteData with $EditDepartmentRouter {
  const EditDepartmentRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditDepartment();
  }
}
