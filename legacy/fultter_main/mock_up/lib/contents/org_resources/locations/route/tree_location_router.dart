import 'package:mock_up/imports.dart';

import '../tree_location.dart';

part 'tree_location_router.g.dart';

abstract class TreeLocationConstant {
  static const String name = 'location';
  static const String path = '/orgresources/location';
}

@TypedGoRoute<TreeLocationRouter>(
  path: TreeLocationConstant.path,
  name: TreeLocationConstant.name,
)
class TreeLocationRouter extends GoRouteData with $TreeLocationRouter {
  const TreeLocationRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TreeLocation();
  }
}
