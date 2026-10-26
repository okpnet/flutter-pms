import '../../../../imports.dart';
import '../_items.dart';

part 'tree_item_router.g.dart';

abstract class TreeItemRouterConstant {
  static const String name = 'tree_of_item';
  static const String path = '/deliverables/item/tree';
}

@TypedGoRoute<TreeItemRouter>(
  path: TreeItemRouterConstant.path,
  name: TreeItemRouterConstant.name,
)
class TreeItemRouter extends GoRouteData with $TreeItemRouter {
  const TreeItemRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TreeItem();
  }
}
