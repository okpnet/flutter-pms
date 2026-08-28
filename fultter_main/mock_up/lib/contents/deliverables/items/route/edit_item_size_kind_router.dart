import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/deliverables/items/edit_item_size_kind.dart';

part 'edit_item_size_kind_router.g.dart';

abstract class EditItemSizeKindRouterConstant {
  static const String name = 'item_size_kind_edit';
  static const String path = '/deliverables/item/size/kind/edit';
}

@TypedGoRoute<EditItemSizeKindRouter>(
  path: EditItemSizeKindRouterConstant.path,
  name: EditItemSizeKindRouterConstant.name,
)
class EditItemSizeKindRouter extends GoRouteData with $EditItemSizeKindRouter {
  const EditItemSizeKindRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditItemSizeKind();
  }
}
