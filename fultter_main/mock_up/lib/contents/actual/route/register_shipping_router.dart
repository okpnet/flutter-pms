// Project imports:

import '../../../imports.dart';
import '../actual.dart';

part 'register_shipping_router.g.dart';

abstract class RegisterShippingConstant {
  static const String name = 'actual_shipping';
  static const String path = '/actual/shipping';
}

@TypedGoRoute<RegisterShippingRouter>(
  path: RegisterShippingConstant.path,
  name: RegisterShippingConstant.name,
)
class RegisterShippingRouter extends GoRouteData with $RegisterShippingRouter {
  const RegisterShippingRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RegisterShipping();
  }
}
