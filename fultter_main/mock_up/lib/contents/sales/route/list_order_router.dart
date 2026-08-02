import '../../../imports.dart';
import '../sales.dart';

part 'list_order_router.g.dart';

abstract class ListOrderConstant {
  static const String name = 'customer';
  static const String path = '/sales/customer';
}

@TypedGoRoute<ListOrderRouter>(
  path: ListOrderConstant.path,
  name: ListOrderConstant.name,
)
class ListOrderRouter extends GoRouteData with $ListOrderRouter {
  const ListOrderRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListOrder();
  }
}
