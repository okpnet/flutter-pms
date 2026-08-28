import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/deliverables/items/list_item_size_kind.dart';

part 'list_item_size_kind_router.g.dart';

abstract class ListItemSizeKindRouterConstant {
  static const String name = 'list_of_item_size_kind';
  static const String path = '/deliverables/item/size/kind/list';
}

@TypedGoRoute<ListItemSizeKindRouter>(
  path: ListItemSizeKindRouterConstant.path,
  name: ListItemSizeKindRouterConstant.name,
)
class ListItemSizeKindRouter extends GoRouteData with $ListItemSizeKindRouter {
  const ListItemSizeKindRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListItemSizeKind();
  }
}
