import 'package:mock_up/contents/contents.dart';
import 'package:mock_up/imports.dart';

part 'edit_customer_router.g.dart';

abstract class EditCustomerConstant {
  static const String name = 'customer';
  static const String path = '/sales/customers/edit';
}

@TypedGoRoute<EditCustomerRouter>(
  path: EditCustomerConstant.path,
  name: EditCustomerConstant.name,
)
class EditCustomerRouter extends GoRouteData with $EditCustomerRouter {
  EditCustomerRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditCustomer();
  }
}
