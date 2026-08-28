// Project imports:

import '../../../imports.dart';
import '../_actual.dart';

part 'register_purchase_recive_router.g.dart';

abstract class RegisterPurchaseReciveConstant {
  static const String name = 'actual_purchase_recive';
  static const String path = '/actual/purchase_recive';
}

@TypedGoRoute<RegisterPurchaseReciveRouter>(
  path: RegisterPurchaseReciveConstant.path,
  name: RegisterPurchaseReciveConstant.name,
)
class RegisterPurchaseReciveRouter extends GoRouteData
    with $RegisterPurchaseReciveRouter {
  const RegisterPurchaseReciveRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RegisterPurchaseRecive();
  }
}
