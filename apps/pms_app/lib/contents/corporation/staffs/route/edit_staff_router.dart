import 'package:pms_app/contents/contents.dart';
import 'package:pms_app/imports.dart';

part 'edit_staff_router.g.dart';

abstract class EditStaffConstant {
  static const String name = 'staff_edit';
  static const String path = '/corporation/staffs/edit';
}

@TypedGoRoute<EditStaffRouter>(
  path: EditComapnyConstant.path,
  name: EditStaffConstant.name,
)
class EditStaffRouter extends GoRouteData with $EditStaffRouter {
  EditStaffRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditStaff();
  }
}
