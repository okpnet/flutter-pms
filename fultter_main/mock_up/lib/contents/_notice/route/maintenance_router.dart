import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/_models/maintenance/maintenance_status.dart';
import 'package:mock_up/contents/_notice/maintenance.dart';

part 'maintenance_router.g.dart';

abstract class MaintenanceConstant {
  static const String name = 'maintenace';
  static const String path = '/notice/maintenance';
}

@TypedGoRoute<MaintenanceRouter>(
  path: MaintenanceConstant.path,
  name: MaintenanceConstant.name,
)
class MaintenanceRouter extends GoRouteData with $MaintenanceRouter {
  const MaintenanceRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    final status = MaintenanceStatusMapper.fromMap(state.uri.queryParameters);
    return Maintenance(status: status);
  }
}
