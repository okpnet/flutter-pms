import '../../../imports.dart';
import '../items.dart';

part 'list_item_router.g.dart';

abstract class ListItemRouterConstant {
  static const String name = 'list_of_item';
  static const String path = '/items/list';
}

@TypedGoRoute<ListItemRouter>(
  path: ListItemRouterConstant.path,
  name: ListItemRouterConstant.name,
)
class ListItemRouter extends GoRouteData with $ListItemRouter {
  const ListItemRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListItem();
  }
}
