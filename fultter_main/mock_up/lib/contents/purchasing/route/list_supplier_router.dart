import '../../../imports.dart';
import '../purchasing.dart';
part 'list_supplier_router.g.dart';

abstract class ListSupplierConstant {
  static const String name = 'supplier';
  static const String path = '/purchasing/supplier';
}

@TypedGoRoute<ListSupplierRouter>(
  path: ListSupplierConstant.path,
  name: ListSupplierConstant.name,
)
class ListSupplierRouter extends GoRouteData with $ListSupplierRouter {
  const ListSupplierRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListSupplier();
  }
}
