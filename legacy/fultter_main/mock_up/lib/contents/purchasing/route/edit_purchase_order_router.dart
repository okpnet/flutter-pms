import 'package:mock_up/contents/purchasing/edit_purchase_order.dart';
import 'package:mock_up/imports.dart';

part 'edit_purchase_order_router.g.dart';

abstract class EditPurchaseOrderConstant {
  static const String name = 'purchase_order_edt';
  static const String path = '/purchasing/orders/edit';
}

@TypedGoRoute<EditPurchaseOrderRouter>(
  path: EditPurchaseOrderConstant.path,
  name: EditPurchaseOrderConstant.name,
)
class EditPurchaseOrderRouter extends GoRouteData
    with $EditPurchaseOrderRouter {
  EditPurchaseOrderRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditPurchaseOrder();
  }
}
