import 'package:mock_up/contents/sales/edit_order.dart';
import 'package:mock_up/imports.dart';

part 'edit_order_router.g.dart';

abstract class EditOrderConstant {
  static const String name = 'order_edit';
  static const String path = '/sales/orders/edit';
}

@TypedGoRoute<EditOrderRouter>(
  path: EditOrderConstant.path,
  name: EditOrderConstant.name,
)
class EditOrderRouter extends GoRouteData with $EditOrderRouter {
  EditOrderRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditOrder();
  }
}
