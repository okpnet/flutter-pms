// Project imports:
import '../../../../imports.dart';
import '../staffs.dart';

part 'lsit_staff_router.g.dart';

abstract class ListStaffConstant {
  static const String name = 'staff';
  static const String path = '/corporation/staff';
}

@TypedGoRoute<LsitStaffRouter>(
  path: ListStaffConstant.path,
  name: ListStaffConstant.name,
)
class LsitStaffRouter extends GoRouteData with $LsitStaffRouter {
  const LsitStaffRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListStaff();
  }
}
