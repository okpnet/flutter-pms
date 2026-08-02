import '../../../imports.dart';
import '../shipping.dart';
part 'lits_shipping_router.g.dart';

abstract class LitsShippingConstant {
  static const String name = 'supplier';
  static const String path = '/purchasing/supplier';
}

@TypedGoRoute<LitsShippingRouter>(
  path: LitsShippingConstant.path,
  name: LitsShippingConstant.name,
)
class LitsShippingRouter extends GoRouteData with $LitsShippingRouter {
  const LitsShippingRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LitsShipping();
  }
}
