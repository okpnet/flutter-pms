import 'package:pms_app/contents/corporation/positions/list_position.dart';
import 'package:pms_app/imports.dart';

part 'list_position_router.g.dart';

abstract class ListPositionConstant {
  static const String name = 'position_list';
  static const String path = '/corporation/position/list';
}

@TypedGoRoute<ListPositionRouter>(
  path: ListPositionConstant.path,
  name: ListPositionConstant.name,
)
class ListPositionRouter extends GoRouteData with $ListPositionRouter {
  ListPositionRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    // TODO: implement build
    return ListPosition();
  }
}
