import '../../../imports.dart';
import '../items.dart';

part 'list_category_item_router.g.dart';

abstract class ListCategoryItemRouterConstant {
  static const String name = 'category_of_item';
  static const String path = '/items/category';
}

@TypedGoRoute<ListCategoryItemRouter>(
  path: ListCategoryItemRouterConstant.path,
  name: ListCategoryItemRouterConstant.name,
)
class ListCategoryItemRouter extends GoRouteData with $ListCategoryItemRouter {
  const ListCategoryItemRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListCategoryItem();
  }
}
