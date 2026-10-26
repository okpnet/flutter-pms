import '../../../imports.dart';
import '../_controls.dart';

part 'dashboard_router.g.dart';

abstract class DashboardConstant {
  static const String name = 'dashboard';
  static const String path = '/dashboard';
}

@TypedGoRoute<DashboardRouter>(
  path: DashboardConstant.path,
  name: DashboardConstant.name,
)
class DashboardRouter extends GoRouteData with $DashboardRouter {
  const DashboardRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Dashboard();
  }
}
