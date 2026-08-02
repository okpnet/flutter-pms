import '../../../imports.dart';
import '../purchasing.dart';
part 'list_purchase_order_router.g.dart';

abstract class ListPurchaseOrderConstant {
  static const String name = 'purchase_order';
  static const String path = '/purchasing/order';
}

@TypedGoRoute<ListPurchaseOrderRouter>(
  path: ListPurchaseOrderConstant.path,
  name: ListPurchaseOrderConstant.name,
)
class ListPurchaseOrderRouter extends GoRouteData
    with $ListPurchaseOrderRouter {
  const ListPurchaseOrderRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListPurchaseOrder();
  }
}
