import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/deliverables/items/list_item_kind.dart';

part 'list_item_kind_router.g.dart';

abstract class ListItemKindRouterConstant {
  static const String name = 'kind_of_item';
  static const String path = '/deliverables/item/kind/list';
}

@TypedGoRoute<ListItemKindRouter>(
  path: ListItemKindRouterConstant.path,
  name: ListItemKindRouterConstant.name,
)
class ListItemKindRouter extends GoRouteData with $ListItemKindRouter {
  const ListItemKindRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListItemKind();
  }
}
