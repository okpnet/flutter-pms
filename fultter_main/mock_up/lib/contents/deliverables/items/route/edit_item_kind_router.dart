import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/deliverables/items/edit_item_kind.dart';

part 'edit_item_kind_router.g.dart';

abstract class EditItemKindRouterConstant {
  static const String name = 'item_kind_edit';
  static const String path = '/deliverables/item/kind/edit';
}

@TypedGoRoute<EditItemKindRouter>(
  path: EditItemKindRouterConstant.path,
  name: EditItemKindRouterConstant.name,
)
class EditItemKindRouter extends GoRouteData with $EditItemKindRouter {
  const EditItemKindRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditItemKind();
  }
}
