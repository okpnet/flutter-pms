import '../../../imports.dart';
import '../sales.dart';

part 'list_customer_router.g.dart';

abstract class ListCustomerConstant {
  static const String name = 'customer';
  static const String path = '/sales/customer';
}

@TypedGoRoute<ListCustomerRouter>(
  path: ListCustomerConstant.path,
  name: ListCustomerConstant.name,
)
class ListCustomerRouter extends GoRouteData with $ListCustomerRouter {
  const ListCustomerRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListCustomer();
  }
}
