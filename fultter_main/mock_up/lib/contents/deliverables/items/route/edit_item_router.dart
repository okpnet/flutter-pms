import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/deliverables/_deliverables.dart';

part 'edit_item_router.g.dart';

abstract class EditItemRouterConstant {
  static const String name = 'item_edit';
  static const String path = '/deliverables/item/edit';
}

@TypedGoRoute<EditItemRouter>(
  path: EditItemRouterConstant.path,
  name: EditItemRouterConstant.name,
)
class EditItemRouter extends GoRouteData with $EditItemRouter {
  const EditItemRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditItem();
  }
}
