// Project imports:

import '../../../imports.dart';
import '../actual.dart';

part 'register_actual_production_router.g.dart';

abstract class RegisterActualProductionConstant {
  static const String name = 'actual_product';
  static const String path = '/actual/product';
}

@TypedGoRoute<RegisterActualProductionRouter>(
  path: RegisterActualProductionConstant.path,
  name: RegisterActualProductionConstant.name,
)
class RegisterActualProductionRouter extends GoRouteData
    with $RegisterActualProductionRouter {
  const RegisterActualProductionRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RegisterActualProduction();
  }
}
