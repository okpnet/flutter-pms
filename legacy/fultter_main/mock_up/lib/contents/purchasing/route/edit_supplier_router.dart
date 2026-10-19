import 'package:mock_up/contents/purchasing/edit_supplier.dart';
import 'package:mock_up/imports.dart';

part 'edit_supplier_router.g.dart';

abstract class EditSupplierConstant {
  static const String name = 'purchase_order';
  static const String path = '/purchasing/order';
}

@TypedGoRoute<EditSupplierRouter>(
  path: EditSupplierConstant.path,
  name: EditSupplierConstant.name,
)
class EditSupplierRouter extends GoRouteData with $EditSupplierRouter {
  EditSupplierRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditSupplier();
  }
}
